var rule = {
  title:'可达影视',
  host:'https://kedays.org',
  // url:'/shaixuan/fyclass--------fypage---.html',
  url:'/shaixuan/fyclass-fyfilter.html',
  searchUrl:'/so/**----------fypage---.html',
  searchable:2,
  quickSearch:0,
  filterable:1,
  filter:'H4sIAAAAAAAAA+2WyVITURSG3+WuWdxGEWQHOCCzDDJYLFKSgiiEKgZLpKiCAiwDIoJIBCKgRRiUSFAcCIa8TLqTvIUNfe45J7vsc3b5v9N9u//u2/BNqr6ALzgRCParyseT6pl/QlWq3JeV3Mx7VaKCviE/z899g+P+6wODLs6s/bKTp1fYDbjMVIk3zaa2MxcxO3QABwy6B7wYfzqOB2Qu/mVDCZi+HA72TwRwZi8cOv++maXd2ZAvSMP4ij2XguHogG/YP0KL7rBL9o37glcX7L2aetXsSNx+k6BqmPOr2fOHudlDWIYuvHeQ23gFFIKZ5fY3nL8nMIOA5y3HnfNLc54X8IYv39pbSZhBwDV3jmgGwcyccNSJHMMMAs5+xuk8CDhbj9sLu/anz2aMGa96dOx8imajqXRi01ybI2y1FLcT+6aVF/DlL57SHUCgu/vA7+4Dn7m34iym3EdrlsWMK0dTmeVYJrRhFsdsjkin5jLJsLNuXgZlvMr8b/v7rLmEF/I2SejAmZ1nm8TkQjZJ5vUpHEyBbet0MoLdrgPO1iO0cyHgI3v9MZ0ImUfmBbzewYp9fmGu5wVcE2+cAq4Z209f7po1vYDnvVrNbRyZ87yA521/de/AnOcFnM28c6bXzcwLuObl97w/GJQLfS3Zk1j2cJpeC+aCvt2tpHu8WdwLbLfSDAI+3h97NIOAX0o4aS+FaUyZfcFs7AX2BdMMAvtG2MwL9CD/sCZeKHhnn5+lL5JsZ5tcyCMs1aU3gV3/ZPwG8RuclxIv5dwibnGuiWvGrdvI3Z+MVxCv4LyceDnnt4jf4ryMeBnn1NfifS3qa/G+FvW1eF+L+lq8r0V9Ld5XU1/N+2rqq3lfTX0176upr+Z9NfXVvK+mvpr31dRX876a+mreV1Nfzftq6uv+zNuYsbBzssQ2psmFbMwqAFVIqoFUI6kBUoPkDpA7SO4CuYvkHpB7SO4DuY+kFkgtkgdAHiCpA1KHpB5IPZIGIA1IGoE0ImkC0oSkGUgzkhYgLUgeAnmIpBVIK5I2IG1I2oG0I+kA0oHkEZBHSDqBdCLpAtKFpBtIN5IeID15m8J5u2onlmlTYM7fFE5kOptacbbOXJeBdcYC7gn4xzQybe9tOqsxZ81I2EBgbDRvHnX/IcwZpXwyPOK/upHeErJWsWOxY7FjsWMldix2LHYsdix2LHasityOwUvFjcWNxY3FjZW4sbixuLG4sbixuLEqcjc27ilyLHIscixyrESORY5FjkWORY5FjlWRyzHopbixuLG4sbixEjcWNxY3FjcWNxY3VkXuxqCQ4sbixuLG4sZK3FjcWNxY3FjcWNxYFbUbT/0HlZJiD65CAAA=',
  filter_url:'{{fl.地区}}-{{fl.排序 or "time"}}-{{fl.剧情}}-{{fl.语言}}-{{fl.字母}}---fypage---{{fl.年份}}',
  headers:{
      'User-Agent':'MOBILE_UA',
  },
  timeout:5000,
  class_parse:'.nav-m-box&&li;a&&Text;a&&href;/.*\/(.*?)\.html',
  cate_exclude:'最近|排行',
  play_parse:true,
  lazy:$js.toString(()=>{
    input = {parse:1,url:input,js:''};
  }),
  double:true,
  推荐:'.layout-box;.vlist&&li;*;*;*;*',
  一级:'.vod-list&&ul&&li;a&&title;.lazyload&&data-original;.item-status&&Text;a&&href',
  二级:{
    title:'h3&&Text;p.row&&span&&a&&Text',
    img:'img.lazyload&&data-original',
    desc:'p.row&&span:eq(-1)&&Text;p.row&&span:eq(2)&&Text;p.row&&span:eq(1)&&Text;p.row&&span:eq(4)&&Text;p.row&&span:eq(3)&&Text;',
    content:'.more-box&&Text',
    tabs:'.playlist-tab&&ul&&li',
    lists:'.ewave-playlist-content:eq(#id)&&li',
    tab_text:'body&&Text',
    list_text:'body&&Text',
    list_url:'a&&href'
  },
  搜索:'*',
}