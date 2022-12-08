//
//  TutorialThirdViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import <UIKit/UIKit.h>
#import "UIView+Extension.h"
#import "ThemeModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TutorialThirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *cardView;
@property (weak, nonatomic) IBOutlet UIView *circleView;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;

@end

NS_ASSUME_NONNULL_END
