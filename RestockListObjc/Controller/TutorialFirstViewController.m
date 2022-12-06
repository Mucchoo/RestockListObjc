//
//  TutorialFirstViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 12/6/22.
//

#import "TutorialFirstViewController.h"
#import "UIView+Extension.h"

@interface TutorialFirstViewController ()

@end

@implementation TutorialFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _cardView.layer.cornerRadius = 20;
    _circleView.layer.cornerRadius = 400;
    [_cardView setshadow];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    backgroundView.backgroundColor = ThemeModel.color
//    circleView.backgroundColor = ThemeModel.color
}

@end
