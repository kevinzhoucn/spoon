$(document).ready(function(){

    var url = document.URL;//取得当前页的URL
    if(/news/.test(url.toLowerCase()))
    {
      $("#news").addClass("active");
    }
    else if(/products/.test(url.toLowerCase()))
    {
      $("#products").addClass("active");
    }
    else if(/positions/.test(url.toLowerCase()))
    {
      $("#positions").addClass("active");
    }
    else if(/news/.test(url.toLowerCase()))
    {
      $("#news").addClass("active");
    }
    else
    {
      $("#home").addClass("active");
    }
});