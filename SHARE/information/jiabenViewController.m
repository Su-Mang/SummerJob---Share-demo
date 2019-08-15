//
//  jiabenViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "jiabenViewController.h"
@interface jiabenViewController ()
@property UILabel *la1;
@property UIImageView *imag1;
@property UILabel *lab1;
@property UILabel *lab2;
@property UILabel *lab3;
@property UILabel *lab4;
@property UIButton *bt1;
@property UIButton *bt2;
@property UITableView *tableview;
@property int a;
@end

@implementation jiabenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    _lab1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 15, 40, 18)];
    
    _lab1.text = @"性别";
    _bt1 = [[UIButton alloc]initWithFrame:CGRectMake(105,15, 60, 25)];
    [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/8BAA09D3-3FA4-4506-A024-58DCF30E15E1.png"] forState:UIControlStateNormal];
    [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2D8CFACB-14F7-405C-952D-247EE273FFF4.png"] forState:UIControlStateReserved];
    [_bt1 setTitle:@"男" forState:UIControlStateNormal];
    _bt2 = [[UIButton alloc]initWithFrame:CGRectMake(170, 15, 60, 25)];
    [_bt2 setTitle:@"女" forState:UIControlStateNormal];
    _bt1.titleLabel.textColor = [UIColor blackColor];
    [_bt1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [_bt2 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2D8CFACB-14F7-405C-952D-247EE273FFF4.png"] forState:UIControlStateSelected];
        _a=1;
   [_bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
       [_bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    // Do any additional setup after loading the view.
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 0.01;
    
    
}

////获取尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    
    return 0.01;
    
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    return nil;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    
    return nil;
    
}
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    if(indexPath.section==0&&indexPath.row==0)
    return 100;
    else
    return 50;
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    if(indexPath.section==0&&indexPath.row ==0)
    {   _imag1 = [[UIImageView alloc]initWithFrame:CGRectMake(110, 15, 70, 70)];
        _la1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 35, 35, 20)];
        _la1.text = @"头像";
        _la1.font = [UIFont systemFontOfSize:12];
        _imag1.image = [UIImage imageNamed:@"sixin_img1.png"];
        [cell.contentView addSubview:_la1];
        [cell.contentView addSubview:_imag1];
    }
    if(indexPath.section==0&&indexPath.row == 1)
    {
        _lab1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 15, 40, 18)];
        _lab2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 15, 300, 18)];
        _lab1.text = @"昵称";
        _lab2.text = @"share小白";
        [cell.contentView  addSubview:_lab1];
        [cell.contentView addSubview:_lab2];
    }
    if(indexPath.section==0&&indexPath.row == 2)
    {
        _lab1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 15, 40, 18)];
        _lab2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 15, 300, 18)];
        _lab1.text = @"签名";
        _lab2.text = @"开心就笑不开心就过会在笑";
        [cell.contentView  addSubview:_lab1];
        [cell.contentView addSubview:_lab2];
    }
    if(indexPath.section==0&&indexPath.row == 3)
    {
       
        [cell.contentView  addSubview:_lab1];
        [cell.contentView addSubview:_bt1];
        [cell.contentView addSubview:_bt2];
    }
    if(indexPath.section==0&&indexPath.row == 4)
    {
        _lab1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 15, 40, 18)];
        _lab2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 15, 300, 18)];
        _lab1.text = @"签名";
        _lab2.text = @"开心就笑不开心就过会在笑";
        [cell.contentView  addSubview:_lab1];
        [cell.contentView addSubview:_lab2];
    }
    return cell;
}
-(void)click
{
    if(_a==1)
    {
        [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/8BAA09D3-3FA4-4506-A024-58DCF30E15E1.png"] forState:UIControlStateNormal];
     
    [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2D8CFACB-14F7-405C-952D-247EE273FFF4.png"] forState:UIControlStateNormal];
        _a=_a-1;
    NSLog(@"123");
    }
    else{
        [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/8BAA09D3-3FA4-4506-A024-58DCF30E15E1.png"] forState:UIControlStateNormal];
        
        [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2D8CFACB-14F7-405C-952D-247EE273FFF4.png"] forState:UIControlStateNormal];
        NSLog(@"123");
        _a=_a+1;
    }
}

@end
