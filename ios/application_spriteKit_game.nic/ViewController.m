#import "ViewController.h"
#import "myScene.h"
#import "menuScene.h"

#import <SpriteKit/SpriteKit.h>



@implementation ViewController {
	
}




-(void)viewDidLoad{
	
	
	// your code here
	
	
	
}




- (void)viewWillLayoutSubviews {
	[super viewWillLayoutSubviews];
	
	//Setting the rectangle of the screen frame
	
	CGRect screenFrame = [UIScreen mainScreen].bounds;
	
	// creating the skview which will hold our scenes  
	SKView *skView = [[SKView alloc] initWithFrame:screenFrame];
	
	//show FPS (frames per second)
	skView.showsFPS = YES;
	//show the node/object count
	skView.showsNodeCount = YES;
	// creating the scenes which will hold all the game content
	//myScene *playScene = [myScene sceneWithSize:skView.bounds.size];
	
	menuScene *FirstScene = [menuScene sceneWithSize:skView.bounds.size];
	
	//setting the scale mode
	//playScene.scaleMode = SKSceneScaleModeAspectFill;
	
	FirstScene.scaleMode = SKSceneScaleModeAspectFill;
	
	
	[self.view addSubview:skView];
	
	//Setting the scene
	
	[skView presentScene:FirstScene];
}

@end
