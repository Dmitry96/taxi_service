// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$(document).ready(function(){
<<<<<<< HEAD
    $("#order_adress_from").keyup(function(){
        //по мере ввода фразы, событие будет срабатывать всякий раз
        var search_query = $(this).val();
        //массив, в который будем записывать результаты поиска
        search_result = [];
        //делаем запрос к геокодеру
        $.getJSON('http://geocode-maps.yandex.ru/1.x/?format=json&geocode='+search_query, function(data) {
            //геокодер возвращает объект, который содержит в себе результаты поиска
            //для каждого результата возвращаются географические координаты и некоторая дополнительная информация
            //ответ геокодера легко посмотреть с помощью console.log();
            for(var i = 0; i < data.response.GeoObjectCollection.featureMember.length; i++) {
                //записываем в массив результаты, которые возвращает нам геокодер
                search_result.push({
                    label: data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                    value:data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                    longlat:data.response.GeoObjectCollection.featureMember[i].GeoObject.Point.pos});
            }
            //подключаем к текстовому полю виджет autocomplete
            $("#order_adress_from").autocomplete({
                //в качестве источника результатов указываем массив search_result
                source: search_result,
                select: function(event, ui){
                    //это событие срабатывает при выборе нужного результата
 					$(document).ready(function(){
$("#order_adress_from").keyup(function(){
});
 
$.ui.autocomplete.filter = function (array, term) {
	return $.grep(array, function (value) {
        return value.label || value.value || value;
        });
    };
});
                }
            });
        });
    });
});


=======
   $("#order_adress_from").keyup(function(){
       //по мере ввода фразы, событие будет срабатывать всякий раз
       var search_query = $(this).val();
       //массив, в который будем записывать результаты поиска
       search_result = [];
       //делаем запрос к геокодеру
       $.getJSON('http://geocode-maps.yandex.ru/1.x/?format=json&geocode=Кишинёв, Молдова - '+search_query, function(data) {
           //геокодер возвращает объект, который содержит в себе результаты поиска
           //для каждого результата возвращаются географические координаты и некоторая дополнительная информация
           //ответ геокодера легко посмотреть с помощью console.log();
           for(var i = 0; i < data.response.GeoObjectCollection.featureMember.length; i++) {
               //записываем в массив результаты, которые возвращает нам геокодер
               search_result.push({
                   label: data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                   value:data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                   longlat:data.response.GeoObjectCollection.featureMember[i].GeoObject.Point.pos});
           }
           //подключаем к текстовому полю виджет autocomplete
           $("#order_adress_from").autocomplete({
               //в качестве источника результатов указываем массив search_result
               source: search_result,
               select: function(event, ui){
                   //это событие срабатывает при выборе нужного результата
                    $(document).ready(function(){
          $("#order_adress_from").keyup(function(){
});

$.ui.autocomplete.filter = function (array, term) {
    return $.grep(array, function (value) {
       return value.label || value.value || value;
       });
   };
});
               }
           });
       });
   });
});



//==============================================================================================================================================================================================
$(document).ready(function(){
   $("#order_adress_to").keyup(function(){
       //по мере ввода фразы, событие будет срабатывать всякий раз
       var search_query = $(this).val();
       //массив, в который будем записывать результаты поиска
       search_result = [];
       //делаем запрос к геокодеру
       $.getJSON('http://geocode-maps.yandex.ru/1.x/?format=json&geocode=Кишинёв, Молдова - '+search_query, function(data) {
           //геокодер возвращает объект, который содержит в себе результаты поиска
           //для каждого результата возвращаются географические координаты и некоторая дополнительная информация
           //ответ геокодера легко посмотреть с помощью console.log();
           for(var i = 0; i < data.response.GeoObjectCollection.featureMember.length; i++) {
               //записываем в массив результаты, которые возвращает нам геокодер
               search_result.push({
                   label: data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                   value:data.response.GeoObjectCollection.featureMember[i].GeoObject.description+' - '+data.response.GeoObjectCollection.featureMember[i].GeoObject.name,
                   longlat:data.response.GeoObjectCollection.featureMember[i].GeoObject.Point.pos});
           }
           //подключаем к текстовому полю виджет autocomplete
           $("#order_adress_to").autocomplete({
               //в качестве источника результатов указываем массив search_result
               source: search_result,
               select: function(event, ui){
                   //это событие срабатывает при выборе нужного результата
                    $(document).ready(function(){
          $("#order_adress_to").keyup(function(){
});

$.ui.autocomplete.filter = function (array, term) {
    return $.grep(array, function (value) {
       return value.label || value.value || value;
       });
   };
});
               }
           });
       });
   });
});

>>>>>>> 315cec726693f23b7705e4844cef3aa4f84f4a64
