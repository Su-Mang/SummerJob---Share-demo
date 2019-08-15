//
//  zpqViewController.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/2.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "zpqViewController.h"
#import "ShareSearch.h"
#import "sahngchuanViewController.h"

@interface zpqViewController ()<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tableview;
@property NSTimer *timer;
@property int a;
@property int b;
@property int c;
@property int d;

@end

@implementation zpqViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _a=-1;
    _c=0;
    _d=-1;

    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    leftBtn.frame = CGRectMake(0, 0, 25,25);
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/back_img.png"] forState:UIControlStateNormal];
    UIButton * rightBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    rightBtn.frame = CGRectMake(0, 0, 25,25);
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/shangchuan.png"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBarBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [leftBtn addTarget:self action:@selector(fanhi) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
    _tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 70, self.view.frame.size.width,self.view.frame.size.height-70 ) style:UITableViewStyleGrouped];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    [self.view addSubview:_tableview];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
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
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 125;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   jiuTableViewCell  *cell= [[jiuTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"123" ];
    cell = [tableView dequeueReusableCellWithIdentifier:@
            "123"];
    if(cell == nil)
    {
        cell =[[jiuTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"123"];
    }
    NSString *str = [NSString stringWithFormat:@"%d.jpg",indexPath.row+1+indexPath.section*10 ];
    cell.ima1.image= [UIImage imageNamed: str];
    NSString *str2 = [NSString stringWithFormat:@"%d.jpg",indexPath.row+2+indexPath.section*10 ];
    cell.ima2.image = [UIImage imageNamed: str2];
    NSString * str3 = [NSString stringWithFormat:@"%d.jpg",indexPath.row+3+indexPath.section*10 ];
    cell.ima3.image = [UIImage imageNamed: str3];
    [cell.bt1 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    [cell.bt1 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:0.3f] forState:UIControlStateSelected];
    [cell.bt2 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    [cell.bt2 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:0.9f] forState:UIControlStateSelected];
    [cell.bt3 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    [cell.bt3 setTitleColor:[UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:0.3f] forState:UIControlStateSelected];
    [cell.bt1 addTarget:self action:@selector(cli:) forControlEvents:UIControlEventTouchUpInside];
     [cell.bt2 addTarget:self action:@selector(cli:) forControlEvents:UIControlEventTouchUpInside];
     [cell.bt3 addTarget:self action:@selector(cli:) forControlEvents:UIControlEventTouchUpInside];
    cell.bt1.tag =0;
    cell.bt2.tag =0;
    cell.bt3.tag =0;
      UIButton* _b11 =[[UIButton alloc]initWithFrame:CGRectMake(85, 10, 25, 25)];
      [_b11 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/my_button_normal.png"]
       forState:UIControlStateNormal];
     UIButton* _b12 =[[UIButton alloc]initWithFrame:CGRectMake(85, 10, 25, 25)];
     UIButton* _b13 =[[UIButton alloc]initWithFrame:CGRectMake(85, 10, 25, 25)];
    [_b12 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/my_button_normal.png"]
          forState:UIControlStateNormal];
    [_b13 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/my_button_normal.png"]
          forState:UIControlStateNormal];
    [cell.bt1 addSubview:_b11];
    [cell.bt2 addSubview:_b12];
    [cell.bt3 addSubview:_b13];
  
   
    cell.bt1.tag = indexPath.row+1+indexPath.section*10;
     cell.bt2.tag = indexPath.row+2+indexPath.section*10;
     cell.bt3.tag = indexPath.row+3+indexPath.section*10;
   
    return cell;
}
-(void)cli:(UIButton *)b1;
{
    if (_a==-1) {
        _a = b1.tag;

    }
    if (b1.selected) {
        UIButton* _b11 =[[UIButton alloc]initWithFrame:CGRectMake(85, 10, 25, 25)];
        [_b11 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/my_button_pressed.png"] forState:UIControlStateNormal];
          [b1 addSubview:_b11];
        _c++;
        b1.backgroundColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:0.3f];
        b1.selected = !b1.selected;
        _d = b1.tag;
    }
    else{
        UIButton* _b11 =[[UIButton alloc]initWithFrame:CGRectMake(85, 10, 25, 25)];
        [_b11 setImage:[UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/information/my_button_normal.png"] forState:UIControlStateNormal];
        [b1 addSubview:_b11];
        b1.backgroundColor = [UIColor clearColor];
        b1.selected = !b1.selected;
        _c--;
       // [b11 removeFromSuperview];
       
    }
}
-(void)fanhi
{   [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)rightBarBtnClicked
{
//    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"" message:@"确定上传内容" preferredStyle:UIAlertControllerStyleActionSheet];
//    UIAlertAction *centain = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//
////            _b=1;
////            sahngchuanViewController *aa = [[sahngchuanViewController alloc]init];
////            aa.c=_b;
////        aa.d=_c;
////           if(_a!=0&&_b==1)
//               [self.navigationController popViewControllerAnimated:YES];
//    }];
//
//    UIAlertAction *centain1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    [alert addAction:centain];
//    [alert addAction:centain1];

    NSLog(@"123");
    //添加默认按钮
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"确认上传所选内容" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultBtn = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        UIAlertController *alert2 = [UIAlertController alertControllerWithTitle:@"上传成功" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alert2 animated:YES completion:nil];
        
      
        self->_timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(ran) userInfo:nil repeats:NO];
        
    }];
    [alert addAction:defaultBtn];
    
    //添加取消按钮
    UIAlertAction* cancelBtn = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
//        [self dismissViewControllerAnimated:YES completion:NO];
    }];
    [alert addAction:cancelBtn];
   [self presentViewController:alert animated:YES completion:nil];

}
-(void)ran
{   [self dismissViewControllerAnimated:YES completion:nil];
    //[_timer setFireDate: [NSData distantFuture] ];
   // [_timer setFireDate:[NSDate distantFuture]];
    NSLog(@"%d",_a);
    [self.delegate pu:_a and:_b];
    [self.navigationController popViewControllerAnimated:YES];
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
