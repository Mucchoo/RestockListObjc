//
//  TutorialPageViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/4/22.
//

#import "TutorialPageViewController.h"

@interface TutorialPageViewController () <UIPageViewControllerDataSource>

@end

@implementation TutorialPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self;
    
    UIViewController *firstPage = [self.storyboard instantiateViewControllerWithIdentifier:@"Tutorial1"];
    UIViewController *secondPage = [self.storyboard instantiateViewControllerWithIdentifier:@"Tutorial2"];
    UIViewController *thirdPage = [self.storyboard instantiateViewControllerWithIdentifier:@"Tutorial3"];
    UIViewController *fourthPage = [self.storyboard instantiateViewControllerWithIdentifier:@"Tutorial4"];
    
    NSMutableArray *controllers = [[NSMutableArray alloc] initWithObjects:firstPage, secondPage, thirdPage, fourthPage, nil];
    
    [self.view addSubview:_usageLabel];
    _usageLabel.layer.cornerRadius = 20;
    _usageLabel.text = @"使い方";
    _usageLabel.font = [UIFont systemFontOfSize:20 weight:UIFontWeightBold];
    _usageLabel.textAlignment = NSTextAlignmentCenter;
    _usageLabel.backgroundColor = UIColor.clearColor;
    _usageLabel.clipsToBounds = true;
    _usageLabel.translatesAutoresizingMaskIntoConstraints = false;
    [_usageLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [_usageLabel.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:20].active = true;
    [_usageLabel.widthAnchor constraintEqualToConstant:UIScreen.mainScreen.bounds.size.width - 80].active = true;
    [_usageLabel.heightAnchor constraintEqualToConstant:40].active = true;
    
    _pageControl = [[UIPageControl alloc] init];
    [self.view addSubview:_pageControl];
    _pageControl.numberOfPages = 4;
    _pageControl.currentPage = 0;
    _pageControl.translatesAutoresizingMaskIntoConstraints = false;
    [_pageControl.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor].active = true;
    [_pageControl.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-70].active = true;
    [_pageControl.widthAnchor constraintEqualToConstant:UIScreen.mainScreen.bounds.size.width - 40].active = true;
    [_pageControl.heightAnchor constraintEqualToConstant:20].active = true;
    [_pageControl setUserInteractionEnabled:false];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    _pageControl.currentPageIndicatorTintColor = [UIColor clearColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    _usageLabel.textColor = ThemeModel.tintColor
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return _controllers.count;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    if (_currentIndex > 1) {
        _currentIndex -= 1;
    }
    return _controllers[_currentIndex];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    if (_currentIndex < _controllers.count) {
        _currentIndex += 1;
    }
    return _controllers[_currentIndex];
}

@end
