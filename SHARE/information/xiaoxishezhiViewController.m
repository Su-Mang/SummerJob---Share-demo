//
//  xiaoxishezhiViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "xiaoxishezhiViewController.h"
#import "ShareInformation.h"
@interface xiaoxishezhiViewController ()<UITableViewDataSource,UITableViewDelegate>
@property UILabel*lable;
@property UIButton *bt1;
@property UITableView *tableview;
@property NSArray *arr1;
@property int a1;
@property int a2;
@property UIButton *bt2;
@end

@implementation xiaoxishezhiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _arr1 = @[@"接受消息通知",@"通知显示栏",@"声音",@"振动",@"关注更新"];
    _a1=1;
    _a2=0;
    _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
   
    [_bt1 addTarget: self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
   
    [_bt2 addTarget: self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
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
    _lable = [[UILabel alloc]initWithFrame:CGRectMake(40, 15, 120, 20)];
    _lable.text = _arr1[indexPath.row];
    [cell.contentView addSubview:_lable];
    if(indexPath.row ==1||indexPath.row ==4)
    {
        _bt2 = [[UIButton alloc]initWithFrame:CGRectMake(270, 20, 20, 20)];
        [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2556263A-AB65-4A5D-A64E-E93F7A351AA1.png"] forState:UIControlStateNormal];
        
       [cell.contentView addSubview:_bt2];
    }
    else
    {
        _bt1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 20, 20, 20)];
        [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/132DE06B-0B5B-4607-8B24-3F0E60FC622E.png"] forState:UIControlStateNormal];
        
        [cell.contentView addSubview:_bt1];
    }
    return cell;
}
-(void)click1
{
    if(_a1==0)
    {
      
        [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2556263A-AB65-4A5D-A64E-E93F7A351AA1.png"] forState:UIControlStateNormal];
        _a1=_a1+1;
        NSLog(@"123");
    }
    else{
        [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2556263A-AB65-4A5D-A64E-E93F7A351AA1.png"] forState:UIControlStateNormal];
        NSLog(@"123");
        _a1=_a1-1;
    }
}
-(void)click12
{
    if(_a2==0)
    {
        
        [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2556263A-AB65-4A5D-A64E-E93F7A351AA1.png"] forState:UIControlStateNormal];
        _a2=_a2+1;
        NSLog(@"123");
    }
    else{
        [_bt2 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/2556263A-AB65-4A5D-A64E-E93F7A351AA1.png"] forState:UIControlStateNormal];
        NSLog(@"123");
        _a2=_a2-1;
    }
}


@end
