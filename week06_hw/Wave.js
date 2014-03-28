var Wave = function (t, f, a, o) {
	this.t = t;
	this.f = f;
	this.a = a;
	this.o = o;
}

Wave.prototype.update = function() {
	this.t+=this.f;
}

Wave.prototype.run = function(_f,_a) {
	this.f = _f;
	this.a = _a;
	this.update();
	return this.wave();
}


Wave.prototype.wave = function() {
	return Math.sin(this.t)*this.a+this.o;
}