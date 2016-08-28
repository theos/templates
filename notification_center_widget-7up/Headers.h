@protocol _SBUIWidgetHost <NSObject>

- (void)invalidatePreferredViewSize;
- (void)requestLaunchOfURL:(NSURL *)url;
- (void)requestPresentationOfViewController:(UIViewController *)viewController presentationStyle:(UIModalPresentationStyle)presentationStyle context:(void *)context completion:(void(^)(void))completion;

@end

@interface _SBUIWidgetViewController : UIViewController <_SBUIWidgetHost>

@property (copy) NSString *widgetIdentifier;

- (CGSize)preferredViewSize; // override this in your view controller to set a height
- (void)invalidatePreferredViewSize;

- (void)hostDidDismiss;
- (void)hostDidPresent;
- (void)hostWillDismiss;
- (void)hostWillPresent;

- (void)requestLaunchOfURL:(NSURL *)url;
- (void)requestPresentationOfViewController:(UIViewController *)viewController presentationStyle:(UIModalPresentationStyle)presentationStyle context:(void *)context completion:(void(^)(void))completion; // this method appears to be unimplemented in 7.0

@end
