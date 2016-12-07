(function($, App) {
  'use strict';

  var ScrivitoHandleDrag = {
    init_function: function(drag_handle) {
      var widget = $(drag_handle).siblings('hr');
      var cms_field = $(drag_handle).prev();
      var clicked = false;
      var pos;
      var cms_field;
      var max_height = parseInt($(drag_handle).data('scrivito-space-widget-max-size'));
      var min_height = parseInt($(drag_handle).data('scrivito-space-widget-min-size'));
      var step_size = parseInt($(drag_handle).data('scrivito-space-widget-step-size'));
      var distance = step_size;
      var to_save = 0;
      var value = widget.height();
      var size_field = $(drag_handle).next();

      $(drag_handle).on('mousedown', function(event) {
        clicked = true;
        pos = event.pageY;
        $(drag_handle).addClass('moving');
      });

      $('body').on('mousemove', function(event) {
        if(clicked) {
          event.preventDefault();
          distance -= event.pageY - pos;
          value += event.pageY - pos;
          if(Math.abs(distance) >= step_size) {
            var n = distance < 0 ? -1 : 1;
            to_save = value - n*(distance%step_size);
            to_save = Math.max(min_height,Math.min(to_save, max_height))
            $(size_field).html(to_save+"px");
            widget.css('height', to_save+"px");
            distance -= step_size;
          }
          pos = event.pageY;
        }
      });

      $('body').on('mouseup', function() {
        if(clicked) {
          cms_field.scrivito('save', to_save+'px');
          clicked = false;
          $(drag_handle).removeClass('moving');
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
