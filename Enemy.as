package {
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.geom.Rectangle;

	public class Enemy extends BitmapData {
		private var xval:Number
		private var yval:Number;
		private var dmg:int = 1;
		private var xspeed:Number;
		private var mc:MovieClip;

		public function Enemy(t) {
			mc = new Redbull ();
			//mc = t ? new Redbull() : new Dewz();//change to real things
		}


		//GETTERS AND SETTERS
		public function getHeight():int {
			return mc.height;
		}

		public function frame() {

		}
		
		public function getx():Number {
			return xval;
		}
		public function gety():Number {
			return yval;
		}
		public function setx(njux:Number):void {
			xval = njux;
		}

		public function sety(njuy:Number):void {
			yval = njuy;
		}
		
		public function getRecct():Rectangle {
			return mc.getBounds(mc);
		}
	}	
}
