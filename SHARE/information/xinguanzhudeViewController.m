//
//  xinguanzhudeViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "xinguanzhudeViewController.h"

@interface xinguanzhudeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property UIImageView *imag1;
@property UILabel *lable;
@property UIButton *bt1;
@property UITableView *tableview;
@property NSArray *arr1;
@property NSArray *arry2;
@end

@implementation xinguanzhudeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _arr1 = @[@"share小格",@"share小兰",@"share小明",@"share小雪",@"share萌萌",@"share66"];
    _arry2 = @[@"已关注",@"已关注",@"已关注",@"已关注",@"关注",@"关注"];
    _tableview  = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];
    
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
    
    return 80;
    
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
    _imag1 = [[UIImageView alloc]initWithFrame:CGRectMake(40, 20, 55, 50)];
    _lable = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 30)];
    _bt1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 40, 80, 30)];
    
    NSString *str =[ NSString stringWithFormat:@"sixin_img%d.png",indexPath.section+1];
    _imag1.image = [UIImage imageNamed:str];
    _lable.text = _arr1[indexPath.section];
    _bt1.titleLabel.text = _arry2[indexPath.section];
    [cell.contentView addSubview:_lable];
    [cell.contentView addSubview:_imag1];
    [cell.contentView addSubview:_bt1];
    return cell;
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
