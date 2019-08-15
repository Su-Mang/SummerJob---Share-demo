//
//  duihuaViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/8.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "duihuaViewController.h"
#import "sixinTableViewCell.h"
@interface duihuaViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property UITableView *tableView;
@property UITextField *shuruTextField;
@property NSMutableArray *arryM;
@property NSMutableArray *arryright;
@property NSMutableArray   *arryleftsizewidh;
@property NSMutableArray *arryrightsizewidh;
@property NSMutableArray   *arryleftsizeheight;
@property NSMutableArray *arryrightsizeheight;
@end

@implementation duihuaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arryright = [[NSMutableArray alloc]initWithObjects:@"你拍的真不错",@"好专业的照片，非常喜欢这种风格，期待你更好的作品", nil];
    _arryM = [[NSMutableArray alloc]initWithObjects:@"谢谢，已关注你",@"嗯嗯，好的", nil];
    _arryleftsizewidh = [[NSMutableArray alloc]init];
    _arryrightsizewidh = [[NSMutableArray alloc]init];
    _arryleftsizeheight = [[NSMutableArray alloc]init];
    _arryrightsizeheight = [[NSMutableArray alloc]init];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 580) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _shuruTextField.delegate = self;
    _shuruTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 600, 290, 40)];
    [self.view addSubview:_shuruTextField];
    _shuruTextField.backgroundColor = [UIColor whiteColor];
    UIButton *sendButton = [[UIButton alloc]initWithFrame:CGRectMake(340, 610, 30, 30)];
    [sendButton setTitle:@"发送" forState:UIControlStateNormal];
    [sendButton setTintColor:[UIColor whiteColor]];
    [sendButton addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_tableView];
    [self.view addSubview:sendButton];
    for (NSString * str in _arryright) {
        CGSize sizeright = [self size:str font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(375/2-70 , MAXFLOAT)];
        
        NSNumber *num = [NSNumber numberWithFloat:sizeright.width];
        NSNumber *num1 = [NSNumber numberWithFloat:sizeright.height];
        [_arryrightsizeheight addObject:num1];
        [_arryrightsizewidh addObject:num];
    }
    for (NSString * str in _arryM) {
        CGSize sizeleft = [self size:str font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(372/2-70, MAXFLOAT)];
        NSNumber *num = [NSNumber numberWithFloat:sizeleft.width];
        NSNumber *num1 = [NSNumber numberWithFloat:sizeleft.height];
        [_arryleftsizeheight addObject:num1];
        [_arryleftsizewidh addObject:num];
        _shuruTextField.delegate = self;
    }
    
}
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
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{   
    return _arryM.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"123";
    sixinTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil)
    {
     cell = [[sixinTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    if(indexPath.section>=3)
    {
        [self push:tableView didSelectRowAtIndexPath:indexPath];
    }
    cell.dateLabel.frame = CGRectMake(120, 10, 200, 10) ;
    NSDate *date = [NSDate date];
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"YYYY/MM/dd hh:mm:ss"];
    NSString *sDate = [format stringFromDate:date];
    NSLog(@"%@",sDate);
    cell.dateLabel.text = sDate;
    cell.dateLabel.textColor = [UIColor blackColor];
    cell.dateLabel.font = [UIFont systemFontOfSize:10];
    cell.rightImageView.image = [UIImage imageNamed:@"sixin_img1.png"];
    cell.rightImageView.frame = CGRectMake(315, 40, 40, 40);
//    CGSize textSizeright = [self size:_arryright[indexPath.section] font:[UIFont systemFontOfSize: 14.0] maxSize:CGSizeMake(375/2-70 , MAXFLOAT)];
    CGSize textSizeright;
    textSizeright.height =[_arryrightsizeheight[indexPath.section] floatValue];
    textSizeright.width = [_arryrightsizewidh[indexPath.section] floatValue];
    CGSize textSizeleft;
    textSizeleft.height =[_arryleftsizeheight[indexPath.section] floatValue];
    textSizeleft.width = [_arryleftsizewidh[indexPath.section] floatValue];
    cell.rightTextView.frame = CGRectMake(375/2, 40, textSizeright.width, textSizeright.height);
    cell.rightTextView.text = _arryright[indexPath.section];
    cell.leftImageView.frame = CGRectMake(10, textSizeright.height+60, 40, 40);
    cell.leftImageView.image = [UIImage imageNamed:@"sixin_img2.png"];
    cell.leftTextView.text =_arryM[indexPath.section];
//    CGSize textSizeleft = [self size:_arryM[indexPath.section] font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(372/2-70, MAXFLOAT)];
    cell.leftTextView.frame =CGRectMake(60, textSizeright.height+60, textSizeleft.width, textSizeleft.height);
    cell.leftTextView.font = [UIFont systemFontOfSize:14.0];
    cell.leftTextView.numberOfLines = 0;
    cell.rightTextView.numberOfLines = 0;
    cell.rightTextView.font = [UIFont systemFontOfSize:14.0];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    CGSize left =[self size:_arryright[indexPath.section] font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(372/2-70, MAXFLOAT)];
//    CGSize right = [self size:_arryM[indexPath.section] font:[UIFont systemFontOfSize: 14.0] maxSize:CGSizeMake(375/2-70 , MAXFLOAT)];
    CGSize right;
  right.height =[_arryrightsizeheight[indexPath.section] floatValue];
   
    CGSize left;
    left.height =[_arryleftsizeheight[indexPath.section] floatValue];
    return (left.height+right.height+80);
}
-(CGSize)size:(NSString*)text font:(UIFont*)font maxSize:(CGSize)maxSize
{
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName ,nil];
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
}
-(void)send
{
    [_arryM addObject:_shuruTextField.text];
    [_arryright addObject:_shuruTextField.text];
    
        CGSize sizeright = [self size:_shuruTextField.text font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(375/2-70 , MAXFLOAT)];
        
        NSNumber *num = [NSNumber numberWithFloat:sizeright.width];
        NSNumber *num1 = [NSNumber numberWithFloat:sizeright.height];
        [_arryrightsizeheight addObject:num1];
        [_arryrightsizewidh addObject:num];
    
  
        CGSize sizeleft = [self size:_shuruTextField.text font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(372/2-70, MAXFLOAT)];
        NSNumber *num3 = [NSNumber numberWithFloat:sizeleft.width];
        NSNumber *num4 = [NSNumber numberWithFloat:sizeleft.height];
        [_arryleftsizeheight addObject:num4];
        [_arryleftsizewidh addObject:num3];
    NSLog(@"%@",_arryleftsizeheight[2]);
     NSLog(@"%@",_arryM[2]);
    _shuruTextField.text = @"";
    [_tableView reloadData];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_shuruTextField resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (BOOL)textFieldDidBeginEditing:(UITextField *)textField
{
    self.view.frame = CGRectMake(0, -200, self.view.frame.size.width, self.view.frame.size.height);
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        return YES;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{  
   [_tableView setContentOffset:  CGPointMake(0, indexPath.section*100)] ;
}
-(void)push:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{       NSLog(@"%d",indexPath.section);
    [_tableView setContentOffset:  CGPointMake(0, indexPath.section*80)] ;
}
@end
