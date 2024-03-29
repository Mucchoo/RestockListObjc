//
//  TutorialFirstViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/6/22.
//

#import "TutorialFirstViewController.h"

@interface TutorialFirstViewController ()

@end

@implementation TutorialFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"TutorialViewController viewDidLoad");
    
    _cardView.layer.cornerRadius = 20;
    _circleView.layer.cornerRadius = 400;
    
    ThemeModel *theme = [[ThemeModel alloc] init];
    [theme setshadowWith:_cardView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    ThemeModel *theme = [[ThemeModel alloc] init];
    _backgroundView.backgroundColor = theme.color;
    _circleView.backgroundColor = theme.color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
