//
//  ExpendableTableViewController.m
//  RestockListObjc
//
//  Created by Musa Yazuju on 2022/12/04.
//

#import "ExpendableTableViewController.h"

@interface ExpendableTableViewController ()

@end

@implementation ExpendableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(8, 0, 0, 0);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //    if (![NSUserDefaults.standardUserDefaults boolForKey:@"tutorial"]) {
    NSLog(@"show tutorial");
    [self performSegueWithIdentifier:@"ShowTutorial" sender:nil];
    //        [NSUserDefaults.standardUserDefaults setBool:false forKey:@"tutorial"];
    //    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"ReusableCell"];
    return cell;
}

- (void) catchDataWith: (int)selectedCell {
    NSLog(@"catchData");
}

- (void) updateTableView {
    [self.tableView reloadData];
}

- (IBAction)addAction:(UIBarButtonItem *)sender {
    NSLog(@"addAction");
}

- (IBAction)settingAction:(UIBarButtonItem *)sender {
    NSLog(@"settingAction");
}

@end
