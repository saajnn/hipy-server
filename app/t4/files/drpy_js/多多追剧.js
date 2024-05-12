var rule = {
    title: '多多追剧',
    模板: '首图',
    host: 'https://www.ddkk.tv',
    url: '/channel/fyclass-fypage.html',
    searchUrl: '/search/-------------.html?wd=**',
    searchable: 0,
    headers: {
        'User-Agent': 'PC_UA',
    },
    class_parse: '.myui-header__menu li;a&&Text;a&&href;/(\\d+).html',
}