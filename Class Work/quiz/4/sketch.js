var col = 0;
function setup() {
  createCanvas(500, 500);



function draw() {
  background(col);
  fill('red')
  rect(40, 120, 120, 30);
  fill(255, 204, 0)
  rect(40, 120, 120, 20);
  fill(255, 204, 100)
  rect(40, 120, 120, 10);
  }
}

function mousePressed() {
  if (col === 0) {
    col = 255;
  } else {
    col = (random(0,255), random(0,255), random(0,255));
  }
}
