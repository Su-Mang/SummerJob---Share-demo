//
//  resigerViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "resigerViewController.h"
#import "loginviewcoller.h"



@interface resigerViewController ()<UITextFieldDelegate>
@property NSInteger a ;
@end

@implementation resigerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *viewimage = [UIImage imageNamed:@"kaiji1.png"];
    UIImageView *backView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    backView.image = viewimage;
    [self.view addSubview:backView];
    UIImageView *lableview = [[UIImageView alloc]initWithFrame:CGRectMake(120, 80, 140, 140)];
    UIImage *lableimage = [UIImage imageNamed:@"login_logo.png"];
    [lableview setImage:lableimage];
    UILabel *sharelable = [[UILabel alloc]initWithFrame:CGRectMake(130, 200, 200, 100)];
    _imageview1 = [[UITextField alloc]initWithFrame:CGRectMake(40, 300, 300, 50)];
    UIImage *l1 = [UIImage imageNamed:@"z1.png"];
    UIImage *l2 = [UIImage imageNamed:@"z2.png"];
    UIImage *l3 = [UIImage imageNamed:@"31.png"];
    UIImageView  *b1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UIImageView  *b3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    b1.image = l3;
    UIImageView  *b2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    b2.image = l2;
    b3.image = l1;
    // [b2 setImage:l2 forState:UIControlStateNormal];
    // [_imageview1 addSubview:b1];
    
    _imageview1.backgroundColor = [UIColor whiteColor];
    _imageview2 = [[UITextField alloc]initWithFrame:CGRectMake(40,380 , 300, 50)];
    _imageview3 = [[UITextField alloc]initWithFrame:CGRectMake(40,460, 300, 50)];
    _imageview1.textAlignment = NSTextAlignmentCenter ;
    _imageview2.textAlignment = NSTextAlignmentCenter ;
    _imageview3.textAlignment = NSTextAlignmentCenter ;
    _imageview2.backgroundColor = [UIColor whiteColor];
    _imageview2.secureTextEntry = YES;
    [_imageview3 addSubview:b3];
    [_imageview1 addSubview:b2];
    [_imageview2 addSubview:b1];
    _imageview3.backgroundColor = [UIColor whiteColor];
    _imageview1.delegate = self;
    _imageview2.delegate = self;
    _imageview3.delegate = self;
    [self.view addSubview:_imageview1];
    [self.view addSubview:_imageview2];
    [self.view addSubview:_imageview3];
    [self.view addSubview: sharelable];
    // lableview.backgroundColor = [UIColor redColor]
    UIButton *zhucebutton = [[UIButton alloc]initWithFrame:CGRectMake(100, 530, 200, 50)];
    [zhucebutton setTitle:@"确认注册" forState:UIControlStateNormal];
    zhucebutton.titleLabel.textColor = [UIColor whiteColor];
    
    zhucebutton.titleLabel.font = [UIFont boldSystemFontOfSize:25];
    [self.view addSubview:zhucebutton];
    sharelable.font = [UIFont boldSystemFontOfSize:35];
    sharelable.text = @" SHARE";
    sharelable.textColor = [UIColor whiteColor];
    sharelable.backgroundColor = [UIColor clearColor];
    [self.view addSubview:lableview];
    [zhucebutton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    _a = -1;
    _imageview1.tag = 1;
    _imageview2.tag = 2;
    _imageview3.tag = 3;
}
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
//
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
//}
//-(void)keyboardWillDisAppear:(NSNotification *)notifification
//{
//    [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, 0);}];
//}
//- (void)keyboardWillAppear:(NSNotification *)notification{
//    CGRect keyboardFrame = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
//    CGFloat keyboardY = keyboardFrame.origin.y;
//    [UIView animateWithDuration:1.0 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, keyboardY - self.view.frame.size.height);}];
//}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{           _a=textField.tag;
    self.view.frame = CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height) ;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{   if(_a==textField.tag)
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) ;
else{
    
}
    return YES;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    // 必须辞去第一响应者后,键盘才会回缩.
    [textField resignFirstResponder];
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_imageview1 resignFirstResponder];
    [_imageview2 resignFirstResponder];
    [_imageview3 resignFirstResponder];
}
-(void)zhuce
{
    [self.delegate put:_imageview2.text :_imageview3.text ];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
