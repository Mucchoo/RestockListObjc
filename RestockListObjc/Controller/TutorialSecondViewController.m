//
//  TutorialSecondViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import "TutorialSecondViewController.h"

@interface TutorialSecondViewController ()

@end

@implementation TutorialSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_cardView setshadow];
    _cardView.layer.cornerRadius = 20;
    _circleView.layer.cornerRadius = 400;
    
    ThemeModel *theme = [[ThemeModel alloc] init];
    for (UIImageView *key in _itemImages) {
        [theme setshadowWith:key];
    }
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
