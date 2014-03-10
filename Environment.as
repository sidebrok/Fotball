package {
	import flash.display.DisplayObjectContainer;
	public class Environment {
		
		var doc:DisplayObjectContainer;
		var goals:Vector.<MovieClip> = new Vector.<Goal>();
		var bgplayers:Vector.<MovieClip> = new Vector.<EnemyPlayer>();
		var bystanders:Vector.<MovieClip> = new Vector.<Bystander1>();



		public function Environment (doca:DisplayObjectContainer) {
			doc=doca;
		}

		public function frame() {

			for ( var i0:uint = 0; i < goals.length; i++ ) {

				goals[i0].x -= 5;
				if (goals[i0].x < 0){

					doc.removeChild (goals[i0]);
					goals.splice(i0,1);

				}
			}

			for ( var i0:uint = 0; i < bystanders.length; i++ ) {

				bystanders[i0].x -= 5;
				if (bystanders[i0].x < 0){

					doc.removeChild (bystanders[i0]);
					bystanders.splice(i0,1);

				}
			}
			for ( var i0:uint = 0; i < bgplayers.length; i++ ) {

				bgplayers[i0].x -= 5;
				if (bgplayers[i0].x < 0){

					doc.removeChild (bgplayers[i0]);
					bgplayers.splice(i0,1);

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
			var ePlayer:bgPlayers = new EnemyPlayer();
			ePlayer.x = 1200;
			ePlayer.y = 300;
			doc.addChild(t);
			bgPlayers.push(ePlayer);
		}

		public function randomRange(max:Number, min:Number = 0):Number
		{
    		return Math.random() * (max - min) + min;
		}//end function
	}//end class
}//end package