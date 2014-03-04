package  {
import flash.display.DisplayObject;

	public class Enemy {
		private var x:Number,y:Number;
		private var dmg:int = 1;
		private var xspeed:Number;
		private var sprite:MovieClip;

		public function Enemy(t) {
			sprite = t ? new Redbull() : new Dewz();//change to real things
		}


		//GETTERS AND SETTERS
		public function getHeight():int {
			return sprite.height;
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
