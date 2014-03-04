package  {
import flash.display.DisplayObject;

	public class Enemy {
		private var x:Number,y:Number;
		private var dmg:int = 1;
		private var xspeed:Number;
		private var mc:MovieClip;

		public function Enemy(t) {
			mc = t ? new Redbull() : new Dewz();//change to real things
		}


		//GETTERS AND SETTERS
		public function getHeight():int {
			return mc.height;
		}

		public function getx(i) {

		}
		public function gety(i) {

		}
		public function setx(i) {

		}

		public function sety(i) {

		}
	}	
}
