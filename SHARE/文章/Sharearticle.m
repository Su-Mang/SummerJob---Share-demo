//
//  Sharearticle.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "Sharearticle.h"
#import "homeTableViewCell.h"
#define  WIDTH self.view.frame.size.width
@interface Sharearticle ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>
@property NSArray * arry;
@property NSArray * arry1;
@property NSArray * arry2;
@property NSArray * arry3;
@property UITableView *tableview;
@property UITableView *tableview1;
@property UITableView *tableview2;
@property  UIScrollView *scrollView;
@property UISegmentedControl *segment;
@property int a;

@end

@implementation Sharearticle

- (void)viewDidLoad {
    [super viewDidLoad];
    _arry = @[@"假日",@"国外画册欣赏",@"collection扁平设计",@"板式整理书：高校解决多风格要求"@"假日",@"国外画册欣赏",@"collection扁平设计",@"板式整理书：高校解决多风格要求"];
    _arry1 = @[@"share小白",@"share小王",@"share小吕",@"share小王"@"share小白",@"share小王",@"share小吕",@"share小王"];
    _arry2= @[@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求"@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求"];
    _arry3 = @[@"15分钟前",@"16分钟前",@"17分钟前",@"18分钟前"@"15分钟前",@"16分钟前",@"17分钟前",@"18分钟前"]; self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    UIImage *image1 = [[UIImage imageNamed:@"7E55686E-AF26-432C-8EB7-7D635465BC66.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.title = @"文章";
    UIBarButtonItem * next1 = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStyleDone target:self action:@selector(pressleft)];
    //next1.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = next1;
    // Do any additional setup after loading the view.
    NSArray *arr1 =@[@"精选文章",@"热门推荐",@"全部文章"];
    _segment= [[UISegmentedControl alloc]initWithItems:arr1];
    _segment.frame=CGRectMake(0, 65, 375, 40);
    [_segment setTintColor:[UIColor blackColor]];

  //  [segment setTintColor:[UIColor whiteColor]];
    [_segment setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self.view addSubview:_segment];
      self.view.backgroundColor = [UIColor colorWithRed:0.92f green:0.92f blue:0.93f alpha:1.00f];
    [_segment addTarget:self action:@selector(change) forControlEvents:UIControlEventValueChanged];
    _tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 270) ];
    _tableview.delegate = self;
    _tableview.dataSource = self;
  
    
    _tableview.estimatedRowHeight = 0;
    
    _tableview.estimatedSectionHeaderHeight = 0;
    
    _tableview.estimatedSectionFooterHeight = 0;
    _tableview1 = [[UITableView alloc]initWithFrame:CGRectMake(WIDTH, 0, 375, 270) ];
    _tableview1.delegate = self;
    _tableview1.dataSource = self;
    
    
    _tableview1.estimatedRowHeight = 0;
    
    _tableview1.estimatedSectionHeaderHeight = 0;
    
    _tableview1.estimatedSectionFooterHeight = 0;
    _tableview2 = [[UITableView alloc]initWithFrame:CGRectMake(WIDTH*2, 0, 375, 270) ];
    _tableview2.delegate = self;
    _tableview2.dataSource = self;
    
    
    _tableview2.estimatedRowHeight = 0;
    
    _tableview2.estimatedSectionHeaderHeight = 0;
    
    _tableview2.estimatedSectionFooterHeight = 0;
    _tableview.tag =1;
    _tableview2.tag =2;
    _tableview1.tag =3;
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 105, WIDTH, 270)];
    _scrollView.contentSize = CGSizeMake(WIDTH * 3, 270);
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.bounces = false;
    [self.view addSubview:_scrollView];
    [self.view addSubview:_segment];
    [_scrollView addSubview:_tableview];
    [_scrollView addSubview:_tableview2];
    [_scrollView addSubview:_tableview1];
    _scrollView.tag = 1;
    _segment.selectedSegmentIndex = 0;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.tag==1) {
    if (scrollView.contentOffset.x == 0) {
        _segment.selectedSegmentIndex = 0;
    } else if (scrollView.contentOffset.x == WIDTH) {
        _segment.selectedSegmentIndex = 1;
    } else if (scrollView.contentOffset.x == WIDTH*2) {
        _segment.selectedSegmentIndex = 2;
    }
    }
    else
    {
        
    }
}
-(void)click:(UIButton*)button
{
    button.selected = !button.selected;
    
}
- (void)leftBarBtnClicked:(UIButton *)btn
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 130;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    homeTableViewCell*cell = [[homeTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    if(tableView.tag==1)
       {
           
           
           UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
           UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
           UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
        NSString *str =[ NSString stringWithFormat:@"11%d.png",indexPath.section+2 ];
        UIImage *image = [UIImage imageNamed:str];
        
        cell.pic.image = image;
        cell.detaillable.text = _arry[indexPath.section];
        cell.titlelable.text =_arry2[indexPath.section];
        cell.plable.text = _arry3[indexPath.section];
        cell.writerlable.text = _arry1[indexPath.section];
        [cell.bt1 setImage:image1 forState:UIControlStateNormal];
        [cell.bt2 setImage:image2 forState:UIControlStateNormal];
        [cell.bt3 setImage:image3 forState:UIControlStateNormal];
           [cell.bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
           
           [cell.bt2 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
           
           [cell.bt3 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
           return cell;
       }
      else if(tableView.tag==2)
    {
        UIImage *image1 = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/button_zan.png"];
        UIImage *image2 = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/button_guanzhu.png"];
        UIImage *image3 = [UIImage imageNamed:@"/Users/sumang/Desktop/Objective-c/demo/XCode project/Pro2/Pro2/导航控制器基础/照片墙/SHARE/SHARE/picture1/button_share.png"];
        NSString *str =[ NSString stringWithFormat:@"11%d.png",indexPath.section+3];
        UIImage *image = [UIImage imageNamed:str];
        cell.pic.image = image;
        cell.detaillable.text = _arry[indexPath.section+1];
        cell.titlelable.text =_arry2[indexPath.section+1];
        cell.plable.text = _arry3[indexPath.section+1];
        cell.writerlable.text = _arry1[indexPath.section+1];
        [cell.bt1 setImage:image1 forState:UIControlStateNormal];
        [cell.bt2 setImage:image2 forState:UIControlStateNormal];
        [cell.bt3 setImage:image3 forState:UIControlStateNormal];
        [cell.bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell.bt2 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell.bt3 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
    else if(tableView.tag==3)
   {
       UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
       UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
       UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
        NSString *str =[ NSString stringWithFormat:@"%d.png",indexPath.section ];
        UIImage *image = [UIImage imageNamed:str];
        
        cell.pic.image = image;
        cell.detaillable.text = _arry[indexPath.section+2];
        cell.titlelable.text =_arry2[indexPath.section];
        cell.plable.text = _arry3[indexPath.section+2];
        cell.writerlable.text = _arry1[indexPath.section+2];
        [cell.bt1 setImage:image1 forState:UIControlStateNormal];
        [cell.bt2 setImage:image2 forState:UIControlStateNormal];
        [cell.bt3 setImage:image3 forState:UIControlStateNormal];
         [cell.bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
       
       [cell.bt2 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
       
       [cell.bt3 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
    return cell;
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
- (CGFloat)tableView:(UITableView *)tableView heightForRooterInSection:(NSInteger)section
{
    
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 0.01;
}

- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (UIView *) tableView:(UITableView *)tableView viewForRooterInSection:(NSInteger)section {
    return nil;
}
-(void)change
{
    NSLog(@"123");
    if(_segment.selectedSegmentIndex == 0)
    {
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    if ( _segment.selectedSegmentIndex== 1) {
        [_scrollView setContentOffset:CGPointMake(WIDTH, 0) animated:YES];
    }
    if (_segment.selectedSegmentIndex == 2) {
        [_scrollView setContentOffset:CGPointMake(WIDTH*2, 0) animated:YES];
    }
}
@end
