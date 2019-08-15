//
//  wdxxViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "wdxxViewController.h"
#import "xinguanzhudeViewController.h"
#import "sixinViewController.h"
#import "ShareInformation.h"
@interface wdxxViewController ()<UITableViewDataSource,UITableViewDelegate>
@property NSArray *ns;
@property NSArray *ns1;
@end

@implementation wdxxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    UILabel *la1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 10, 100, 25)];
  //  la1.text =@"我的信息";
    la1.textColor = [UIColor whiteColor];
    la1.font = [UIFont systemFontOfSize:18];
    // leftBtn.titleLabel.text =@"我的上传";
    //leftBtn.titleLabel.textColor = [UIColor whiteColor];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    [self.navigationController.navigationBar addSubview:la1];
    
    [leftBtn addTarget:self action:@selector(rightBarBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    UIImage *image1 = [[UIImage imageNamed:@"7E55686E-AF26-432C-8EB7-7D635465BC66.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.title = @"";
   _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];
    _ns = @[@"评论",@"推荐我的",@"新关注的",@"私信",@"活动通知"];
    _ns1 = @[@"7",@"9",@"5",@"4",@"1"];
    
    //_tableview.estimatedRowHeight = 0;
    
    _tableview.estimatedSectionHeaderHeight = 0;
    
    _tableview.estimatedSectionFooterHeight = 0;
}
-(void)rightBarBtnClicked
{
    ShareInformation*wsc = [[ShareInformation alloc]init];
    
    [self.navigationController pushViewController:wsc animated:NO];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //if(section == 0) {
        return 0.01;
    //} else {
    //    return 1;
   // }
    
}

////获取尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
   // if(section==0)
   // {
        return 0.01;
   // }
   // else{
   //     return 100;
    //}
    
}
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//
//    return nil;
//
//}
//- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
//{
//
//    return nil;
//
//}
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    
    return 50;
    
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    _lable = [[UILabel alloc]initWithFrame:CGRectMake(40, 20, 80, 30)];
    _bt1 = [[UIButton alloc]initWithFrame:CGRectMake(280, 20, 60, 40)];
    _lable.text = _ns[indexPath.section];
    _lable.font = [UIFont systemFontOfSize:15];
    [_bt1 setTitle:_ns1[indexPath.section] forState:UIControlStateNormal];
  
    _bt1.titleLabel.font = [UIFont systemFontOfSize:10];
 
    [_bt1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/9776FD8F-557B-4F45-9D0E-6D7A0E3672AB.png"] forState:UIControlStateNormal];
    [cell.contentView addSubview:_lable];
    [cell.contentView addSubview:_bt1];
     _bt1.titleLabel.textColor =  [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 2)
    {
        xinguanzhudeViewController *wsc = [[xinguanzhudeViewController alloc]init];
        
        wsc.hidesBottomBarWhenPushed = YES;
        
        [self.navigationController pushViewController:wsc animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
    else  if(indexPath.section == 3)
    {
       sixinViewController *wdx =[[sixinViewController alloc]init];
        wdx.hidesBottomBarWhenPushed = YES;
        
        [self.navigationController pushViewController:wdx animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
}
 
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
