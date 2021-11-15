$(document).ready(function(){
(function ($) {
            $.fn.countTo = function (options) {
              options = options || {};
              
              return $(this).each(function () {
                // set options for current element
                var settings = $.extend({}, $.fn.countTo.defaults, {
                  from:            $(this).data('from'),
                  to:              $(this).data('to'),
                  speed:           $(this).data('speed'),
                  refreshInterval: $(this).data('refresh-interval'),
                  decimals:        $(this).data('decimals')
                }, options);
                
                // how many times to update the value, and how much to increment the value on each update
                var loops = Math.ceil(settings.speed / settings.refreshInterval),
                  increment = (settings.to - settings.from) / loops;
                
                // references & variables that will change with each update
                var self = this,
                  $self = $(this),
                  loopCount = 0,
                  value = settings.from,
                  data = $self.data('countTo') || {};
                
                $self.data('countTo', data);
                
                // if an existing interval can be found, clear it first
                if (data.interval) {
                  clearInterval(data.interval);
                }
                data.interval = setInterval(updateTimer, settings.refreshInterval);
                
                // initialize the element with the starting value
                render(value);
                
                function updateTimer() {
                  value += increment;
                  loopCount++;
                  
                  render(value);
                  
                  if (typeof(settings.onUpdate) == 'function') {
                    settings.onUpdate.call(self, value);
                  }
                  
                  if (loopCount >= loops) {
                    // remove the interval
                    $self.removeData('countTo');
                    clearInterval(data.interval);
                    value = settings.to;
                    
                    if (typeof(settings.onComplete) == 'function') {
                      settings.onComplete.call(self, value);
                    }
                  }
                }
                
                function render(value) {
                  var formattedValue = settings.formatter.call(self, value, settings);
                  $self.html(formattedValue);
                }
              });
            };
            
            $.fn.countTo.defaults = {
              from: 0,               // the number the element should start at
              to: 0,                 // the number the element should end at
              speed: 1000,           // how long it should take to count between the target numbers
              refreshInterval: 100,  // how often the element should be updated
              decimals: 0,           // the number of decimal places to show
              formatter: formatter,  // handler for formatting the value before rendering
              onUpdate: null,        // callback method for every time the element is updated
              onComplete: null       // callback method for when the element finishes updating
            };
            
            function formatter(value, settings) {
              return value.toFixed(settings.decimals);
            }
          }(jQuery));

          jQuery(function ($) {
            // custom formatting example
            $('.count-number').data('countToOptions', {
            formatter: function (value, options) {
              return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
            }
            });
            
            // start all the timers
            $('.timer').each(count);  
            
            function count(options) {
            var $this = $(this);
            options = $.extend({}, options || {}, $this.data('countToOptions') || {});
            $this.countTo(options);
            }
          });

 function sliceSize(dataNum, dataTotal) {
  return (dataNum / dataTotal) * 360;
}
function addSlice(sliceSize, pieElement, offset, sliceID, color) {
  $(pieElement).append("<div class='slice "+sliceID+"'><span></span></div>");
  var offset = offset - 1;
  var sizeRotation = -179 + sliceSize;
  $("."+sliceID).css({
    "transform": "rotate("+offset+"deg) translate3d(0,0,0)"
  });
  $("."+sliceID+" span").css({
    "transform"       : "rotate("+sizeRotation+"deg) translate3d(0,0,0)",
    "background-color": color
  });
}
function iterateSlices(sliceSize, pieElement, offset, dataCount, sliceCount, color) {
  var sliceID = "s"+dataCount+"-"+sliceCount;
  var maxSize = 179;
  if(sliceSize<=maxSize) {
    addSlice(sliceSize, pieElement, offset, sliceID, color);
  } else {
    addSlice(maxSize, pieElement, offset, sliceID, color);
    iterateSlices(sliceSize-maxSize, pieElement, offset+maxSize, dataCount, sliceCount+1, color);
  }
}
function createPie(dataElement, pieElement) {
  var listData = [];
  $(dataElement+" span").each(function() {
    listData.push(Number($(this).html()));
  });
  var listTotal = 0;
  for(var i=0; i<listData.length; i++) {
    listTotal += listData[i];
  }
  var offset = 0;
  var color = [
    "cornflowerblue", 
    "olivedrab", 
    "orange", 
    "tomato", 
    "crimson", 
    "purple", 
    "turquoise", 
    "forestgreen", 
    "navy", 
    "gray"
  ];
  for(var i=0; i<listData.length; i++) {
    var size = sliceSize(listData[i], listTotal);
    iterateSlices(size, pieElement, offset, i, 0, color[i]);
    $(dataElement+" li:nth-child("+(i+1)+")").css("border-color", color[i]);
    offset += size;
  }
}
createPie(".pieID.legend", ".pieID.pie");

});
