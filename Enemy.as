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
			switch(t) {
				case 0:
				mc = new Redbull ();
				//mc = t ? new Redbull() : new Dewz();//change to real things
				break;
				case 1:

				break;
				default:
					mc = new Redbull ();
				break;
			}
		}


		//GETTERS AND SETTERS

		public function frame() {
			mc.x -= xspeed;
		}
		
		public function getRecct():Rectangle {
			return mc.getBounds(mc);
		}
	}	
}
