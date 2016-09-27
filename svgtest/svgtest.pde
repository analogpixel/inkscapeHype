import hype.*;
import hype.extended.behavior.*;
import hype.extended.colorist.*;
import hype.extended.layout.*;
import hype.interfaces.*;

HColorPool colors;
HShape d4;

void setup(){
	
	// do not create a p3d or opengl surface or things will
	// no render correctly
	size(640,640);

	H.init(this).background(#202020).use3D(false).autoClear(true);
	smooth();

	colors = new HColorPool(#FFFFFF,#F7F7F7,#ECECEC,#0095A8,#00616F,#333333,#FF3300,#FF6600);

	d4 = new HShape("test.svg");
	H.add(d4);
}

void draw(){
	H.drawStage();

	// saveFrame("frames/#########.tif"); if (frameCount == 900) exit();
}

void keyPressed() {
	d4.randomColors( colors.fillOnly() );
	H.drawStage();
}