//
//  sahngchuanViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "sahngchuanViewController.h"
#import "ShareSearch.h"
#import "zpqViewController.h"
@interface sahngchuanViewController ()<UITableViewDelegate,UITableViewDataSource,CzDelegate>
@property UITableView *tableview;
@property UITableView *tableview1;
@property NSString *str;
@property int a;
@property int b;
@property NSInteger e;
@property NSInteger f;
@property NSMutableArray *arr1;
@property  UIButton* imag1;
@end

@implementation sahngchuanViewController

- (void)viewDidLoad {
    _arr1 = [[NSMutableArray alloc]initWithObjects:@"原创作品",@"设计师资料",@"设计师观点",@"设计教程",nil];
    _c = 0;
   _a=0;
    _b=0;
    [super viewDidLoad];
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
     self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    [leftBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
       self.view.backgroundColor = [UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f];
//    _tableview = [[UITableView alloc]initWithFrame:CGRectMake(250, 140, 110, 90)style:UITableViewStyleGrouped];
//   _tableview.delegate =self;
//   _tableview.dataSource=self;
//    [self.view addSubview:_tableview];
   _imag1 = [[UIButton  alloc]initWithFrame:CGRectMake(10, 75, 205, 110)];
    UIImageView * imagex =[[UIImageView alloc]initWithFrame:CGRectMake(250, 145, 25, 85)];
    UIImageView * imagex1 =[[UIImageView alloc]initWithFrame:CGRectMake(270, 100, 80, 25)];
    imagex1.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/dizhi的副本.png"];
   
    [self.view addSubview:imagex1];
   _imag1.backgroundColor = [UIColor grayColor];
    [_imag1 setTitle:@"选择图片" forState:UIControlStateNormal];
 
    [self.view addSubview:_imag1];
    [_imag1 addTarget:self action:@selector(zpq) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *imag2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 200, 375, 3)];
    imag2.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/5EA902F4EBDAF91D96069CB8DC0C058B.png"];
    [self.view addSubview:imag2];
    UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(10, 215, 80, 20)];
    [bt1 setTitle:@"平面设计" forState:UIControlStateNormal];
    [bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    [self.view addSubview:bt1];
    UIButton *bt5 = [[UIButton alloc]initWithFrame:CGRectMake(10, 260, 80, 20)];
    [bt5 setTitle:@"虚拟设计" forState:UIControlStateNormal];
    [bt5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt5 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt5];
    UIButton *bt6 = [[UIButton alloc]initWithFrame:CGRectMake(100, 260, 80, 20)];
    [bt6 setTitle:@"影视" forState:UIControlStateNormal];
    [bt6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt6 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt6];
    UIButton *bt7 = [[UIButton alloc]initWithFrame:CGRectMake(190, 260, 80, 20)];
    [bt7 setTitle:@"摄影" forState:UIControlStateNormal];
    [bt7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt7 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt7];
    UIButton *bt8 = [[UIButton alloc]initWithFrame:CGRectMake(280, 260, 80, 20)];
    [bt8 setTitle:@"其他" forState:UIControlStateNormal];
    [bt8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt8 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt8];
    UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(100, 215, 80, 20)];
    [bt2 setTitle:@"平面设计" forState:UIControlStateNormal];
    [bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt2 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt2];
    UIButton *bt3 = [[UIButton alloc]initWithFrame:CGRectMake(190, 215, 80, 20)];
    [bt3 setTitle:@"网页设计" forState:UIControlStateNormal];
    [bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt3 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [self.view addSubview:bt3];
    UIButton *bt4 = [[UIButton alloc]initWithFrame:CGRectMake(280, 215, 80, 20)];
    [bt4 setTitle:@"虚拟设计" forState:UIControlStateNormal];
    [bt4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt4 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
     UILabel *l11 = [[UILabel alloc]initWithFrame:CGRectMake(250,  140, 80, 25)];
    [self.view addSubview:bt4];
    [bt1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt3 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt4 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt5 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt6 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt7 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt8 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt4 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt5 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt6 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt7 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
      [bt8 setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    UITextField *t1 = [[UITextField alloc]initWithFrame:CGRectMake(0, 305, 375, 30)];
    t1.backgroundColor = [UIColor whiteColor];
    t1.placeholder = @"  作品名称";
    [self.view addSubview:t1];
    UITextView *t2 = [[UITextView alloc]initWithFrame:CGRectMake(0, 340, 375, 90)];
    t2.backgroundColor = [UIColor whiteColor];
    
    t2.text =@"请添作作品说明/文章内容";
    [self.view addSubview:t2];
    UIButton *btt1 = [[UIButton alloc]initWithFrame:CGRectMake(10, 445, 355, 50)];
    [btt1 setTitle:@"发布" forState:UIControlStateNormal];
    [btt1 setTitle:@"已发布" forState:UIControlStateSelected];
    [btt1 setTintColor:[UIColor whiteColor]];
    btt1.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    [btt1 addTarget:self action:@selector(cc:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btt1];
        _tableview = [[UITableView alloc]initWithFrame:CGRectMake(250, 140, 110, 90)style:UITableViewStyleGrouped];
       _tableview.delegate =self;
       _tableview.dataSource=self;
    [self.view addSubview:l11];
        [self.view addSubview:_tableview];
    UIButton *bbb1 =[[UIButton alloc]initWithFrame:CGRectMake(335, 140, 25, 25)];
    [self.view addSubview:bbb1];
    [bbb1 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/cai的副本.png"] forState:UIControlStateNormal];
    [bbb1 addTarget:self action:@selector(ccc) forControlEvents:UIControlEventTouchUpInside];
   _tableview.backgroundColor = [UIColor clearColor];
     [self.view addSubview:imagex];
     bt2.backgroundColor = [UIColor whiteColor];
     bt3.backgroundColor = [UIColor whiteColor]; bt4.backgroundColor = [UIColor whiteColor]; bt5.backgroundColor = [UIColor whiteColor]; bt1.backgroundColor = [UIColor whiteColor]; bt6.backgroundColor = [UIColor whiteColor]; bt7.backgroundColor = [UIColor whiteColor];
     bt8.backgroundColor = [UIColor whiteColor];
    
  
}
-(void)zpq
{
    zpqViewController *qqq = [[zpqViewController alloc]init];
//    [qqq returnText:^(NSString *showtext)];
//    {
//    _str = showtext;
    qqq.delegate = self;

    [self.navigationController pushViewController:qqq animated:YES];
}
- (void)pu:(NSInteger)a and:(NSInteger)b
{   NSInteger e;
    e = a;
    _f = b;
    NSLog(@"%d",a);
    NSString *s = [NSString stringWithFormat:@"%d.jpg",e ];
    
    [_imag1 setImage:[UIImage imageNamed:s] forState:UIControlStateNormal];
    NSLog(@"%@",s);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section==0)
    {
        _b = 0;
    }
    if(indexPath.section==1)
    {
        _b = 1;
    }
    if(indexPath.section==2)
    {
        _b = 2;
    }
    if(indexPath.section==3)
    {
        _b = 3;
    }
    NSLog(@"%d",_b);
    [_arr1 exchangeObjectAtIndex:0 withObjectAtIndex:_b];
    [_tableview reloadData];


}

-(void)ccc
{   if(_a==0)
    {
        _a = 1;
        NSLog(@"%d",_a);

        [_tableview reloadData];
    }
    else
    {
        _a = 0;

        [_tableview reloadData];
    }
}
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    
    return 25;
    
}
//设置分区的行数
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if(_a==1)
    return 4;
    else
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    if(_a==0)
    {
        cell.backgroundColor = [UIColor whiteColor];
        
    }
    else{
        cell.backgroundColor =  [UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f];
    }
    UILabel *la = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 25)];
   // [_arr1 exchangeObjectAtIndex:0 withObjectAtIndex:_b];
    if(indexPath.section==0)
    {
        la.text = _arr1[indexPath.section];
        la.font = [UIFont systemFontOfSize:10];
        [cell.contentView addSubview:la];
    }
    else{
    la.text = _arr1[indexPath.section];
    la.font = [UIFont systemFontOfSize:10];
    [cell.contentView addSubview:la];
      
        }
    
    
    return cell;
}
-(void)cc :(UIButton *)bt1
{
    bt1.selected = !bt1.selected;
    if(bt1.selected)
    {   [bt1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        bt1.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
       
       
    
    }
    else
    {
       [bt1 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    }
    
}
-(void)click:(UIButton*) bt1
{
    bt1.selected = !bt1.selected;
    if(bt1.selected)
    {
        bt1.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    }
    else
    {
        bt1.backgroundColor = [UIColor whiteColor];
    }
    
}
-(void)click
{
    ShareSearch*sha = [[ShareSearch alloc]init];
    [self.navigationController pushViewController:sha animated:NO];
}

@end
