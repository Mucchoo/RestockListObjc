//
//  ThemeModel.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/6/22.
//

#import "ThemeModel.h"

@implementation ThemeModel

-(UIColor *) color {
    NSInteger theme = [NSUserDefaults.standardUserDefaults integerForKey:@"theme"];
    NSLog(@"themeColorNumber %ld", (long)theme);
    
    if (theme == 0) {
        theme = 1;
    }
    
    NSString *colorName = [NSString stringWithFormat:@"AccentColor%ld", (long)theme];
    UIColor *themeColor = [UIColor colorNamed:colorName];
    return themeColor;
}

-(void) setshadowWith: (UIView *)view {
    view.layer.shadowOffset = CGSizeMake(0, 2);
    view.layer.shadowColor = [UIColor colorNamed:@"FontColor"].CGColor;
    view.layer.shadowOpacity = 0.5;
    view.layer.cornerRadius = 4;
}

@end
