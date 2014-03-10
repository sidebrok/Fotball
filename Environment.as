package {
	public class Environment {

		public function Environment {

		}

		public function frame() {
			switch(randomRange(180)) {
				case 0:
					addGoal();
				break;

				case 1:
					addBystanders();
				break;

				case 2:
					addBackgroundEnemies();
				break;

			}
		}

		public function addGoal() {

		}

		public function addBystanders() {

		}

		public function addBackgroundEnemies() {

		}

		public function randomRange(max:Number, min:Number = 0):Number
		{
    		return Math.random() * (max - min) + min;
		}//end function
	}//end class
}//end package