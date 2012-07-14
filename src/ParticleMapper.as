package
{
	import com.cjgammon.particlemapper.PMController;
	import com.cjgammon.particlemapper.PMModel;
	import com.cjgammon.particlemapper.PMView;

	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	
	public class ParticleMapper extends Sprite
	{
		private var model:PMModel;
		private var view:PMView;
		private var controller:PMController;
		
		public function ParticleMapper()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, handle_ADDED_TO_STAGE);
			
			stage.stageHeight = 800;
			stage.stageWidth = 1000;
			stage.scaleMode = StageScaleMode.NO_SCALE; 
			stage.align = StageAlign.TOP_LEFT; 
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handle_KEY_DOWN);
		}
		
		private function handle_ADDED_TO_STAGE(e:Event):void
		{
			model = new PMModel();
			view = new PMView();
			controller = new PMController(view, model, this);
			
			this.addChild(view);
		}
		
		
		private function handle_KEY_DOWN(e:KeyboardEvent):void
		{
			trace(e.keyCode);
			controller.keyPress(e.keyCode);
		}
	}
}