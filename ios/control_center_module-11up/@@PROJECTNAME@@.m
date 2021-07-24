#import "@@PROJECTNAME@@.h"

@implementation @@PROJECTNAME@@

// Most third-party Control Center modules out there use non-CAML approach because it's easier to get icon images than create CAML
// Choose either CAML and non-CAML portion of the code for your final implementation of the toggle
// IMPORTANT: To prepare your icons and configure the toggle to its fullest, check out CCSupport Wiki: https://github.com/opa334/CCSupport/wiki

#pragma mark - CAML approach

// CAML descriptor of your module (.ca directory)
// Read more about CAML here: https://medium.com/ios-creatix/apple-make-your-caml-format-a-public-api-please-9e10ba126e9d
- (CCUICAPackageDescription *)glyphPackageDescription {
    return [CCUICAPackageDescription descriptionForPackageNamed:@"@@PROJECTNAME@@" inBundle:[NSBundle bundleForClass:[self class]]];
}

#pragma mark - End CAML approach

#pragma mark - Non-CAML approach

// Icon of your module
- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

// Optional: Icon of your module, once selected 
- (UIImage *)selectedIconGlyph {
    return [UIImage imageNamed:@"icon-selected" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

// Selected color of your module
- (UIColor *)selectedColor {
    return [UIColor blueColor];
}

#pragma mark - End Non-CAML approach

// Current state of your module
- (BOOL)isSelected {
    return NO;
}

- (void)setSelected:(BOOL)selected {
    if (selected) {
        // Your module turned selected/on, do something
    } else {
        // Your module turned unselected/off, do something
    }
}

@end
