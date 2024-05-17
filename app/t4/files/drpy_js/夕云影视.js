var rule = {
    title: '夕云影视',
    host: 'https://www.xyxy.live/',
    url: '/index.php/vod/show/id/fyclass/page/fypage.html',
    searchUrl: '/index.php/vod/search/page/fypage/wd/**.html',
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
    class_parse: 'ul.mo-navs-boxs&&li;a&&Text;a&&href;.*/(.*)\.html',
    cate_exclude: '',
    play_parse: true,
    lazy: $js.toString(() => {
        input = {parse: 1, url: input, js: ''};
    }),
    double: true,
    推荐: '.mo-main-info&&ul;li;span&&Text;a&&data-background;span:eq(1)&&Text;*',
    一级: '.mo-main-info&&ul:eq(1)&&li;a:eq(1)&&Text;a&&data-original;.mo-situ-rema&&Text;a&&href',
    二级: {
        title: 'h1&&Text',
        img: 'img&&src',
        //desc:'主要信息;年代;地区;演员;导演',
        content: '.mo-word-info&&Text',
        tabs: '.mo-sort-head&&h2&&a',
        lists: 'ul.mo-movs-item:eq(#id)&&li',
        tab_text: 'body&&Text',
        list_text: 'body&&Text',
        list_url: 'a&&href'
    },
    搜索: 'dl.mo-deta-info;h1&&Text;a&&data-original;.mo-situ-rema&&Text;a&&href;',
}