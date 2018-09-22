#import "myScene.h"



#define dgrToRad(degrees)((M_PI * degrees)/180)



@implementation myScene {




}

-(id)initWithSize:(CGSize)size {
	
	if (self = [super initWithSize:size]) {
		
		[self setupScene];
		
	}
	
	return self;
	
	
}


-(void) setupScene{
	
	
	self.backgroundColor = [SKColor colorWithRed:0.09 green:0.09 blue:0.10 alpha:1.00];
	
}






-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
	
	
	for (UITouch *touch in touches) {
		
		//CGPoint touchLocation = [touch locationInNode:self];
		
		
		
		
	}
}


- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
	
	for (UITouch *touch in touches) {
		
		//CGPoint touchLocation = [touch locationInNode:self];
		
		
		
		
		
	}
}




- (void)update:(NSTimeInterval)currentTime {
	// this function get called before every Frame
	
}




//collide delegate 


- (void)didBeginContact:(SKPhysicsContact *)contact {
	
}

@end
