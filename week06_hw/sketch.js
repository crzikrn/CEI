var xSine;
var ySine;
var ampS;
var freS;
var amp;
var fre;
var x;
var y;
var t;
var size;
var q;
var count = 0;

function setup() {
	xSine = new Wave(0,0,0,width/2);
	ySine = new Wave(0,0,0,height/2);
	ampS = new Wave(0,0,0,0);
	freS = new Wave(0,0,0,0);
	createGraphics(960,720);
	background(244); 
	noStroke();	
	fill(244,0,0,100);
	fill(0);
}

function draw() {
	//fill(244,10);
	//rect(0,0,width,height);
	//fill(0);
	
	size = random(244);//map(noise(t),0,1,10,244);
	//print(size);
	if(random(1) < 0.5) {
		fill(size,0,0,200);
	}
	
	//25 about a second
	if(count < 500){
	 q = 0.1;
	}
	//right random looking
	else if(count < 625){
	 q = 1;
	}
	
	else if(count < 825){
	 q = 0.5;
	}
	
	else if(count < 900){
	 q = 0.8;
	}
	//right side, smooth curve
	else if(count < 1350){
	 q = 0.05;
	}
	//black out and flashes
	else if(count < 1900){
	 q = 0.001;
	 fill(0,200);
	 rect(0,0,width,height);
	 fill(244);
	}
	//this is it, galaxy
	else {
	 q = 0.08;
	 fill(244);
	}
	
	
	amp = ampS.run(0.007,250);
	fre = freS.run(q,q);
	x = xSine.run(fre,amp);
	y = ySine.run(0.1,amp);
	
	var sz = random(8);
	//no more movement
	if(count > 2700){
	 x = width/2;
	 y = height/2;
	}
	ellipse(x,y,sz,sz);
	
	t+=0.1;
	count++;
}