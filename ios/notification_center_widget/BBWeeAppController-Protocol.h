#import <UIKit/UIKit.h>

@protocol BBWeeAppController <NSObject>
@required
- (UIView *)view;
@optional
- (void)loadPlaceholderView;
- (void)loadFullView;
- (void)loadView;
- (void)unloadView;
- (void)clearShapshotImage;
- (id)launchURL;
- (id)launchURLForTapLocation:(CGPoint)tapLocation;
- (CGFloat)viewHeight;
- (void)viewWillAppear;
- (void)viewDidAppear;
- (void)viewWillDisappear;
- (void)viewDidDisappear;
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end
