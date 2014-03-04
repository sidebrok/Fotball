package {
	
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class StartMenuButton extends SimpleButton {
		
		private var sprs:Vector.<Sprite>;
		
		public function StartMenuButton ( txt:String ) {
			
			this.sprs = new Vector.<Sprite> ();
			
			var tf:TextField = new TextField ();
			tf.selectable = false;
			tf.width = 150;
			tf.height = 40;
			tf.x = 20;
			tf.y = 10;
			tf.defaultTextFormat = new TextFormat ( "Verdana", 20, 0, null, null, null, null, null, "center" );
			tf.text = txt;
			
			for ( var i0:uint = 0; i0 < 3; i0 ++ ) {
				
				this.sprs.unshift ( new Sprite ());
				
				this.sprs[0].graphics.lineStyle ();
				this.sprs[0].graphics.beginFill ( 0xeecc88 );
				this.sprs[0].graphics.drawRoundRect ( 0, 0, 200, 50, 30, 40 );
				this.sprs[0].graphics.endFill ();
				
				this.sprs[0].addChild ( tf );
				
			}
			
			this.downState = this.sprs[0];
			this.overState = this.sprs[1];
			this.upState = this.sprs[2];
			
		}
		
	}
	
}
