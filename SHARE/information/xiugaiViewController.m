//
//  xiugaiViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "xiugaiViewController.h"

@interface xiugaiViewController ()
@property UITextField *lab1;
@property UITextField *lab2;
@property UITableView *tableview;
@end

@implementation xiugaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
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
    return 50;
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
   if(indexPath.row==0)
   {
       _lab1 = [[UILabel alloc]initWithFrame:CGRectMake(45, 20, 50, 25)];
       _lab2 = [[UILabel alloc]initWithFrame:CGRectMake(130, 20, 190, 25)];
       _lab1.font = [UIFont systemFontOfSize:13];
       _lab1.text =@"旧密码";
       _lab2.text =@"6-20英文或数字结合";
         _lab1.font = [UIFont systemFontOfSize:14];
       [cell.contentView addSubview:_lab2];
         [cell.contentView addSubview:_lab1];
       
   }
   else if(indexPath.row ==1)
   {
       _lab1 = [[UITextField alloc]initWithFrame:CGRectMake(45, 20, 50, 25)];
       _lab2 = [[UITextField alloc]initWithFrame:CGRectMake(130, 20, 190, 25)];
       _lab1.text =@"新密码";
       _lab2.text =@"6-20英文或数字结合";
         _lab1.font = [UIFont systemFontOfSize:14];
         _lab2.font = [UIFont systemFontOfSize:14];
       [cell.contentView addSubview:_lab2];
       [cell.contentView addSubview:_lab1];
       
   }
    else
    {
         _lab1 = [[UITextField alloc]initWithFrame:CGRectMake(45, 20, 100, 25)];
        _lab2 = [[UITextField alloc]initWithFrame:CGRectMake(130, 20, 190, 25)];
        _lab1.text =@"确认密码";
        _lab2.text =@"  请再次确认密码";
        _lab1.font = [UIFont systemFontOfSize:14];
        _lab2.font = [UIFont systemFontOfSize:14];
      
                [cell.contentView addSubview:_lab2];
        [cell.contentView addSubview:_lab1];
        
    }
        return cell;
}

@end
