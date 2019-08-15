//
//  sixinViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "sixinViewController.h"

@interface sixinViewController ()<UITableViewDelegate,UITableViewDataSource>
@property UIImageView *image;
@property UILabel *la1;
@property UILabel *la2;
@property UILabel *la3;
@property NSArray *a1;
@property NSArray *a2;
@property NSArray *a3;
@property UITableView *tableview;
@end

@implementation sixinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _a1 = @[@"share小格",@"share小兰",@"share小明",@"share小雪"];
    _a2 = @[@"你的作品我很喜欢",@"谢谢，已经关注你",@"为你点赞",@"你好可以问问你是怎么拍的吗？"];
    _a3=@[@"11-05 09:45",@"11-05 09:45",@"11-05 09:45",@"11-05 09:45"];
    _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
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
    
    return 80;
    
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    _image = [[UIImageView alloc]initWithFrame:CGRectMake(40, 20, 55, 45)];
    _la1 = [[UILabel alloc]initWithFrame:CGRectMake(110, 50, 200, 20)];
    _la2 = [[UILabel alloc]initWithFrame:CGRectMake(110, 20, 200, 20)];
    _la3 = [[UILabel alloc]initWithFrame:CGRectMake(270, 20, 80, 15)];
    _la1.font = [UIFont systemFontOfSize:13];
     _la2.font = [UIFont systemFontOfSize:13];
     _la3.font = [UIFont systemFontOfSize:9];
    _la1.text = _a2[indexPath.section];
    _la2.text = _a1[indexPath.section];
    _la3.text = _a3[indexPath.section];
    NSString *str =[ NSString stringWithFormat:@"sixin_img%d.png",indexPath.section+1];
    _image.image = [UIImag/Users/sumang/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/Users/792488979/QQ/Temp.db/4DEFE6E7-B3F1-497D-BD8C-88937934FB67.pnge imageNamed:str];
    [cell.contentView addSubview:_la1];
    [cell.contentView addSubview:_la2];   [cell.contentView addSubview:_la3];
       [cell.contentView addSubview:_image];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section ==1) {
        duihuaViewController *dhViewController = [[duihuaViewController alloc]init];
        dhViewController.str = _a2[indexPath.section];
        [self.navigationController pushViewController:dhViewController animated:YES];
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
