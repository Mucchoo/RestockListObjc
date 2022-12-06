//
//  TutorialPageViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/4/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TutorialPageViewController : UIPageViewController

@property (nonatomic) NSMutableArray *controllers;
@property (nonatomic) UIPageControl *pageControl;
@property (nonatomic) UILabel *usageLabel;
@property (nonatomic) int currentIndex;

@end

NS_ASSUME_NONNULL_END
