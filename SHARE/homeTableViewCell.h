//
//  homeTableViewCell.h
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface homeTableViewCell : UITableViewCell
@property (nonatomic,strong) UIImageView *pic;
@property(nonatomic,weak)UILabel *titlelable;
@property(nonatomic,weak)UILabel *writerlable;
@property(nonatomic,weak)UILabel *detaillable;
@property(nonatomic,weak)UILabel *plable;
@property(nonatomic,weak)UIButton *bt1;
@property(nonatomic,weak)UIButton  *bt2;
@property(nonatomic,weak)UIButton  *bt3;
@end

NS_ASSUME_NONNULL_END
