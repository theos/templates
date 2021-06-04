#import "@@PROJECTNAME@@.h"

@implementation @@PROJECTNAME@@

// Return the icon of your module here
- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

// Return the color selection color of your module here
- (UIColor *)selectedColor {
    return [UIColor blueColor];
}

- (BOOL)isSelected {
    return _selected;
}

- (void)setSelected:(BOOL)selected {
    _selected = selected;
    [super refreshState];
    if (_selected) {
        // Your module got selected, do something
    } else {
        // Your module got unselected, do something
    }
}

@end
