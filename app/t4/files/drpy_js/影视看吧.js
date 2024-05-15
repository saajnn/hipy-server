var rule = {
    title: '影视看吧',
    host: 'https://m.yskanba.com',
    url: 'hot/fyclass/fypage.html',
    searchUrl: '/search/wd=**/2',
    searchable: 2,
    quickSearch: 0,
    filterable: 1,
    filter: '',
    filter_url: '',
    filter_def: {},
    headers: {
        'User-Agent': 'MOBILE_UA',
    },
    timeout: 5000,
    // class_parse: '#nav_mmenu&&ul&&li;a&&Text;a&&href;.*/(.*?)\.html',
    class_name: '电影|热门&热搜&热映&即将上映&爱情&喜剧&惊悚&科幻&剧情&悬疑&魔幻&动作&日韩&欧美&港台&大陆&动画&经典&经典&高分&电视剧|热门&热搜&偶像&言情&古装&家庭伦理&美剧&韩剧&日剧&港台&泰剧&喜剧&科幻&悬疑&动作&剧情&内地&国产&港剧&韩剧&动漫|热搜&热门&搞笑&益智&冒险&情感&国产&日本&欧美&完结&连载&新番&剧场版&热血&科幻&运动&校园&机战&审美&神魔&综艺|热搜&热门&热门更新&访谈&情感&选秀&内地&港台&搞笑&国外&艺术&最新更新&最新发布',
    class_url: 'hotmovie&topsearchmovie&nowplayingmovie&laterplayingmovie&topsearchmovieaiqing&topsearchmoviexiju&topsearchmoviejinji&topsearchmoviekehuan&topsearchmoviejuqing&topsearchmoviexuanyi&topsearchmoviemohuan&topsearchmoviedongzuo&topsearchmovierihan&topsearchmovieoumei&topsearchmoviegangtai&topsearchmoviedalu&topsearchmoviedonghua&topsearchmoviejindian&hotmoviejingdian&hotmoviegaofen&hottv&topsearchtv&topsearchtvouxiang&topsearchtvyanqing&topsearchtvguzhuan&topsearchtvjiatinglunli&topsearchtvmeiju&topsearchtvhangju&topsearchtvriju&topsearchtvgangtai&topsearchtvtaiju&topsearchtvxiju&topsearchtvkehuan&topsearchtvxuanyi&topsearchtvdongzuo&topsearchtvjuqing&topsearchtvneidi&hottvguochan&hottvgangju&hottvhanju&topsearchcomic&hotcomic&topsearchcomicgaoxiao&topsearchcomicyizhi&topsearchcomicmaoxian&topsearchcomicqinggan&topsearchcomicguochan&topsearchcomicriben&topsearchcomicoumei&topsearchcomicwanjie&topsearchcomiclianzai&topsearchcomicxinfan&topsearchcomicjuchangban&topsearchcomicrexue&topsearchcomickehuan&topsearchcomicyundong&topsearchcomicxiaoyuan&topsearchcomicjizhan&topsearchcomicshenmei&topsearchcomicshengmo&topsearchshow&hotshow&hotupdateshow&topsearchshowfangtan&topsearchshowqinggan&topsearchshowxuanxiu&topsearchshowneidi&topsearchshowgangtai&topsearchshowgaoxiao&topsearchshowguowai&topsearchshowyisu&newupdateshow&newpublishshow',
    cate_exclude: '',
    play_parse: true,
    lazy: $js.toString(() => {
        input = {parse: 1, url: input, js: ''};
    }),
    double: true,
    推荐: '.main&&.globalPadding;.picTxtA&&li;*;img&&src;*;*',
    一级: '.picTxtA&&li;.sTit&&Text;img&&data-original;.emScore&&Text;a&&href',
    二级: {
        title: 'h1&&Text;.ulTxt&&li&&Text',
        img: '.posterPic&&img&&src',
        desc: ';.ulTxt&&li:eq(1)&&Text;.ulTxt&&li:eq(2)&&Text;.zpmy&&Text',
        content: '',
        tabs: '.tabt3&&span',
        //lists:'dd.ulNumList:eq(#id)&&li',
        lists: $js.toString(() => {
            LISTS = [];
            //let tabs = pdfa(html,rule.二级.tabs);
            let tabs = pdfa(html, 'dd.ulNumList');
            // log(tabs.length);
            //log(tabs[0]);
            for (let tab of tabs) {
                let lists = pdfa(tab, 'ul&&li');
                // log(lists.length);
                let list1 = [];
                for (let ls of lists) {
                    let tt = pdfh(ls, 'a&&Text');
                    let href = pd(ls, 'a&&href', MY_URL);
                    if (!tt.includes('展开')) {
                        list1.push(tt + '$' + href);
                    } else {
                        let script = pdfh(ls, 'script&&Html');
                        //log(script);
                        let a = script.match(/window.*=(.*?);/)[1];
                        //log(a);
                        let b = eval(a);
                        //log(b.length);
                        let c = b.map(it => it.t + '$' + urljoin(MY_URL, it.l));
                        // log(c);
                        list1 = list1.concat(c);
                    }

                }
                LISTS.push(list1);
            }

        }),
        tab_text: 'body&&Text',
        list_text: 'body&&Text',
        list_url: 'a&&href'
    },
    搜索: $js.toString(() => {

        function encodeWd(t) {
            var n, r;
            return t.length < 7 && (t = t + "       ".substr(0, 7 - t.length)),
            t.length > 15 && (t = t.substr(0, 15)),
                n = base64Encode(t),
                n = n.replace(/\//g, "_").replace(/\+/g, "-").replace(/=/g, ""),
                n = n.slice(0, 6) + "j" + n.slice(6),
                r = n;
        }

        // log(input);
        let wd = input.split('wd=')[1].split('/')[0];
        let wd1 = encodeWd(wd);
        // log(wd1);
        input = urljoin(HOST, '/search/' + wd1 + '/' + MY_PAGE);
        // log(input);
        let html = request(input);
        let d = [];
        let p = rule.一级.split(';');
        pdfa(html, p[0]).forEach(it => {
            d.push({
                title: pdfh(it, p[1]),
                img: pdfh(it, p[2]),
                desc: pdfh(it, p[3]),
                url: pd(it, p[4], input),
            });

        });
        setResult(d);
    }),
}