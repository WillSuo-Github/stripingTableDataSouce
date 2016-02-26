//
//  ArrayDataSource.h
//  stripingTableDataSouce
//
//  Created by ws on 16/2/26.
//  Copyright © 2016年 ws. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)souceArr
               cellIdentifier:(NSString *)cellIdentifier
               tableViewStyle:(UITableViewCellStyle)tableViewStyle
           configureCellBlock:(void(^)(UITableViewCell *cell,NSString *items,NSIndexPath *indexPath))configureCellBlock;

@end
