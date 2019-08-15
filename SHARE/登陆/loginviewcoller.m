//
//  loginviewcoller.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "loginviewcoller.h"
#import "resigerViewController.h"
#import "ShareHome.h"
#import "ShareSearch.h"
#import "Sharearticle.h"
#import "ShareActivity.h"
#import "ShareInformation.h"
@interface loginviewcoller ()<UITextFieldDelegate,PassDelegate>
@property(nonatomic,weak)UITextField *  imageview1;
@property(nonatomic,weak)UITextField *  imageview2;
@property NSString *str1;
@property NSString *str2;
@end

@implementation loginviewcoller

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *viewimage = [UIImage imageNamed:@"kaiji1.png"];
    UIImageView *backView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    backView.image = viewimage;
    [self.view addSubview:backView];
    UIImageView *lableview = [[UIImageView alloc]initWithFrame:CGRectMake(135, 80, 100, 100)];
    UIImage *lableimage = [UIImage imageNamed:@"login_logo.png"];
    [lableview setImage:lableimage];
    UILabel *sharelable = [[UILabel alloc]initWithFrame:CGRectMake(135, 195, 110, 30)];
    _imageview1 = [[UITextField alloc]initWithFrame:CGRectMake(40, 275, 295, 45)];
    UIImage *i1 = [UIImage imageNamed:@"z1.png"];
    UIImage *l2 = [UIImage imageNamed:@"z2.png"];
    UIImageView  *b1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 45, 45)];
    b1.image = i1;
    
    UIButton  *b2 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 45, 45)];
    [b2 setImage:l2 forState:UIControlStateNormal];
    [_imageview1 addSubview:b1];
    
    _imageview1.backgroundColor = [UIColor whiteColor];
    _imageview2 = [[UITextField alloc]initWithFrame:CGRectMake(40, 330 , 295, 45)];
    _imageview1.textAlignment = NSTextAlignmentCenter ;
    _imageview2.textAlignment = NSTextAlignmentCenter ;
    _imageview2.backgroundColor = [UIColor whiteColor];
    _imageview2.secureTextEntry = YES;
    [_imageview2 addSubview:b2];
    [self.view addSubview:_imageview1];
    [self.view addSubview:_imageview2];
    [self.view addSubview: sharelable];
    // lableview.backgroundColor = [UIColor redColor];
    UIButton *denglubutton = [[UIButton alloc]initWithFrame:CGRectMake(80, 405, 100, 40)];
    UIButton *zhucebutton = [[UIButton alloc]initWithFrame:CGRectMake(208, 405, 100, 40)];
   
    
    [denglubutton setTitle:@"登陆" forState:UIControlStateNormal];
    denglubutton.titleLabel.textColor = [UIColor whiteColor];
    
    [zhucebutton setTitle:@"注册" forState:UIControlStateNormal];
    zhucebutton.titleLabel.textColor = [UIColor whiteColor];
    UIButton *b21 = [[UIButton alloc]initWithFrame:CGRectMake(40, 455, 10, 10)];
    [b21 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/checkbox_checked.png"] forState:UIControlStateNormal];
    [self.view addSubview:b21];
    UILabel *ll1 = [[UILabel alloc]initWithFrame:CGRectMake(55, 455, 70, 10)];
    ll1.text = @"自动登录";
    ll1.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:ll1];
    [self.view addSubview:denglubutton];
    [self.view addSubview:zhucebutton];
     
    sharelable.font = [UIFont boldSystemFontOfSize:30];
    sharelable.text = @" SHARE";
    sharelable.textColor = [UIColor whiteColor];
    sharelable.backgroundColor = [UIColor clearColor];
    [self.view addSubview:lableview];
    [denglubutton addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    [zhucebutton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    _imageview1.delegate = self;
    _imageview2.delegate = self;
    // Do any additional setup after loading the view.
}

-(void)denglu
{
    NSString *name =@"123";
    NSString *pass =@"123";
    NSString *strtex = _imageview1.text;
    NSString *strtexmima = _imageview2.text;
    if (([name isEqualToString:strtex]&& [pass isEqualToString:strtexmima])||([strtex isEqualToString:_str1]&&[strtexmima isEqualToString:_str2])) {
        NSLog(@"登陆成功");
        ShareHome * sharehome = [[ShareHome alloc]init];
      //  sharehome.view.backgroundColor = [UIColor whiteColor];
        ShareSearch * shareSerch = [[ShareSearch alloc]init];
        // = [UIColor //whiteColor];
        Sharearticle * shareArtcle = [[Sharearticle alloc]init];
      //  shareArtcle.view.backgroundColor = [UIColor whiteColor];
        ShareActivity * shareActivity = [[ShareActivity alloc]init];
      //  shareActivity.view.backgroundColor = [UIColor whiteColor];
        ShareInformation * shareinformation = [[ShareInformation alloc]init];
       // shareinformation.view.backgroundColor = [UIColor whiteColor];
        UINavigationController *sharehomenav = [[UINavigationController alloc]initWithRootViewController:sharehome];
        UINavigationController *sharesearchnav = [[UINavigationController alloc]initWithRootViewController:shareSerch];
        UINavigationController *shareartclenav = [[UINavigationController alloc]initWithRootViewController:shareArtcle];
        UINavigationController * shareactivitynav = [[UINavigationController alloc]initWithRootViewController:shareActivity];
        UINavigationController *shareinformationnav = [[UINavigationController alloc]initWithRootViewController:shareinformation];
        ;
     
        //    searchViewController2.tabBarItem.selectedImage = [[UIImage imageNamed:@"search_button2_pressed.png"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
        sharehome.tabBarItem.image = [[UIImage imageNamed:@"d1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        sharehome.tabBarItem.selectedImage = [[UIImage imageNamed:@"d2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareSerch.tabBarItem.image = [[UIImage imageNamed:@"d3.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareSerch.tabBarItem.selectedImage = [[UIImage imageNamed:@"d4.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareArtcle.tabBarItem.image = [[UIImage imageNamed:@"d5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareArtcle.tabBarItem.selectedImage = [[UIImage imageNamed:@"d6.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareActivity.tabBarItem.image = [[UIImage imageNamed:@"d7.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareActivity.tabBarItem.selectedImage = [[UIImage imageNamed:@"d8.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareinformation.tabBarItem.image = [[UIImage imageNamed:@"d9.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        shareinformation.tabBarItem.selectedImage = [[UIImage imageNamed:@"d10.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        NSArray *array = [NSArray arrayWithObjects:sharehomenav,sharesearchnav,shareartclenav,shareactivitynav,shareinformationnav, nil];
        
        UITabBarController * UItabarcontroller = [[UITabBarController alloc]init];
        UItabarcontroller.tabBar.tintColor = [UIColor whiteColor];
        UItabarcontroller.viewControllers = array;
        [self presentViewController:UItabarcontroller animated:YES completion:nil];
    }
}
-(void)zhuce
{
    resigerViewController *resigerviewController = [[resigerViewController alloc] init];
    resigerviewController.delegate = self;
    
    [self presentViewController:resigerviewController animated:YES completion:nil];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_imageview1 resignFirstResponder];
    [_imageview2 resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    // 必须辞去第一响应者后,键盘才会回缩.
    [textField resignFirstResponder];
    return YES;
}
- (void)put:(NSString *)str1and :(NSString *)str2
{
  _imageview1.text= str1and;
    _imageview2.text = str2;
  _str1= str1and;
   _str2 = str2;
    
}
@end

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

