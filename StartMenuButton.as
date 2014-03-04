package {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class StartMenuButton extends Sprite {
		
		public function StartMenuButton ( txt:String ) {
			
			this.graphics.lineStyle ();
			this.graphics.beginFill ( 0xff0000 );
			this.graphics.drawRoundedRect (  );
			this.graphics.endFill ();
			
			var tf:TextField = new TextField ();
			tf.selectable = false;
			tf.width = 200;
			tf.height = 40;
			tf.x = 20;
			tf.y = 10;
			tf.defaultTextFormat = new TextFormat ( "Verdana", 20, 0 );
			tf.defaultTextFormat.align = "center";
			tf.text = txt;
			this.addChild ( tf );
			
		}
		
	}
	
}
