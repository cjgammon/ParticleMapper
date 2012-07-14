package com.cjgammon.particlemapper
{
	import flash.display.Sprite;

	import com.cjgammon.particlemapper.components.PMParticle;

	public class PMController
	{
		private var model:PMModel;
		private var view:PMView;
		
		public function PMController(view:PMView, model:PMModel, context:Sprite)
		{
			this.view = view;
			this.model = model;
			
		}
		
		public function keyPress(keyCode:int):void
		{
			switch(keyCode){
				case 187: //+
					var particle:PMParticle = view.addParticle();
					model.addParticle(particle);
					break;
				case 27: //esc
					break;
				case 81: //Q
					model.export();
					break;
			}
			
		}

		
	}
}