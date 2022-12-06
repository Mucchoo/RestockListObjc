//
//  UIView+Extension.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/6/22.
//

#import "UIView+Extension.h"

@implementation UIView (Extensions)

-(void) setShadow {
    self.layer.shadowOffset = CGSizeMake(0, 2);
    self.layer.shadowColor = [UIColor colorNamed:@"FontColor"].CGColor;
    self.layer.shadowOpacity = 0.5;
    self.layer.cornerRadius = 4;
}

@end
