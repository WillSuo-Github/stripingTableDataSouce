//
//  ArrayDataSource.m
//  stripingTableDataSouce
//
//  Created by ws on 16/2/26.
//  Copyright © 2016年 ws. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property (nonatomic, strong) NSArray *souceArr;

@property (nonatomic, copy) NSString *cellIdentifier;

@property (nonatomic, assign) UITableViewCellStyle tableViewStyle;

@property (nonatomic, strong) void (^configureCellBlock)(UITableViewCell *, NSString *, NSIndexPath *);

@end

@implementation ArrayDataSource


- (instancetype)initWithItems:(NSArray *)souceArr cellIdentifier:(NSString *)cellIdentifier tableViewStyle:(UITableViewCellStyle)tableViewStyle configureCellBlock:(void (^)(UITableViewCell *, NSString *, NSIndexPath *))configureCellBlock{
    
    if (self = [super init]) {
        self.souceArr = souceArr;
        self.cellIdentifier = cellIdentifier;
        self.tableViewStyle = tableViewStyle;
        self.configureCellBlock = configureCellBlock;
    }
    
    return self;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.souceArr.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:self.tableViewStyle reuseIdentifier:self.cellIdentifier];
    }
    NSString *cellItem = self.souceArr[indexPath.row];
    self.configureCellBlock(cell, cellItem, indexPath);
    return cell;
}

@end
