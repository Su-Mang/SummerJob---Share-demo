//
//  dabaiViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "dabaiViewController.h"
#import "homeTableViewCell.h"
#import "sahngchuanViewController.h"
#import "ShareSearch.h"
@interface dabaiViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property NSArray * arry;
@property NSArray * arry1;
@property NSArray * arry2;
@property NSArray * arry3;
@property UITextField *searchbar;
@end

@implementation dabaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"搜索";
    
   
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    UIButton * rightBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    rightBtn.frame = CGRectMake(0, 0, 25,25);
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/shangchuan.png"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBarBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [leftBtn addTarget:self action:@selector(cc) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    
    
    
    _arry = @[@"",@"lcon of  baymax",@"每个人都需要一个大白",@"",@"lcon of  baymax",@"每个人都需要一个大白",@"",@"lcon of  baymax",@"每个人都需要一个大白",@"",@"lcon of  baymax",@"每个人都需要一个大白",@"",@"lcon of  baymax",@"每个人都需要一个大白",@"",@"lcon of  baymax",@"每个人都需要一个大白"];
    _arry1 = @[@"",@"share小白",@"share小王",@"",@"share小白",@"share小王",@"",@"share小白",@"share小王",@"",@"share小白",@"share小王",@"",@"share小白",@"share小王"];
    _arry2= @[@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求",@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求",@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求",@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求"];
    _arry3 = @[@"15分钟前",@"16分钟前",@"17分钟前",@"18分钟前",@"15分钟前",@"16分钟前",@"17分钟前",@"18分钟前",@"",@"share小白",@"share小王"];
    self.navigationController.title = @"搜索";
    UITableView*  tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ];
    //设置代理和数据源
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    _searchbar.delegate = self;
    [_searchbar addTarget:self action:@selector(dabai) forControlEvents:UIControlEventEditingDidEnd];
    tableview.estimatedRowHeight = 0;
    
    tableview.estimatedSectionHeaderHeight = 0;
    
    tableview.estimatedSectionFooterHeight = 0;
    UITextField *t1 = [[UITextField alloc]initWithFrame:CGRectMake(10, 80,self.view.frame.size.width-20,40)];
    t1.backgroundColor = [UIColor whiteColor];
    t1.borderStyle = UITextBorderStyleRoundedRect;
    t1.text = @"大白";
    UIImageView *ima1= [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 20, 20)];
    ima1.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/FE3C6FBC-429F-4EAD-9DC0-2C22D6985FED.png"];
       self.view.backgroundColor = [UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f];
    t1.leftView =ima1;
    t1.leftViewMode = UITextFieldViewModeAlways;
    // Do any additional setup after loading the view.
}
-(void)cc
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)dabai:(UITextField*)textfield
{
    NSString *str = textfield.text;
    NSString *str1 = @"大白";
    if([str1 isEqualToString:str])
    {
        dabaiViewController *dabai = [[dabaiViewController alloc]init];
        
        [self.navigationController
         pushViewController:dabai animated:NO];
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
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
    
}
//设置行高

-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    
    if (indexPath.section ==0) {
        return 40;
    }
    else{
        return 135;
    }
    
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
////设置尾视图
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    UIView*view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 60)];
//    view.backgroundColor = [UIColor redColor];
//    return view;
//}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
   
        return 1;
    
}
//对tableview中的行进行设置
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    if(indexPath.section == 0)
    {       UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
      _searchbar= [[UITextField alloc]initWithFrame:CGRectMake(10, 0,self.view.frame.size.width-20, 40)];
       _searchbar.backgroundColor = [UIColor whiteColor];
        _searchbar.borderStyle = UITextBorderStyleRoundedRect;
       
       _searchbar.placeholder = @"搜索 用户名 作品分享 文章";
        UIImageView *ima1= [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 20, 20)];
        ima1.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/FE3C6FBC-429F-4EAD-9DC0-2C22D6985FED.png"];
       _searchbar.leftView =ima1;
        _searchbar.leftViewMode = UITextFieldViewModeAlways;
       _searchbar.returnKeyType = UIReturnKeySearch;
     
        [cell.contentView addSubview:_searchbar];
        [cell setBackgroundColor:[UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f]];
        return cell;
    }
    else{
        UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
        UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
        UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
        homeTableViewCell  *cell1 = [[homeTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"123"];
        if(cell1 == nil)
        {
            cell1 =[[homeTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"123"];
        }
        NSString *str =[ NSString stringWithFormat:@"%d.png",indexPath.section+1 ];
        UIImage *image = [UIImage imageNamed:str];
        
        cell1.pic.image = image;
        cell1.detaillable.text = _arry[indexPath.section];
        cell1.titlelable.text =_arry2[indexPath.section];
        cell1.plable.text = _arry3[indexPath.section];
        cell1.writerlable.text = _arry1[indexPath.section];
        [cell1.bt1 setImage:image1 forState:UIControlStateNormal];
        [cell1.bt2 setImage:image2 forState:UIControlStateNormal];
        [cell1.bt3 setImage:image3 forState:UIControlStateNormal];
        
        return cell1;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return 0.01;
    } else {
        return 10;
    }
}

-(void)rightBarBtnClicked1
{
    ShareSearch * sharesearch = [[ShareSearch alloc]init];
    
    [self.navigationController
     pushViewController:sharesearch animated:NO];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_searchbar resignFirstResponder];
}
-(void)dabai
{
    NSLog(@"123");
}
-(void)rightBarBtnClicked
{
    sahngchuanViewController *shangchuan  = [[sahngchuanViewController alloc]init];
    
   [ self.navigationController
pushViewController:shangchuan animated:NO];
    
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
