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

function make_circles(canvas, color) {
  var ctx = canvas.getContext('2d');
  ctx.beginPath();
  ctx.arc(100,100,50,0,2*Math.PI, false);
  ctx.fillStyle = color;
  ctx.fill();
}

window.onload = function() {
  var obj1= document.getElementById('canvas-touch1');
  make_circles(obj1, "red");
  var obj2= document.getElementById('canvas-touch2');
  make_circles(obj2,"yellow");
  var obj3= document.getElementById('canvas-touch3');
  make_circles(obj3, "blue");
  move(obj1);
  move(obj2);
  move(obj3);
}

