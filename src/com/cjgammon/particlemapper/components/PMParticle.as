package com.cjgammon.particlemapper.components
{	
	import flash.display.Sprite;
	import flash.events.*;
	
	public class PMParticle extends Sprite
	{
		public var id:int;
		
		public function PMParticle()
		{
			this.buttonMode = true;
			this.graphics.lineStyle(1, 0, 0.5);
			this.graphics.beginFill(0, .25);
			this.graphics.drawCircle(0, 0, 10);
			this.graphics.drawCircle(0, 0, 1);

			addEventListener(MouseEvent.MOUSE_DOWN, handle_MOUSE_DOWN);
			addEventListener(MouseEvent.MOUSE_UP, handle_MOUSE_UP);
		}
		
		public function handle_MOUSE_DOWN(e:MouseEvent):void{
			this.startDrag();
		}
		
		public function handle_MOUSE_UP(e:MouseEvent):void{
			this.stopDrag();
		}
		
	}
}