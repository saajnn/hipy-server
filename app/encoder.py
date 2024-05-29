#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# File  : encoder.py
# Author: DaShenHan&道长-----先苦后甜，任凭晚风拂柳颜------
# Date  : 2024/5/29

import gzip
import base64
from Crypto.Cipher import AES, PKCS1_v1_5 as PKCS1_cipher
# from Crypto.Util.Padding import unpad
from Crypto.PublicKey import RSA
import os
from pathlib import Path
import shutil

# https://www.bchrt.com/tools/rsa/
rsa_public_key = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqop/41KajOvn4GD/6DKo/c3HRzDNJhGVy3k8osSCVj+d5cyVdjdhNzj+gQaVJqtjtWvWi50yGwAwWk7pUzYjp1RqDRufLpgZ7qZ25phfIgEWw6dpk83TDHhIC3a310umN1b2symACz/BIREMpEFWq3sUe/L0au5bWN6rl8e3ICNETn2c+UsN1Di0CflaFpsCMbvQDBGS1cxQ0Dfd4c7s7N7TchyusbKQRge8xm8AoPkyotCXqjw618WFKQM9XEPzDvg2tFoL5F57668vDUETh3o3S1TgLJYK+r2LYR/Wym7BsjWNx/j9dpHMaPUQHFb3jjZ2W3DMsY7ReXVm5Wnq5wIDAQAB'
rsa_private_key = 'MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCqin/jUpqM6+fgYP/oMqj9zcdHMM0mEZXLeTyixIJWP53lzJV2N2E3OP6BBpUmq2O1a9aLnTIbADBaTulTNiOnVGoNG58umBnupnbmmF8iARbDp2mTzdMMeEgLdrfXS6Y3VvazKYALP8EhEQykQVarexR78vRq7ltY3quXx7cgI0ROfZz5Sw3UOLQJ+VoWmwIxu9AMEZLVzFDQN93hzuzs3tNyHK6xspBGB7zGbwCg+TKi0JeqPDrXxYUpAz1cQ/MO+Da0WgvkXnvrry8NQROHejdLVOAslgr6vYthH9bKbsGyNY3H+P12kcxo9RAcVveONnZbcMyxjtF5dWblaernAgMBAAECggEAGdEHlSEPFmAr5PKqKrtoi6tYDHXdyHKHC5tZy4YV+Pp+a6gxxAiUJejx1hRqBcWSPYeKne35BM9dgn5JofgjI5SKzVsuGL6bxl3ayAOu+xXRHWM9f0t8NHoM5fdd0zC3g88dX3fb01geY2QSVtcxSJpEOpNH3twgZe6naT2pgiq1S4okpkpldJPo5GYWGKMCHSLnKGyhwS76gF8bTPLoay9Jxk70uv6BDUMlA4ICENjmsYtd3oirWwLwYMEJbSFMlyJvB7hjOjR/4RpT4FPnlSsIpuRtkCYXD4jdhxGlvpXREw97UF2wwnEUnfgiZJ2FT/MWmvGGoaV/CfboLsLZuQKBgQDTNZdJrs8dbijynHZuuRwvXvwC03GDpEJO6c1tbZ1s9wjRyOZjBbQFRjDgFeWs9/T1aNBLUrgsQL9c9nzgUziXjr1Nmu52I0Mwxi13Km/q3mT+aQfdgNdu6ojsI5apQQHnN/9yMhF6sNHg63YOpH+b+1bGRCtr1XubuLlumKKscwKBgQDOtQ2lQjMtwsqJmyiyRLiUOChtvQ5XI7B2mhKCGi8kZ+WEAbNQcmThPesVzW+puER6D4Ar4hgsh9gCeuTaOzbRfZ+RLn3Aksu2WJEzfs6UrGvm6DU1INn0z/tPYRAwPX7sxoZZGxqML/z+/yQdf2DREoPdClcDa2Lmf1KpHdB+vQKBgBXFCVHz7a8n4pqXG/HvrIMJdEpKRwH9lUQS/zSPPtGzaLpOzchZFyQQBwuh1imM6Te+VPHeldMh3VeUpGxux39/m+160adlnRBS7O7CdgSsZZZ/dusS06HAFNraFDZf1/VgJTk9BeYygX+AZYu+0tReBKSs9BjKSVJUqPBIVUQXAoGBAJcZ7J6oVMcXxHxwqoAeEhtvLcaCU9BJK36XQ/5M67ceJ72mjJC6/plUbNukMAMNyyi62gO6I9exearecRpB/OGIhjNXm99Ar59dAM9228X8gGfryLFMkWcO/fNZzb6lxXmJ6b2LPY3KqpMwqRLTAU/zy+ax30eFoWdDHYa4X6e1AoGAfa8asVGOJ8GL9dlWufEeFkDEDKO9ww5GdnpN+wqLwePWqeJhWCHad7bge6SnlylJp5aZXl1+YaBTtOskC4Whq9TP2J+dNIgxsaF5EFZQJr8Xv+lY9lu0CruYOh9nTNF9x3nubxJgaSid/7yRPfAGnsJRiknB5bsrCvgsFQFjJVs='

# js 如何使用:
"""
let ret = RSA.decode(data,key,{});
"""


def base64Encode(text: str):
    """
    base64编码文本
    @param text:
    @return:
    """
    return base64.b64encode(text.encode("utf8")).decode("utf-8")  # base64编码


def base64Decode(text: str):
    """
    base64文本解码
    @param text:
    @return:
    """
    return base64.b64decode(text).decode("utf-8")  # base64解码


def compress_and_encode(data: str):
    # 压缩数据
    compressed_data = gzip.compress(data.encode('utf-8'))
    # 对压缩数据进行Base64编码
    encoded_data = base64.b64encode(compressed_data).decode('utf-8')
    return encoded_data


def decode_and_decompress(encoded_data: str):
    # 解码Base64数据
    decoded_data = base64.b64decode(encoded_data.encode('utf-8'))
    # 解压缩数据
    decompressed_data = gzip.decompress(decoded_data).decode('utf-8')
    return decompressed_data


def rsa_public_encode(text, public_key, default_length=117):
    """
    rsa公钥加密
    @param text: 明文
    @param public_key: 公钥
    @param default_length: 分段加密长度默认 256
    @return: 密文
    """
    public_key = "-----BEGIN RSA PRIVATE KEY-----\n" + public_key + "\n-----END RSA PRIVATE KEY-----"
    pub_key = RSA.importKey(public_key)
    cipher = PKCS1_cipher.new(pub_key)
    text = text.encode("utf-8)")
    length = len(text)
    if length < default_length:
        rsa_text = base64.b64encode(cipher.encrypt(text))  # 加密并转为b64编码
    else:
        # 需要分段
        offset = 0
        res = []
        while length - offset > 0:
            if length - offset > default_length:
                res.append(cipher.encrypt(text[offset:offset + default_length]))
            else:
                res.append(cipher.encrypt(text[offset:]))
            offset += default_length
        byte_data = b''.join(res)

        rsa_text = base64.b64encode(byte_data)

    ciphertext = rsa_text.decode("utf8")
    return ciphertext


def rsa_private_decode(ciphertext, private_key, default_length=117):
    """
    rsa私钥解密
    @param ciphertext: 加密的字符串
    @param private_key: 私钥
    @param default_length: 分段加密长度,默认256位
    @return: 解密后的文本明文
    """
    # 计算需要添加的等号数
    b64_ciphertext = ciphertext
    num_padding = 4 - (len(b64_ciphertext) % 4)
    if num_padding < 4:
        b64_ciphertext += "=" * num_padding
    # 将密文转换成byte数组
    ciphertext = base64.b64decode(b64_ciphertext)
    # 构建RSA解密器
    private_key = f'-----BEGIN RSA PRIVATE KEY-----\n{private_key}\n-----END RSA PRIVATE KEY-----'
    pri_Key = RSA.importKey(private_key)
    decrypter = PKCS1_cipher.new(pri_Key)
    # 解密
    length = len(ciphertext)
    # 长度不用分段
    if length < default_length:
        plaintext = b''.join(decrypter.decrypt(ciphertext, b' '))
    else:
        # 需要分段
        offset = 0
        res = []
        while length - offset > 0:
            if length - offset > default_length:
                res.append(decrypter.decrypt(ciphertext[offset:offset + default_length], b' '))
            else:
                res.append(decrypter.decrypt(ciphertext[offset:], b' '))
            offset += default_length

        plaintext = b''.join(res)
    return plaintext.decode('utf-8')


def main():
    encode_dict = {
        '0': 'gzip',
        '1': 'base64',
        '2': 'rsa',
    }
    encode_mode = str(input(f'请选择要加密的模式[q退出]:\n{encode_dict}\n')).strip()
    if encode_mode == 'q':
        exit()
    encode_type = encode_dict.get(encode_mode) or 'gzip'
    if encode_type == 'base64':
        encode_func = base64Encode
    elif encode_type == 'rsa':
        encode_func = lambda text: rsa_public_encode(text, rsa_public_key)
    else:
        encode_func = compress_and_encode

    base_dir = './t4/files/drpy_js'
    files = [Path(os.path.join(base_dir, file)).as_posix() for file in os.listdir(base_dir)]
    print('=================获取待加密文件=========================')
    print(f'数量: {len(files)}')
    print(files)
    print('=================加密前准备目录=========================')
    out_dir = './dist/drpy_js'
    if os.path.exists(out_dir):
        print(f'=================删除已存在的目录: {out_dir}=========================')
        shutil.rmtree(out_dir)
    print(f'=================创建目录: {out_dir}=========================')
    os.makedirs(out_dir, exist_ok=True)
    print(f'=================开始执行{encode_type}加密=========================')
    for file in files:
        file_out_path = os.path.join(out_dir, os.path.basename(file))
        file_out_path = Path(file_out_path).as_posix()
        print('输出加密后的文件:', file_out_path)
        with open(file, encoding='utf-8') as f:
            file_content = f.read()
        # 只对未加密过的进行加密
        if 'var rule' in file_content:
            with open(file_out_path, mode='w+', encoding='utf-8') as f:
                f.write(encode_func(file_content))


if __name__ == '__main__':
    # 使用例子
    # original_data = "这是需要被加密的文本"
    # encoded_data = compress_and_encode(original_data)
    # print("加密后的数据:", encoded_data)
    #
    # decoded_data = decode_and_decompress(encoded_data)
    # print("解密后的数据:", decoded_data)
    #
    # encoded_data = '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'
    # decoded_data = decode_and_decompress(encoded_data)
    # print("解密后的筛选:", decoded_data)

    main()
