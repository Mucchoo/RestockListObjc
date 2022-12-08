//
//  TutorialFourthViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import <UIKit/UIKit.h>
#import "UIView+Extension.h"
#import "ThemeModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TutorialFourthViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIView *cardView;
@property (weak, nonatomic) IBOutlet UIView *circleView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIImageView *listImageView;

- (IBAction)startAction:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
