//
//  ShareSearch.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ShareSearch.h"
#import "dabaiViewController.h"
#import "sahngchuanViewController.h"
@interface ShareSearch ()<UITextFieldDelegate>
@property UITextField *searchbar;
@end

@implementation ShareSearch

- (void)viewDidLoad {
    
    
    //    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    //        [self.navigationController.navigationBar setTitleTextAttributes:
    //     @{NSFontAttributeName:[UIFont systemFontOfSize:20],
    //       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //
    //    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.title = @"搜索";
    
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    UIButton * rightBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    rightBtn.frame = CGRectMake(0, 0, 25,25);
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/shangchuan.png"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBarBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    
   
    
    
    self.searchbar = [[UITextField alloc]initWithFrame:CGRectMake(10, 80,self.view.frame.size.width-20, 40)];
    self.searchbar.backgroundColor = [UIColor whiteColor];
    self.searchbar.borderStyle = UITextBorderStyleRoundedRect;
    self.searchbar.delegate = self;
    self.searchbar.placeholder = @"搜索 用户名 作品分享 文章";
    UIImageView *ima1= [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 20, 20)];
    ima1.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/FE3C6FBC-429F-4EAD-9DC0-2C22D6985FED.png"];
    self.searchbar.leftView =ima1;
    self.searchbar.leftViewMode = UITextFieldViewModeAlways;
    self.searchbar.returnKeyType = UIReturnKeySearch;
    [   self.searchbar addTarget:self action:@selector(dabai:) forControlEvents:UIControlEventEditingDidEnd];
    [self.view addSubview:self.searchbar];
    UIImageView *v1 = [[UIImageView alloc]initWithFrame:CGRectMake(10,135, 72, 20)];
    v1.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/0DC1B5A8-669D-4D31-9601-6957A4691BD4.png"];
    UIImageView *v2 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 155,355 ,1)];
      v2.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/home_line.png"];
    UIButton*b1 =[[UIButton alloc]initWithFrame:CGRectMake(10, 170, 80, 30)];
  
      UIButton*b2 =[[UIButton alloc]initWithFrame:CGRectMake(100 ,170, 80, 30)];
      UIButton*b3 =[[UIButton alloc]initWithFrame:CGRectMake(190, 170, 80, 30)];
      UIButton*b4 =[[UIButton alloc]initWithFrame:CGRectMake(280, 170, 80, 30)];
      UIButton*b5 =[[UIButton alloc]initWithFrame:CGRectMake(10, 210, 90, 30)];
      UIButton*b6 =[[UIButton alloc]initWithFrame:CGRectMake(110, 210, 75, 30)];
      UIButton*b7 =[[UIButton alloc]initWithFrame:CGRectMake(200, 210, 75, 30)];
        UIButton*b8 =[[UIButton alloc]initWithFrame:CGRectMake(280,  210, 75, 30)];
    [self.view addSubview:v1];
    [self.view addSubview:v2];
   // self.view.backgroundColor = [UIColor grayColor];
    [b1 setTitle:@"平面设计" forState:UIControlStateNormal];
     //[b1 setTitle:@"平面设计" forState:UIControlStateHighlighted];
    [b1 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
    [b2 setTitle:@"网页设计" forState:UIControlStateNormal];
    [b3 setTitle:@"UI/ICON" forState:UIControlStateNormal];
    [b4 setTitle:@"绘画手绘" forState:UIControlStateNormal];
    [b5 setTitle:@"虚拟设计" forState:UIControlStateNormal];
    [b6 setTitle:@"影视" forState:UIControlStateNormal];
    [b7 setTitle:@"摄影" forState:UIControlStateNormal];
    [b8 setTitle:@"其他" forState:UIControlStateNormal];
    [b1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [b8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    b1.backgroundColor = [UIColor whiteColor];
     b2.backgroundColor = [UIColor whiteColor];
     b3.backgroundColor = [UIColor whiteColor];
     b5.backgroundColor = [UIColor whiteColor];
     b6.backgroundColor = [UIColor whiteColor];
     b8.backgroundColor = [UIColor whiteColor];
     b4.backgroundColor = [UIColor whiteColor];
     b7.backgroundColor = [UIColor whiteColor];
   
    [self.view addSubview:b1];
     [self.view addSubview:b2];
     [self.view addSubview:b3];
     [self.view addSubview:b4];
     [self.view addSubview:b5];
     [self.view addSubview:b6];
     [self.view addSubview:b7];
     [self.view addSubview:b8];
    [b1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
         self.view.backgroundColor = [UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f];
    UIImageView *v21 = [[UIImageView alloc]initWithFrame:CGRectMake(10,260, 72, 20)];
    v21.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/D15E0820-964F-4A5B-B629-FA351AE59F58.png"];
    UIImageView *v22 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 280,355 ,1)];
    v22.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/home_line.png"];
    UIButton*b21 =[[UIButton alloc]initWithFrame:CGRectMake(10, 305, 80, 30)];
    
    UIButton*b22 =[[UIButton alloc]initWithFrame:CGRectMake(100 ,305, 80, 30)];
    UIButton*b23 =[[UIButton alloc]initWithFrame:CGRectMake(190, 305, 80, 30)];
    UIButton*b24 =[[UIButton alloc]initWithFrame:CGRectMake(280, 305, 80, 30)];
   
    [self.view addSubview:v21];
    [self.view addSubview:v22];
    // self.view.backgroundColor = [UIColor grayColor];
    [b21 setTitle:@"人气最高" forState:UIControlStateNormal];
    [b22 setTitle:@"收藏最多" forState:UIControlStateNormal];
    [b23 setTitle:@"评论最多" forState:UIControlStateNormal];
    [b24 setTitle:@"绘画手绘" forState:UIControlStateNormal];
   
    [b21 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b22 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b23 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b24 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
   
    b21.backgroundColor = [UIColor whiteColor];
    b24.backgroundColor = [UIColor whiteColor];
    b23.backgroundColor = [UIColor whiteColor];
    b22.backgroundColor =  [UIColor whiteColor];
    [self.view addSubview:b21];
    [self.view addSubview:b22];
    [self.view addSubview:b23];
    [self.view addSubview:b24];
  
    // Do any additional setup after loading the view.
    //    UIImage* image = [UIImage imageNamed:@"2.png"];
    //    UITabBarItem *tab1= [[UITabBarItem alloc]initWithTitle:@"" image:image tag:2];
    UIImageView *v31 = [[UIImageView alloc]initWithFrame:CGRectMake(10,355, 72, 20)];
    v31.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/9E984F8B-A168-4FB5-9B24-FB6F789593FE.png"];
    UIImageView *v32 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 375,355 ,1)];
    v32.image = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/home_line.png"];
    UIButton*b31 =[[UIButton alloc]initWithFrame:CGRectMake(10, 395, 80, 30)];
    
    UIButton*b32 =[[UIButton alloc]initWithFrame:CGRectMake(100 ,395, 80, 30)];
    UIButton*b33 =[[UIButton alloc]initWithFrame:CGRectMake(190, 395, 80, 30)];
    UIButton*b34 =[[UIButton alloc]initWithFrame:CGRectMake(280, 395, 80, 30)];
    
    [self.view addSubview:v31];
    [self.view addSubview:v32];
    // self.view.backgroundColor = [UIColor grayColor];
    [b31 setTitle:@"30分钟前" forState:UIControlStateNormal];
    [b32 setTitle:@"1小时前" forState:UIControlStateNormal];
    [b33 setTitle:@"1月前" forState:UIControlStateNormal];
    [b34 setTitle:@"1年前" forState:UIControlStateNormal];
    
    [b31 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b32 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b34 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [b33 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    b31.backgroundColor = [UIColor whiteColor];
    b34.backgroundColor = [UIColor whiteColor];
    b32.backgroundColor = [UIColor whiteColor];
    b33.backgroundColor =  [UIColor whiteColor];
    [self.view addSubview:b31];
    [self.view addSubview:b32];
    [self.view addSubview:b33];
    [self.view addSubview:b34];
    
      [b2 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b3 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b4 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b5 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b6 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b7 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b8 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b23 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b31 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b32 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b34 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b33 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b22 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b21 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
      [b24 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f] forState:UIControlStateSelected];
 self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
   [b1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b3 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b4 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b5 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b6 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b7 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b8 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b21 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b22 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b23 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b24 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b31 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b32 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b33 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
      [b34 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
   
    
    
    
}
-(void)click:(UIButton*)button
{
        button.selected = !button.selected;
//    if(button.selected)
//    {
//        button.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
//    }
//    else{
//        button.backgroundColor = [UIColor whiteColor];
//    }
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
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 
 */
-(void)rightBarBtnClicked
{
    sahngchuanViewController *shangchuan  = [[sahngchuanViewController alloc]init];
    
    [self.navigationController
     pushViewController:shangchuan animated:NO];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.searchbar resignFirstResponder];
}
@end
