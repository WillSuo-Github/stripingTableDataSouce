//
//  ViewController.m
//  stripingTableDataSouce
//
//  Created by ws on 16/2/26.
//  Copyright © 2016年 ws. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"

static NSString *const kNameCellIdentifier = @"NameCell";

@interface ViewController ()

#pragma mark - Model
@property (strong, nonatomic) NSArray *nameList;

#pragma mark - Data source
@property (strong, nonatomic) ArrayDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self.dataSource;
}

#pragma mark - Lazy initialization
- (NSArray *)nameList
{
    if (!_nameList) {
        _nameList = @[@"Sam", @"Mike", @"John", @"Paul", @"Jason"];
    }
    return _nameList;
}

- (ArrayDataSource *)dataSource
{
    if (!_dataSource) {
//        _dataSource = [[ArrayDataSource alloc] initWithItems:self.nameList
//                                              cellIdentifier:kNameCellIdentifier
//                                              tableViewStyle:UITableViewCellStyleDefault
//                                          configureCellBlock:^(UITableViewCell *cell, NSString *item, NSIndexPath *indexPath) {
//                                              cell.textLabel.text = item;
//                                          }];
        
        
        _dataSource = [[ArrayDataSource alloc] initWithItems:self.nameList cellIdentifier:@"1111" tableViewStyle:UITableViewCellStyleDefault configureCellBlock:^(UITableViewCell *cell, NSString *items, NSIndexPath *indexPath) {
            cell.textLabel.text = items;
        }];
    }
    return _dataSource;
}

@end