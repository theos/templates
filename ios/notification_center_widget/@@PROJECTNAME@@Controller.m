#import "BBWeeAppController-Protocol.h"

@interface @@PROJECTNAME@@Controller: NSObject <BBWeeAppController>
@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIImageView *backgroundView;
@end

@implementation @@PROJECTNAME@@Controller

- (instancetype)init {
	if ((self = [super init])) {
		// Custom initialization
	} return self;
}

- (void)loadFullView {
	// Add subviews to _backgroundView (or _view) here.
}

- (void)loadPlaceholderView {
	// This should only be a placeholder - it should not connect to any servers or perform any intense
	// data loading operations.
	//
	// All widgets are 316 points wide. Image size calculations match those of the Stocks widget.
	_view = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 316.f, [self viewHeight])];
	_view.autoresizingMask = UIViewAutoresizingFlexibleWidth;

	//NSBundle *my_bundle = [NSBundle bundleForClass:[self class]];
	UIImage *bgImg = [UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/StocksWeeApp.bundle/WeeAppBackground.png"];
	UIImage *stretchableBgImg = [bgImg stretchableImageWithLeftCapWidth:floorf(bgImg.size.width / 2.f) topCapHeight:floorf(bgImg.size.height / 2.f)];
	_backgroundView = [[UIImageView alloc] initWithImage:stretchableBgImg];
	_backgroundView.frame = CGRectInset(_view.bounds, 2.f, 0.f);
	_backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	[_view addSubview:_backgroundView];
}

- (void)unloadView {
	_view = nil;
	_backgroundView = nil;

	// Destroy any additional subviews you added here. Don't waste memory :(.
}

- (CGFloat)viewHeight {
	return 71.f;
}

@end
