package {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class StartMenuButton extends Sprite {
		
		public function StartMenuButton ( txt:String ) {
			
			this.graphics.lineStyle ();
			this.graphics.beginFill ( 0xeecc88 );
			this.graphics.drawRoundRect ( 0, 0, 200, 50, 30, 40 );
			this.graphics.endFill ();
			
			var tf:TextField = new TextField ();
			tf.selectable = false;
			tf.width = 150;
			tf.height = 40;
			tf.x = 20;
			tf.y = 10;
			tf.defaultTextFormat = new TextFormat ( "Verdana", 20, 0, null, null, null, null, null, "center" );
			tf.text = txt;
			this.addChild ( tf );
			
		}
		
	}
	
}
