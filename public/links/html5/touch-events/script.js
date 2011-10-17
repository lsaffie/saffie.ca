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

function make_circle(canvas, color) {
  var ctx = canvas.getContext('2d');
  ctx.beginPath();
  ctx.arc(100,100,25,0,2*Math.PI, false);
  ctx.fillStyle = color;
  ctx.fill();
}

function new_circle() {
  var canvas = document.createElement('canvas');
  canvas.style.position = 'relative';
  canvas.width="130";
  canvas.height="130";
  document.body.appendChild(canvas);
  make_circle(canvas, "green");
  move(canvas);
}

window.onload = function() {
  var obj1= document.getElementById('canvas-touch1');
  make_circle(obj1, "red");
  move(obj1);
}

