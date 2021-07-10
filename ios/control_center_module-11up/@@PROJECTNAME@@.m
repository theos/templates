#import "@@PROJECTNAME@@.h"

@implementation @@PROJECTNAME@@

// Most third-party Control Center modules out there use non-CAML approach because it's easier to get images than create CAML
// You can delete the CAML approach section from your final code, unless you want to be a little more cool

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
        // Your module got selected, do something
    } else {
        // Your module got unselected, do something
    }
}

@end
