//
//  ShareHome.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ShareHome.h"

@interface ShareHome()<UITabBarDelegate,UITableViewDataSource>
#define WIDRH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height/3-50
@property NSArray * arry;
@property NSArray * arry1;
@property NSArray * arry2;
@property NSArray * arry3;
@end

@implementation ShareHome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.18f green:0.52f blue:0.77f alpha:1.00f];
    //    UIImage* image = [UIImage imageNamed:@"6.png"];
    //   UITabBarItem *tab1= [[UITabBarItem alloc]initWithTitle:@"" image:image tag:1];
    //    tab1.image = image;
    //    self.tabBarItem =tab1;
    _arry = @[@"假日",@"国外画册欣赏",@"collection扁平设计",@"板式整理书：高校解决多风格要求"];
    _arry1 = @[@"share小白",@"share小王",@"share小吕",@"share小王"];
    _arry2= @[@"原创—插画-练习习作",@"平面设计-画册设计",@"平面设计-海报设计",@"板式整理书：高校解决多风格要求"];
    _arry3 = @[@"15分钟前",@"16分钟前",@"17分钟前",@"18分钟前"];
    
    UITableView*  tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height-50) style:UITableViewStyleGrouped ];
    tableview.delegate = self;
    tableview.dataSource = self;
    [self.view addSubview:tableview];
    tableview.backgroundColor = [UIColor whiteColor];
    //[tableview registerClass:<#(nullable Class)#> forCellReuseIdentifier:<#(nonnull NSString *)#>]
    //tableview.backgroundColor = [UIColor grayColor];
    tableview.estimatedRowHeight = 0;
    
    tableview.estimatedSectionHeaderHeight = 0;
    
    tableview.estimatedSectionFooterHeight = 0;
    UIView *headview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDRH, HEIGHT)];
    _scrollView =  [[ UIScrollView alloc]initWithFrame:CGRectMake(0, 0, WIDRH, HEIGHT)];
    _scrollView.contentSize= CGSizeMake(6*WIDRH,HEIGHT);
    _scrollView.pagingEnabled = YES;
    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(120, 130, 100, 20)];
    [_scrollView addSubview:_pageControl];
    //  _scrollView.backgroundColor = [UIColor redColor];
    
    
    for(int i = 0;i<6;i++)
    {
        UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake( i*WIDRH, 0, WIDRH, HEIGHT)];
        NSString *imagename = [NSString stringWithFormat:@"a%d.png",i];
        if(i==0)
        {
            imagename  = @"a4.png";
        }
        else if(i==5)
        {
            imagename = @"a1.png";
        }
        imageview.image = [UIImage imageNamed:imagename];
        [_scrollView addSubview:imageview];
        
    }
    //  _pageControl.backgroundColor = [UIColor redColor];
    _pageControl.numberOfPages = 4;
    [_scrollView addSubview:_pageControl];
    // [self.view addSubview:_pageControl];
    [headview addSubview:_scrollView];
    [headview addSubview:_pageControl];
    tableview.tableHeaderView = headview;
    _scrollView.delegate = self;
    [self creatt];
}
-(void)creatt
{
    _timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(ran) userInfo:nil repeats:YES];
}
-(void)ran
{
    [_scrollView setContentOffset:CGPointMake((_pageControl.currentPage+2)*WIDRH, 0) animated:YES];
}
-(void)scrollViewDidBeginDragging:(UIScrollView *)scrollView
{
    
    [_timer setFireDate:[NSDate distantFuture]];
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
{
    
    [_timer setFireDate:[NSDate distantPast]];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{   if(_scrollView.contentOffset.x==0)
{
    _scrollView.contentOffset =CGPointMake(4*WIDRH, 0);
}
else if (_scrollView.contentOffset.x == 5*WIDRH)
{
    _scrollView.contentOffset = CGPointMake(WIDRH, 0);
    
}
    _pageControl.currentPage = _scrollView.contentOffset.x/WIDRH-1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 1;
            break;
        default:
            return 1;
            break;
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0)
    {
        jiariViewController *jiari =  [[jiariViewController alloc]init];
        
        jiari.hidesBottomBarWhenPushed = YES;
        
        [self.navigationController pushViewController:jiari animated:NO];
    NSLog(@"选中了第%li个cell", (long)indexPath.row);
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell*cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    UIImage *image1 = [UIImage imageNamed:@"button_zan.png"];
    UIImage *image2 = [UIImage imageNamed:@"button_guanzhu.png"];
    UIImage *image3 = [UIImage imageNamed:@"button_share.png"];
    if(indexPath.section == 0)
    {
        UIImageView *pic  = [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 170,130)];
        UILabel *titlelable = [[UILabel alloc]initWithFrame:CGRectMake(200 , 20, 40, 20)];
        
        titlelable.text = _arry[0];
        titlelable.font = [UIFont fontWithName:@"Helvetica" size:18.f];
        [cell.contentView addSubview:titlelable];
        UILabel *detaillable1 = [[UILabel alloc]initWithFrame:CGRectMake(200, 40, 80, 10)];
        detaillable1.text = _arry1[0];
        detaillable1.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        UILabel *detaillable2 = [[UILabel alloc]initWithFrame:CGRectMake(200, 58, 120, 10)];
        detaillable2.text = _arry2[0];
        detaillable2.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        UILabel *detaillable3 = [[UILabel alloc]initWithFrame:CGRectMake(200, 72, 100, 10)];
        detaillable3.font = [UIFont fontWithName:@"Helvetica" size:13.f];
        detaillable3.text = _arry3[0];
        UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(192, 96, 36, 10)];
        //  bt1.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:bt1];
        UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(250, 96, 36, 10)];
        // bt1.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:bt2];
        UIButton *bt3 = [[UIButton alloc]initWithFrame:CGRectMake(300, 96, 36, 10)];
        // bt1.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:bt3];
        //   detaillable1.backgroundColor = [UIColor orangeColor];
        [cell.contentView addSubview:detaillable1];
        //  detaillable3.backgroundColor = [UIColor blackColor];
        [cell.contentView addSubview:detaillable3];
        //  detaillable2.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:detaillable2];
        // pic.backgroundColor = [UIColor redColor];
        [cell.contentView addSubview:pic];
        NSString *str =[ NSString stringWithFormat:@"%d.png",indexPath.section+1 ];
        UIImage *image = [UIImage imageNamed:str];
        pic.image = image;
      
        [bt1 setImage:image1 forState:UIControlStateNormal];
        [bt2 setImage:image2 forState:UIControlStateNormal];
        [bt3 setImage:image3 forState:UIControlStateNormal];
        [bt1 setTitle:@"20" forState:UIControlStateNormal];
        [bt2 setTitle:@"30" forState:UIControlStateNormal];    [bt3 setTitle:@"40" forState:UIControlStateNormal];
        [ bt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [ bt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        bt2.titleLabel.font = [UIFont systemFontOfSize:10.0];
        
        bt3.titleLabel.font = [UIFont systemFontOfSize:10];    bt1.titleLabel.font = [UIFont systemFontOfSize:10];

       [bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        return cell;
    }
    else
    {
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
       [cell1.bt1 addTarget:self action:@selector(praise:) forControlEvents:UIControlEventTouchUpInside];
        return cell1;
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
-(void)jiari
{
    jiariViewController *jiari =  [[jiariViewController alloc]init];
    
  jiari.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:jiari animated:YES];
    
    
}
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //获取分区
    return 130;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return 10;
    } else {
        return 10;
    }
}

//获取尾部高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if(section==1)
    {
        return 10;
    }
    else{
        return 10;
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
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

