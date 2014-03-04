package {
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.ui.Keyboard;
	
	public class Main extends Sprite {
		
		public var startMenuButtons:Vector.<StartMenuButton>;
		
		public var player:Player;
		public var enemies:Vector.<Enemy>;
		
		public function Main () {
			
			this.addEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			
		}
		
		public function startStartMenu ():void {
			
			stage.addEventListener ( MouseEvent.MOUSE_DOWN, this.startMenuMouseDown );
			
			this.startMenuButtons = new Vector.<StartMenuButton> ();
			
		}
		
		public function stopStartMenu ():void {
			
			stage.removeEventListener ( MouseEvent.MOUSE_DOWN, this.startMenuMouseDown );
			
			while ( this.startMenuButtons.length ) {
				
				removeChild ( this.startMenuButtons.shift() );
				
			}
			
		}
		
		public function startMenuMouseDown ( e:MouseEvent ):void {
			
			
			
		}
		
		public function startGame ():void {
			
			player = new Player ();
			enemies = new Vector.<Enemy>;
			
			stage.addEventListener ( Event.ENTER_FRAME, this.gameEnterFrame );
			stage.addEventListener ( KeyboardEvent.KEY_DOWN, this.gameKeyDown );
			
		}
		
		public function stopGame ():void {
			
			stage.removeEventListener ( Event.ENTER_FRAME, this.gameEnterFrame );
			stage.removeEventListener ( KeyboardEvent.KEY_DOWN, this.gameKeyDown );
			
		}
		
		public function gameEnterFrame ( e:Event ):void {
			
			
			
			
			
			//collision detection mellom fiender og spiller
			
			//kjører en loop for hver fiende
			for ( var i1:uint = 0; i1 < this.enemies.length; i1 ++ ) {
				
				//sjekker om spilleren kolliderer med hver fiende
				if ( this.player.mc.hitTestObject ( this.enemies[i1] )) {
					
					//dersom det er en kollisjon, kjøres damage-funksjonen og finenden fjernes
					
					damage ();
					
				}
				
			}
			
		}
		
		public function gameKeyDown ( e:KeyboardEvent ):void {
			
			
			
		}
		
		private function damage ():void {
			
			
			
		}
		
		public function addedToStage ( e:Event ):void {
			
			this.removeEventListener ( Event.ADDED_TO_STAGE, this.addedToStage );
			
			startStartMeny ();
			
		}
		
	}
}