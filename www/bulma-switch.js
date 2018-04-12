$(document).ready(function () {
  
  var shinyBulmaSwitchInput = new Shiny.InputBinding();
  $.extend(shinyBulmaSwitchInput, {
    find: function (scope) {
      return $(scope).find(".shinyBulmaSwitch");
    },
    getId: function(el) {
      return el.id;
    },
    getValue: function (el) {
      var val = $('input[name=' + $(el).attr('id') + ']:checked').val();
      console.log(val);
      return val;
    },
    setValue: function(el, value) {
      el.checked = value;
    },
    subscribe: function (el, callback) {
      $(el).on("change.shinyBulmaSwitchInput", function (e) {
        callback();
      });
    },
    unsubscribe: function (el) {
      $(el).off(".shinyBulmaSwitch");
    },
    getState: function(el) {
      return {
        //label: $(el).parent().find('span').text(),
        value: el.checked
      };
    }
    
  });
  
  Shiny.inputBindings.register(shinyBulmaSwitchInput);
});