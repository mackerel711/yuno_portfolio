$(document).ready(function(){
    var $slider = $("#slider");

    $slider.find('img').each(function(){
        var currentIndex = 0;
        console.log($(this));
        setInterval(showImage($(this)),500);
        setInterval(hideImage($(this)),500);

    })
    function showImage(image){
        image.css('display','inline');
    }
    function hideImage(image){
        image.css('display','none');
    }
})