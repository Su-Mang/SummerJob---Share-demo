//
//  sixinTableViewCell.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "sixinTableViewCell.h"

@implementation sixinTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        _leftImageView = [[UIImageView alloc]init];
        _rightImageView = [[UIImageView alloc]init];
        _leftTextView = [[UILabel alloc]init];
        _rightTextView = [[UILabel alloc]init];
        _dateLabel = [[UILabel alloc]init];
        [self.contentView addSubview:_dateLabel];
        [self.contentView addSubview:_leftTextView];
         [self.contentView addSubview:_rightTextView];
         [self.contentView addSubview:_leftImageView];
         [self.contentView addSubview:_rightImageView];
        
    }
    return self;
}

@end
