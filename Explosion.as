package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.*;
	
	public class Explosion extends MovieClip
	{
		private var timer:Number = 0;
		private var timeLimit:Number = 6;
		
		private var _root:Object;
		
		public function Explosion()
		{
			addEventListener(Event.ENTER_FRAME, eFrame);
			addEventListener(Event.ADDED, beginClass);
		}
		private function beginClass(event:Event):void
		{
			_root = MovieClip(root);
		}
		private function eFrame(event:Event):void
		{
			this.alpha -= .12;
			
			if(timer <= timeLimit)
			{
				timer++;
			}
			else
			{
				removeEventListener(Event.ENTER_FRAME, eFrame);
				_root.removeChild(this);
			}
		}
	}
}