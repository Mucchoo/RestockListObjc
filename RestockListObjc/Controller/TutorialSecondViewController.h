//
//  TutorialSecondViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import <UIKit/UIKit.h>
#import "ThemeModel.h"
#import "UIView+Extension.h"

NS_ASSUME_NONNULL_BEGIN

@interface TutorialSecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *cardView;
@property (weak, nonatomic) IBOutlet UIView *circleView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *itemImages;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;

@end

NS_ASSUME_NONNULL_END
