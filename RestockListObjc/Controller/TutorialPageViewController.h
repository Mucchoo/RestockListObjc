//
//  TutorialPageViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/4/22.
//

#import <UIKit/UIKit.h>
#import "ThemeModel.h"
#import "TutorialFirstViewController.h"
#import "TutorialSecondViewController.h"
#import "TutorialThirdViewController.h"
#import "TutorialFourthViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TutorialPageViewController : UIPageViewController <UIPageViewControllerDataSource>

@property (nonatomic) UIPageControl *pageControl;
@property (nonatomic) UILabel *usageLabel;
@property (nonatomic) int currentIndex;
@property (nonatomic) NSMutableArray *controllers;

@end

NS_ASSUME_NONNULL_END
