# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#add_style").click =>
    $.post(
      "/add_style.json"
      name: $("#new_style").val()
      (v)->
        $("#new_style").val("")
        $("#styles").append("<li><input type='checkbox' value=\"" + v.id + "\" name='art[style_ids][]'/> " + v.name + "</li>")
        $("#styles input:last").prop('checked', true)
        null
    )
  $("#add_medium").click =>
    $.post(
      "/add_medium.json"
      name: $("#new_medium").val()
      (v)->
        $("#new_medium").val("")
        $("#mediums").append("<li><input type='checkbox' value=\"" + v.id + "\" name='art[medium_ids][]'/> " + v.name + "</li>")
        $("#mediums input:last").prop('checked', true)
        null
    )