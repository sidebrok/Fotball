package {
	
	import flash.media.Sound;
	
	public class SoundManager {
		private static var dew,redbull,player;
		private static var sound = new Array();
		private static var music = new Array();

		//NUMBERS FOR THE SOUNDS
		public static var M16 = 0;

		public static function init() {
			//create objects for all the sounds
			sound[0] = new m16();

			music[0] = new Adventure();
		}

		public static function play(i) {
			sound[i].play();
			sound[i].play();
			sound[i].play();
			sound[i].play();

		}//end funciton
		public static function backgroundMusic(i) {
			music[i].play();
		}
	}//end class
}//end package