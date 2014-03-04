package {
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	
	public class Main extends Sprite {
		
		public var player:Player;
		public var enemies:Vector.<Enemy>;
		
		public function Main () {
			
			this.addEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			
		}
		
		public function startStartMenu ():void {
			
			
			
		}
		
		public function startMenuMouseDown ( e:MouseEvent ):void {
			
			
			
		}
		
		public function startGame ():void {
			
			player = new Player ();
			enemies = new Vector.<Enemy>;
			
		}
		
		public function gameEnterFrame ( e:Event ):void {
			
			
			
		}
		
		public function gameKeyDown ( e:KeyboardEvent ):void {
			
			
			
		}
		
		public function addedToStage ( e:Event ):void {
		
			this.removeEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			
			stage.addEventListener ( MouseEvent.MOUSE_DOWN, this.startMenuMouseDown );
			
		}
		
	}
}