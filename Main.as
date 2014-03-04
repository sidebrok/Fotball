package {
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class Main extends Sprite {
		
		public var player:Player;
		public var enemies:Vector.<Enemy>;
		
		public function Main () {
			
			enemies = new Vector.<Enemy>;
			
			this.addEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			
		}
		
		public function enterFrame ( e:Event ):void {
			
			
			
		}
		
		public function keyDown ( e:KeyboardEvent ):void {
			
			
			
		}
		
		public function addedToStage ( e:Event ):void {
			this.removeEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			stage.addEventListener(Event.ENTER_FRAME, this.enterFrame);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, this.keyDown);
		}
		
	}
}