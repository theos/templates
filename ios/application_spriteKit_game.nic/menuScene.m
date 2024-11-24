#import "menuScene.h"
#import "myScene.h"


// assets

static NSString *const btn1 = @"assets/btn1.png";




@implementation menuScene {


}

-(id)initWithSize:(CGSize)size {
	
	if (self = [super initWithSize:size]) {
		
		[self setupScene];
	}
	
	return self;
	
	
}


-(void) setupScene{
	
	self.backgroundColor = [SKColor colorWithRed:0.27 green:0.27 blue:0.27 alpha:1.00];
	
	
	
	 // start title
	_title = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
	
	_title.text = [NSString stringWithFormat:@"SpriteKit Template"]; //change to as desired
	_title.fontColor = [SKColor whiteColor];
	_title.position = CGPointMake(CGRectGetMidX(self.frame), self.frame.size.height - 150);
	_title.verticalAlignmentMode = 1;
	
	// title end
	
	// start button 
	_startBtn = [SKSpriteNode spriteNodeWithImageNamed:btn1];
    _startBtn.position = CGPointMake(CGRectGetMidX(self.frame), self.frame.size.height / 3);
    _startBtn.xScale = 0.5;
    _startBtn.yScale = 0.5;
    _startBtn.name = @"startButton";
    _startBtn.alpha = 0.001;
    SKAction *fade1 = [SKAction fadeInWithDuration:1];
    
    SKAction *fadeIn = [SKAction runBlock:^{
    [_startBtn runAction:fade1];
		}];
		
     [self addChild:_startBtn];
		
		
		
		[self runAction:fadeIn];
	//end button
	
	[self addChild:_title];
}


//touches began 
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    
    CGPoint location = [touch locationInNode:self];
    

    //if start button touched, bring the rain
    SKNode *node = [self nodeAtPoint:location];
    
    // if next button touched, start transition to next scene
    if ([node.name isEqualToString:@"startButton"]) {
    
			myScene *playScene = [[myScene alloc] initWithSize:self.view.bounds.size];
			
			
			playScene.scaleMode = SKSceneScaleModeAspectFill;
			
			[self.view presentScene:playScene];
    }
}






@end
