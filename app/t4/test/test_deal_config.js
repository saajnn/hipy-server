// 需要java注入joinUrl
const joinUrl = (from, to) => {
    const resolvedUrl = new URL(to, new URL(from, 'resolve://'));
    if (resolvedUrl.protocol === 'resolve:') {
        const {pathname, search, hash} = resolvedUrl;
        return pathname + search + hash;
    }
    return resolvedUrl.href;
};

// 这个就是js逻辑，处理url和data为正确的data
function dealConfig(url, data) {
    let obj = JSON.parse(data);
    let keys = ['api', 'ext', 'jar'];
    for (let key of keys) {
        if (obj.hasOwnProperty(key)) {
            let value = obj[key];
            if (typeof (value) == 'string' && value && (value.startsWith('./') || value.startsWith('../'))) {
                obj[key] = decodeURIComponent(joinUrl(url, value));
            }
        }
    }
    return JSON.stringify(obj);
}

// 下面是测试
function test1() {
    let url = 'http://py.nokia.press:8888/config/1';
    let data = '{"key":"hipy_js_我的哔哩传参","name":"我的哔哩传参(drpy_t3)","type":3,"api":"http://py.nokia.press:8888/files/drpy_libs/drpy2.min.js","searchable":1,"quickSearch":0,"filterable":1,"order_num":146,"ext":"http://py.nokia.press:8888/files/drpy_js/我的哔哩传参.js?type=url&params=../json/小学教育.json"}';
    console.log(dealConfig(url, data));
}

function test2() {
    let url = 'http://py.nokia.press:8888/files/';
    let data = '{"key":"hipy_js_我的哔哩传参","name":"我的哔哩传参(drpy_t3)","type":3,"api":"./drpy_libs/drpy2.min.js","searchable":1,"quickSearch":0,"filterable":1,"order_num":146,"ext":"./drpy_js/我的哔哩传参.js?type=url&params=../json/小学教育.json"}';
    console.log(dealConfig(url, data));
}

test1();
test2();
