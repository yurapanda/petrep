# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.form_datetime').datetimepicker({
    autoclose: true,
    todayBtn: true,
    pickerPosition: "bottom-left",
    format: 'mm-dd-yyyy hh:ii'
  });