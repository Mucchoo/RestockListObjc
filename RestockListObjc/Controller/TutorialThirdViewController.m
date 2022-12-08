//
//  TutorialThirdViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import "TutorialThirdViewController.h"

@interface TutorialThirdViewController ()

@end

@implementation TutorialThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
