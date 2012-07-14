package com.cjgammon.particlemapper
{
	import com.cjgammon.particlemapper.components.PMParticle;
	
	import flash.display.Sprite;

	public class PMView extends Sprite
	{
		public function PMView()
		{
			
		}
		
		public function addParticle():PMParticle
		{
			var particle:PMParticle = new PMParticle();
			particle.x = mouseX;
			particle.y = mouseY;
			addChild(particle);
			
			return particle;
		}
	}
}