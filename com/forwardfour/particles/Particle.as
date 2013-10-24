package com.forwardfour.particles {
	import flash.display.*;
	
	public class Particle extends Sprite {
		public var fade:Number;
		public var friction:Number;
		public var gravity:Number;
		public var growX:Number;
		public var growY:Number;
		public var xVelocity:Number;
		public var yVelocity:Number;
		
		public function Particle() {
			this.fade = 1;
			this.friction = 1;
			this.gravity = 0;
			this.growX = 1;
			this.growY = 1;
			this.xVelocity = 0;
			this.yVelocity = 0;
		}
		
		public function update():void {
			this.xVelocity *= this.friction;
			this.yVelocity *= this.friction;
			this.yVelocity += this.gravity; //Accelerate downward as this.gravity increases
			
			this.alpha *= this.fade;
			this.scaleX *= this.growX;
			this.scaleY *= this.growY;
			this.x += this.xVelocity;
			this.y += this.yVelocity;
		}
	}
}