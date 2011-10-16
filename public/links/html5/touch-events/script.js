function move(obj) {
  obj.addEventListener('touchmove', function(event) {
    // If there's exactly one finger inside this element
    if (event.targetTouches.length == 1) {
      var touch = event.targetTouches[0];
      // Place element where the finger is
      obj.style.left = touch.pageX + 'px';
      obj.style.top = touch.pageY + 'px';
    }
  }, false);
}

window.onload = function() {
  var obj1= document.getElementById('canvas-touch1');
  var obj2= document.getElementById('canvas-touch2');
  var obj3= document.getElementById('canvas-touch3');
  move(obj1);
  move(obj2);
  move(obj3);
}

