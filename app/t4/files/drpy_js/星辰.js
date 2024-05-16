Object.assign(muban.首图2.二级, {
    desc: '.data:eq(0)&&Text;;;.data--span:eq(2)&&Text;.data--span:eq(1)&&Text',
    tabs: '.stui-pannel__head h3',
});
var rule = {
    title: '星辰',
    模板: '首图2',
    host: 'http://www.xingchenwu.com',
    // url:'/fyclass/indexfypage.html[/fyclass/index.html]',
    url: '/fyfilter/indexfypage.html[/fyfilter/index.html]',
    filterable: 1,//是否启用分类筛选,
    filter_url: '{{fl.cateId}}',
    tab_exclude: '本周热门|最近更新',
    filter: 'H4sIAAAAAAAAA6tWSslMzKvMzEtXsoquVspOrVSyUkpOLEn1TFHSUcpLzE0F8p92tD3fuBvIL0vMKU0FK8wDCbeueNm8AiQM5MCNqdWBynateLJ3zvPOdpiC/Lz0qtL8AqA6uJrnHRufNbci1CRmFgKNQFWyfOLTnbsRSrJTM0oT81CUPGuc8KxhGpISoE1JpShKnk6b87RzOUJJRWYWmoLO5SguySpFuCS2NlYH7L/iDKA2KoQTxBy41bP3Ptm1HOgAqIr00vzkjMQ8JBXPdqx/2r8BoaIkMS+9JBHZjGdrlj/f14dQkV+am4oiP33py/krEfJFmVAbgH6rBQBoO0UaBAIAAA==',
    filter_def: {
        dianying: {cateId: 'dianying'},
        dianshiju: {cateId: 'dianshiju'},
        zongyi: {cateId: 'zongyi'},
        dongman: {cateId: 'dongman'}
    },
    // searchUrl:'/search.php?page=fypage&searchword=**&searchtype=',
    searchUrl: '/search.php#searchword=**;post',
    class_parse: '.stui-header__menu li:gt(0):lt(7);a&&Text;a&&href;.*/(.*?)/.*html',
}