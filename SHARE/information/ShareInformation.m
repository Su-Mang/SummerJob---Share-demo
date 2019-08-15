//
//  ShareInformation.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ShareInformation.h"
#import "wscViewController.h"
#import "wdxxViewController.h"
#import "wtjdViewController.h"
#import "szViewController.h"
@interface ShareInformation ()
@property NSArray *ns1;
@property NSArray *n2;
@end

@implementation ShareInformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    UIImage* image = [UIImage imageNamed:@"5.png"];
    //    UITabBarItem *tab1= [[UITabBarItem alloc]initWithTitle:@"" image:image tag:5];
    //    self.tabBarItem =tab1;
   self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/fanhui.png"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    UIImage *image1 = [[UIImage imageNamed:@"7E55686E-AF26-432C-8EB7-7D635465BC66.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.title = @"个人信息";
    UIBarButtonItem * next1 = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStyleDone target:self action:@selector(pressleft)];
    //next1.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = next1;
    UITableView*  tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ];
    //设置代理和数据源
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    
    tableview.estimatedRowHeight = 0;
    
    tableview.estimatedSectionHeaderHeight = 0;
    
    tableview.estimatedSectionFooterHeight = 0;
    _arr1 =@[@"我上传的",@"我的信息",@"我推荐的",@"院系通知",@"设置",@"退出"];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 1&&indexPath.row == 0)
    {
        wscViewController *wsc = [[wscViewController alloc]init];
        
        
        [self.navigationController pushViewController:wsc animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
    else  if(indexPath.section == 1&&indexPath.row ==1)
    {
        wdxxViewController *wdx =[[wdxxViewController alloc]init];
      
        
        [self.navigationController pushViewController:wdx animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
    else  if(indexPath.section == 1&&indexPath.row ==2)
    {
        wtjdViewController *wtj =  [[wtjdViewController alloc]init];
        
    
        
        [self.navigationController pushViewController:wtj animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
    else if (indexPath.section == 1&&indexPath.row ==4)
    {
        szViewController *sz = [[szViewController alloc]init];
      
        
        [self.navigationController pushViewController:sz animated:NO];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
    else if(indexPath.section == 1&&indexPath.row ==5)
    {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
        NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
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
        return 130;
    }
    else{
        return 60;
    }
    
}
//设置分区的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 1;
            break;
        default:
            return 6;
            break;
    }
}
////设置尾视图
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
    
    if(indexPath.section==0)
    {
        UIImageView *pic  = [[UIImageView alloc]initWithFrame:CGRectMake(30, 10, 100,100)];
        UILabel *titlelable = [[UILabel alloc]initWithFrame:CGRectMake(160 , 0, 70, 20)];
        
        titlelable.text = @"share小白";
        titlelable.font = [UIFont fontWithName:@"Helvetica" size:15.f];
        [cell.contentView addSubview:titlelable];
        UILabel *detaillable1 = [[UILabel alloc]initWithFrame:CGRectMake(160,10, 90, 10)];
        
        detaillable1.font = [UIFont fontWithName:@"Helvetica" size:12.f];
        UILabel *detaillable2 = [[UILabel alloc]initWithFrame:CGRectMake(160, 40, 100, 10)];
        
        detaillable2.font = [UIFont fontWithName:@"Helvetica" size:12.f];
        detaillable2.text=@"数媒/设计爱好者";
        UILabel *detaillable3 = [[UILabel alloc]initWithFrame:CGRectMake(160, 70, 200, 10)];
        detaillable3.font = [UIFont fontWithName:@"Helvetica" size:12.f];
        detaillable3.text = @"开心了就笑，不开心了就过会再笑";
        UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(160, 90, 30, 30)];
        [bt1 setTitle:@"15" forState:UIControlStateNormal];
        [cell.contentView addSubview:bt1];
        UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(240, 90, 30, 30)];
        [bt2 setTitle:@"120" forState:UIControlStateNormal];
        
        
        [cell.contentView addSubview:bt2];
        UIButton *bt3 = [[UIButton alloc]initWithFrame:CGRectMake(290, 90, 30, 30)];
        [bt3 setTitle:@"80" forState:UIControlStateNormal];
        [cell.contentView addSubview:bt3];
        //   detaillable1.backgroundColor = [UIColor orangeColor];
        [cell.contentView addSubview:detaillable1];
        //  detaillable3.backgroundColor = [UIColor blackColor];
        [cell.contentView addSubview:detaillable3];
        //  detaillable2.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:detaillable2];
        // pic.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:pic];
        
        UIImage *image = [UIImage imageNamed:@"sixin_img1.png"];
        pic.image = image;
        //        [bt1 setImage:image1 forState:UIControlStateNormal];
        //        [bt2 setImage:image2 forState:UIControlStateNormal];
        //        [bt3 setImage:image3 forState:UIControlStateNormal];
        //        [bt1 setTitle:@"20" forState:UIControlStateNormal];
        //        [bt2 setTitle:@"30" forState:UIControlStateNormal];    [bt3 setTitle:@"40" forState:UIControlStateNormal];
        [ bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        bt2.titleLabel.font = [UIFont systemFontOfSize:10.0];
        
        bt3.titleLabel.font = [UIFont systemFontOfSize:10];    bt1.titleLabel.font = [UIFont systemFontOfSize:10];
        UIImage *image2 = [UIImage imageNamed:@"i1.png"];
        UIImage *image3 = [UIImage imageNamed:@"/Users/sumang/Documents/share+4.18最终/share+4.18最终(1)/share+4.18最终/新建文件夹/素材/logo/i2.png"];
        UIImage *image4 = [UIImage imageNamed:@"/Users/sumang/Documents/share+4.18最终/share+4.18最终(1)/share+4.18最终/新建文件夹/素材/logo/i3.png"];
        [bt1 setImage:image2 forState:UIControlStateNormal];
        [bt2 setImage:image3 forState:UIControlStateNormal];
        [bt3 setImage:image4 forState:UIControlStateNormal];
        
        return cell;
        
        
    }
    else
    {
        NSString *str =[ NSString stringWithFormat:@"0%d.png",indexPath.row+1 ];
        UIImage *image = [UIImage imageNamed:str];
        UIImageView* ivew = [[UIImageView alloc]initWithImage:image];
        cell.imageView.image= image;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text=_arr1[indexPath.row];
    }
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return 0.001;
    } else {
        return 20;
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
        return 20;
    }
    
}
@end
