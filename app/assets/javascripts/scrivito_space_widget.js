(function($, App) {
  'use strict';

  var ScrivitoHandleDrag = {
    init_function: function(drag_handle) {
      var widget = $(drag_handle).siblings('hr');
      var cms_field = $(drag_handle).prev();
      var clicked = false;
      var pos;
      var cms_field;
      var max_height = 1000;
      var value = widget.height();
      var size_field = $(drag_handle).next();

      $(drag_handle).on('mousedown', function(event) {
        clicked = true;
        pos = event.pageY;
      });

      $('body').on('mousemove', function(event) {
        if(clicked) {
          value += event.pageY - pos;
          value = Math.max(0,Math.min(value, max_height))
          $(size_field).html(value+"px");
          widget.css('height', value+"px");
          pos = event.pageY;
        }
      });

      $('body').on('mouseup', function() {
        if(clicked) {
          cms_field.scrivito('save', value+'px');
          clicked = false;
        }
      });
    }
  }



  scrivito.on('content', function() {
    if(scrivito.in_editable_view()) {
      $.each($('.scrivito-space-widget-handle'), function(i,e) { ScrivitoHandleDrag.init_function(e) });
    }
  });

})(jQuery, this);
