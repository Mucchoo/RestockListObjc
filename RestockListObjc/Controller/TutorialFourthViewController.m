//
//  TutorialFourthViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/8/22.
//

#import "TutorialFourthViewController.h"

@interface TutorialFourthViewController ()

@end

@implementation TutorialFourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _cardView.layer.cornerRadius = 20;
    _circleView.layer.cornerRadius = 400;
    _startButton.layer.cornerRadius = 20;
    
    ThemeModel *theme = [[ThemeModel alloc] init];
    [theme setshadowWith:_cardView];
    [theme setshadowWith:_startButton];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    ThemeModel *theme = [[ThemeModel alloc] init];
    _listImageView.tintColor = theme.color;
    _backgroundView.backgroundColor = theme.color;
    _circleView.backgroundColor = theme.color;
    _startButton.backgroundColor = theme.color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)startAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
