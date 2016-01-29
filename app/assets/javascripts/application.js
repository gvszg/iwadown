//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.datetimepicker.min
//= require turbolinks
//= require_tree .

// $.datetimepicker.setLocale('en');
$(function(){
  $(".datetimepicker").datetimepicker();
  // $(".datetimepicker").datetimepicker({
  //   lang:'tw',
  //   i18n:{
  //    tw:{
  //     months:[
  //      '一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月',
  //     ],
  //     dayOfWeek:[
  //      "日", "一", "二", "三","四", "五", "六",
  //     ]
  //    }
  //   },
  // });
});






Date.parseDate = function( input, format ){
  // you code for convert string to date object
  // simplest variant - use native Date.parse, not given format parametr
return Date.parse(input);
};
Date.prototype.dateFormat = function( format ){
  //you code for convert date object to format string
  //for example
  switch( format ){
    case 'd': return this.getDate();
    case 'H:i:s': return this.getHours()+':'+this.getMinutes()+':'+this.getSeconds();
    case 'h:i a': return ((this.getHours() %12) ? this.getHours() % 12 : 12)+':'+this.getMinutes()+(this.getHours() < 12 ? 'am' : 'pm');
  }
  // or default format
  return this.getDate()+'.'+(this.getMonth()+ 1)+'.'+this.getFullYear();
};