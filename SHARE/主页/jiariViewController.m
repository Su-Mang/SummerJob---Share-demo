//
//  jiariViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "jiariViewController.h"

@interface jiariViewController ()

@end

@implementation jiariViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *bb1 = [[UIButton alloc]initWithFrame:CGRectMake(10, 20, 30, 30)];
    [bb1 setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:bb1];
    [bb1 addTarget: self action:@selector(dis) forControlEvents:UIControlEventTouchUpInside];
    UITableView*  tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ];
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    tableview.estimatedRowHeight = 0;
    
    tableview.estimatedSectionHeaderHeight = 0;
    
    tableview.estimatedSectionFooterHeight = 0;
    //tableview.backgroundView = [UIColor whiteColor];
     [tableview setSeparatorColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)dis
{   NSLog(@"123");
    [self.navigationController popViewControllerAnimated:YES];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
    
}
//设置行高

-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    if (indexPath.section == 0) {
        return 74;
    }
    else{
        return 1020;
    }
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
         UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
       // cell.tintColor = [UIColor whiteColor];
        // cell.backgroundView = [UIColor whiteColor];
                             if (indexPath.section == 0) {
        UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
        image.image = [UIImage imageNamed:@"sixin_img1.png"];
    UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(60, 40, 80, 20)];
    lable2.text = @"share小白";
    lable2.font = [UIFont systemFontOfSize :13];
                                 [cell addSubview:lable2];
    UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(192, 56, 30, 10)];
                                 //  bt1.backgroundColor = [UIColor redColor];
     [cell.contentView addSubview:bt1];
     UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(250, 56, 30, 10)];
                                 // bt1.backgroundColor = [UIColor redColor];
       [cell.contentView addSubview:bt2];
      UIButton *bt3 = [[UIButton alloc]initWithFrame:CGRectMake(300, 56, 36, 10)];
                                 [cell addSubview:bt3];
        UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
        UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
        UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
        [bt1 setImage:image1 forState:UIControlStateNormal];
        [bt2 setImage:image2 forState:UIControlStateNormal];
        [bt3 setImage:image3 forState:UIControlStateNormal];
        [bt1 setTitle:@"20" forState:UIControlStateNormal];
        [bt2 setTitle:@"30" forState:UIControlStateNormal];
        [bt3 setTitle:@"40" forState:UIControlStateNormal];
        [ bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        bt2.titleLabel.font = [UIFont systemFontOfSize:10.0];
        bt3.titleLabel.font = [UIFont systemFontOfSize:10];
        bt1.titleLabel.font = [UIFont systemFontOfSize:10];
        [bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(70, 15, 50, 20)];
        lable.text = @"假日";
        lable.font = [UIFont systemFontOfSize :13];        UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(280, 18, 45, 10)];
       lable1.text =@"15分钟前";
        lable1.font = [UIFont systemFontOfSize: 10];
       
        [cell.contentView addSubview:lable];
        [cell.contentView addSubview:lable1];
        [cell.contentView addSubview:image];
      
    }
    else
    {
        UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(6, 10, 190, 10)];
        
        label1.text = @"多希望列车能把我带到有你的城市。";
        label1.font = [UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label1];
        
        UIImageView *image1 = [[UIImageView alloc] initWithFrame:CGRectMake(6, 30, 310, 170)];
        [image1 setImage:[UIImage imageNamed:@"works_img1"]];
        [cell.contentView addSubview:image1];
        
        UIImageView *image2 = [[UIImageView alloc] initWithFrame:CGRectMake(6, 210, 310, 180)];
        [image2 setImage:[UIImage imageNamed:@"works_img2"]];
        [cell.contentView addSubview:image2];
        
        UIImageView *image3 = [[UIImageView alloc] initWithFrame:CGRectMake(80, 400, 170, 310)];
        [image3 setImage:[UIImage imageNamed:@"works_img3"]];
        [cell.contentView addSubview:image3];
        
        UIImageView *image4 = [[UIImageView alloc] initWithFrame:CGRectMake(80, 720, 180, 300)];
        [image4 setImage:[UIImage imageNamed:@"works_img5"]];
        [cell.contentView addSubview:image4];
    }
    cell.selectionStyle = UITableViewCellEditingStyleNone;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return 0.01;
    } else {
        return 1;
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
@end
