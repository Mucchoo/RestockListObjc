//
//  ExpendableTableViewController.h
//  RestockListObjc
//
//  Created by Musa Yazuju on 2022/12/04.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpendableTableViewController : UITableViewController

@property (nonatomic) NSMutableArray * expendables;

- (void) catchDataWith: (int)selectedCell;
- (void) updateTableView;

- (IBAction)addAction:(UIBarButtonItem *)sender;
- (IBAction)settingAction:(UIBarButtonItem *)sender;

@end

NS_ASSUME_NONNULL_END
