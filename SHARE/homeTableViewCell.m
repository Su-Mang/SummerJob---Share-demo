//
//  homeTableViewCell.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "homeTableViewCell.h"

@implementation homeTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        
        _pic  = [[UIImageView alloc] init];
        UILabel *titlelable = [[UILabel alloc]initWithFrame:CGRectMake(200 , 15, 180, 20)];
     titlelable.font = [UIFont fontWithName:@"Helvetica" size:18.f];
        //  titlelable.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:titlelable];
        UILabel *detaillable1 = [[UILabel alloc]initWithFrame:CGRectMake(200, 40, 120, 10)];
        detaillable1.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        UILabel *detaillable2 = [[UILabel alloc]initWithFrame:CGRectMake(200, 58, 180, 10)];
        detaillable2.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        UILabel *detaillable3 = [[UILabel alloc]initWithFrame:CGRectMake(200, 72, 180, 10)];
        detaillable3.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(192, 96, 36, 10)];
        //  bt1.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:bt1];
        UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(250, 96, 36, 10)];
        // bt1.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:bt2];
        UIButton *bt3 = [[UIButton alloc]initWithFrame:CGRectMake(300, 96, 36, 10)];
        [bt1 setTitle:@"20" forState:UIControlStateNormal];
        [bt2 setTitle:@"3" forState:UIControlStateNormal];         [bt3 setTitle:@"40" forState:UIControlStateNormal];
        [ bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        bt2.titleLabel.font = [UIFont systemFontOfSize:10.0];
        
        bt3.titleLabel.font = [UIFont systemFontOfSize:10];    bt1.titleLabel.font = [UIFont systemFontOfSize:10];
        // bt1.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:bt3];
        //   detaillable1.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:detaillable1];
        //  detaillable3.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:detaillable3];
        //  detaillable2.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:detaillable2];
        // pic.backgroundColor = [UIColor redColor];
        //_pic = pic;
        [self.contentView addSubview:_pic];
        _bt1 = bt1;
        _bt2 = bt2;
        _bt3 = bt3;
        
        _detaillable = titlelable;
        _writerlable = detaillable1;
        _titlelable =detaillable2;
        _plable = detaillable3;
        
    }
    
    
    return self;
}

- (void)layoutSubviews{
    _pic.frame = CGRectMake(10, 0, 170,130);
}
@end
