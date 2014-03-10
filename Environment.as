package {
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;

	public class Environment {
		
		var doc:DisplayObjectContainer;
		var goals:Vector.<MovieClip> = new Vector.<Goal>();
		var bgplayers:Vector.<MovieClip> = new Vector.<EnemyPlayer>();
		var bystanders:Vector.<MovieClip> = new Vector.<Bystander1>();



		public function Environment (doca:DisplayObjectContainer) {
			doc=doca;
		}

		public function frame() {

			for ( var i0:uint = 0; i0 < goals.length; i0++ ) {

				goals[i0].x -= 5;
				if (goals[i0].x < 0){

					doc.removeChild (goals[i0]);
					goals.splice(i0,1);

				}
			}

			for ( var i1:uint = 0; i1 < bystanders.length; i1++ ) {

				bystanders[i1].x -= 5;
				if (bystanders[i1].x < 0){

					doc.removeChild (bystanders[i1]);
					bystanders.splice(i1,1);

				}
			}

			for ( var i2:uint = 0; i2 < bgplayers.length; i2++ ) {

				bgplayers[i2].x -= 5;
				if (bgplayers[i2].x < 0){

					doc.removeChild (bgplayers[i2]);
					bgplayers.splice(i2,1);

				}
			}

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
			var goal:Goal = new Goal();
			goal.x = 1200;
			goal.y = 300;
			doc.addChild(goal);
			goals.push(goal);
		}

		public function addBystanders() {
			var bystander:Bystander1 = new Bystander1();
			bystander.x = 1200;
			bystander.y = 300;
			doc.addChild(bystander);
			bystanders.push(bystander);
		}

		public function addBackgroundEnemies() {
			var ePlayer:EnemyPlayer = new EnemyPlayer();
			ePlayer.x = 1200;
			ePlayer.y = 300;
			doc.addChild(ePlayer);
			bgplayers.push(ePlayer);
		}

		public function randomRange(max:Number, min:Number = 0):Number
		{
    		return Math.random() * (max - min) + min;
		}//end function
	}//end class
}//end package