//
//  jiuTableViewCell.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/2.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "jiuTableViewCell.h"

@implementation jiuTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self  = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        self.ima1 =[[UIImageView alloc]init];
        [self.contentView addSubview:_ima1];
        self.ima2 =[[UIImageView alloc]init];
        [self.contentView addSubview:_ima2];
        self.ima3 =[[UIImageView alloc]init];
        [self.contentView addSubview:_ima3];
        self.bt1 = [[UIButton alloc]init];
        [self.contentView addSubview:_bt1];
        self.bt2 = [[UIButton alloc]init];
        [self.contentView addSubview:_bt2];
        self.bt3 = [[UIButton alloc]init];
        [self.contentView addSubview:_bt3];
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _ima1.frame = CGRectMake(0, 0, 125, 125) ;
     _ima2.frame =CGRectMake(125, 0, 125, 125) ;
    _ima3.frame = CGRectMake(250, 0, 125, 125) ;
    _bt1.frame = CGRectMake(0, 0, 125, 125) ;
    _bt2.frame =CGRectMake(125, 0, 125, 125) ;
    _bt3.frame = CGRectMake(250, 0, 125, 125);
    
}
- (void)awakeFromNib
{
    
}
@end
