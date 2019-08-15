//
//  ShareActivity.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ShareActivity.h"

@interface ShareActivity ()
@property NSArray *arry;
@property NSArray *arry1;
@property UITableView*  tableview ;
@end

@implementation ShareActivity

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    UIImage *image1 = [[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.title = @"活动";
    UIBarButtonItem * next1 = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStyleDone target:self action:@selector(pressleft)];
  
    self.navigationItem.leftBarButtonItem = next1;
    _arry= @[@"下厨也要美美的，从一条围裙开始-六月鲜围裙创意设计大赛",@"MIUI主题市场让你的创意改变世界！",@"千万花粉为你而来",@"12314"];
    
    _arry1= @[@"q1",@"q2",@"q3",@"q4"];
    
    //创建一个tableView
    /*
     UITableViewStylePlain,          // regular table view
     UITableViewStyleGrouped         // preferences style table view
     };
     */
 _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ];
    //设置代理和数据源
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];
    
    _tableview.estimatedRowHeight = 0;
    
    _tableview.estimatedSectionHeaderHeight = 0;
    
    _tableview.estimatedSectionFooterHeight = 0;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(void)pressleft
{
    NSLog(@"返回");
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
    
}
//设置行高

-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    
    return 175;
    
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}





- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{

        return nil;

}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{

        return nil;

}
//设置尾视图
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    UIView*view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 60)];
//    view.backgroundColor = [UIColor redColor];
//    return view;
//}


//对tableview中的行进行设置
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    _imageview = [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 360, 150)];
    //  _imageview.backgroundColor = [UIColor redColor];
    _lable = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 360, 25)];
    // _lable.backgroundColor = [UIColor blueColor];
    _lable.text = _arry[indexPath.section];
    NSString *str =[ NSString stringWithFormat:@"11%ld.png",indexPath.section+2 ];
   _lable.font = [UIFont fontWithName:@"Helvetica" size:10.f];
    UIImage *image = [UIImage imageNamed:str];
    _imageview.image  = image;
    [cell.contentView addSubview:_lable];
    [cell.contentView addSubview:_imageview];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
    
}

////获取尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
    
}


@end
