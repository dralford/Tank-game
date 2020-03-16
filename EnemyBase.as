package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.*;
	
	public class EnemyBase extends MovieClip
	{
		private var radians:Number = Math.atan2(TankBase.y-this.y,TankBase.x-this.x);
		
		public function EnemyBase()
		{
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function eFrame(event:Event):void
		{
			this.x += Math.cos(radians);
			this.y += Math.sin(radians);
		}
	}
}