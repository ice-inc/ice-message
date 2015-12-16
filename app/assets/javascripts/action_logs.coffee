# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $.getJSON 'action_logs.json', {
    name: 'John'
    time: '2pm'
  }, (json) ->
    events = []
    for i,v of json
      events[i] = v
    $('#action-log-cal').fullCalendar({
      titleFormat:
        month: 'YYYY年M月'
        week: '[yyyy年 ]M月 d日{ —[yyyy年 ][ M月] d日}'
        day: 'yyyy年 M月 d日 dddd'
      monthNames: ['１月', '２月', '３月', '４月', '５月', '６月', '７月', '８月', '９月', '１０月', '１１月', '１２月']
      dayNamesShort: ['日','月','火','水','木','金','土']
      buttonText:
        today: '今日'
      events: events
    })