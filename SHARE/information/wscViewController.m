//
//  wscViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/1.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "wscViewController.h"
#import"homeTableViewCell.h"
#import"ShareInformation.h"
@interface wscViewController ()<UITableViewDelegate,UITableViewDataSource>
@property UISegmentedControl *segmentedControl;
@property NSArray *arry;
@property NSArray *arry1;
@property NSArray *arry2;
@property NSArray *arry3;
@property UITableView*  tableview ;
@end

@implementation wscViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    UILabel *la1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 10, 100, 25)];
    la1.textColor = [UIColor whiteColor];
    la1.font = [UIFont systemFontOfSize:18];
   // leftBtn.titleLabel.text =@"我的上传";
    //leftBtn.titleLabel.textColor = [UIColor whiteColor];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
   
    [leftBtn addTarget:self action:@selector(rightBarBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    self.view.backgroundColor= [UIColor whiteColor];
    NSArray *array = @[@"上传时间", @"推荐最多", @"分享最多"];
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:array];
    _segmentedControl.frame = CGRectMake(0, 80, self.view.frame.size.width, 40);
    _segmentedControl.selectedSegmentIndex = 0;
    _segmentedControl.tintColor = [UIColor whiteColor];
    _segmentedControl.momentary = NO;
    _segmentedControl.backgroundColor = [UIColor whiteColor];
    _segmentedControl.tintColor = [UIColor blackColor];
    [self.view addSubview:_segmentedControl];
    _tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ];
    //设置代理和数据源
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];
    
   // _tableview.estimatedRowHeight = 0;
    
    _tableview.estimatedSectionHeaderHeight = 0;
    
    _tableview.estimatedSectionFooterHeight = 0;
}
-(void)rightBarBtnClicked
{
    ShareInformation*wsc = [[ShareInformation alloc]init];
    

    
    [self.navigationController pushViewController:wsc animated:NO];
}
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    
    return 135;
    
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
    
  homeTableViewCell*cell1 = [[homeTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
    UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
    UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
    if(cell1 == nil)
    {
        cell1 =[[homeTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"123"];
    }
    NSString *str =[ NSString stringWithFormat:@"%d.png",indexPath.section+1 ];
    UIImage *image = [UIImage imageNamed:str];
    _arry = @[@"匆匆那年",@"关于设计的五件事",@"用户设计PK战",@"字体故事"];
      _arry1 = @[@"share小白",@"share小白",@"share小白",@"share小白"];
      _arry2 = @[@"原创—摄影-练习习作",@"关于设计的五件事",@"用户设计PK战",@"字体故事"];
      _arry3= @[@"10分钟前",@"11分钟前",@"12分钟前",@"13分钟前"];
    cell1.pic.image = image;
    cell1.detaillable.text = _arry[indexPath.section];
    cell1.titlelable.text =_arry2[indexPath.section];
    cell1.plable.text = _arry3[indexPath.section];
    cell1.writerlable.text = _arry1[indexPath.section];
    [cell1.bt1 setImage:image1 forState:UIControlStateNormal];
    [cell1.bt2 setImage:image2 forState:UIControlStateNormal];
    [cell1.bt3 setImage:image3 forState:UIControlStateNormal];
    [cell1.bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
    return cell1;
  
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return 0.001;
    } else {
        return 1;
    }
    
}

////获取尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if(section==0)
    {
        return 0.01;
    }
    else{
        return 0.05;
    }
    
}
-(void)praise:(UIButton*)b1
{
    if (b1.selected==false) {
        NSString *str = [NSString stringWithFormat:@"%@",b1.titleLabel.text];
        int a = [str intValue];
        a=a-1;
        NSLog(@"%d",a);
        NSString *str2 = [NSString stringWithFormat:@"%d",a ];
        [b1 setTitle:str2 forState:UIControlStateNormal];
        b1.selected =  !b1.selected;
        [b1 setBackgroundColor:[UIColor clearColor]];
    }
    else{
        [UIButton animateWithDuration:1.25 animations:^{
            b1.transform = CGAffineTransformMakeScale(1.8, 1.8);
        }completion:^(BOOL finished) {
            [UIButton animateWithDuration:1.25 animations:^{
                b1.transform = CGAffineTransformMakeScale(0.5, 0.5);
            }completion:^(BOOL finished) {
                [UIButton animateWithDuration:1.25 animations:^{
                    b1.transform = CGAffineTransformMakeScale(1.0, 1.0);
                }completion:^(BOOL finished) {
                    NSString *str = [NSString stringWithFormat:@"%@",b1.titleLabel.text];
                    int a = [str intValue];
                    a=a+1;
                    NSLog(@"%d",a);
                    NSString *str2 = [NSString stringWithFormat:@"%d",a ];
                    [b1 setTitle:str2 forState:UIControlStateNormal];
                    [b1 setBackgroundColor: [UIColor redColor]];
                    b1.selected = !b1.selected;
                }];
            }];
        }];
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
