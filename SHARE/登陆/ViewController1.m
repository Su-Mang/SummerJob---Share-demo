//
//  ViewController1.m
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ViewController1.h"
#import "loginviewcoller.h"
@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    image.image = [UIImage imageNamed:@"login_1.jpg"];
    [self.view addSubview:image];
    //在延迟后使用默认模式调用当前线程上的接收器方法。
    [self performSelector:@selector(nextView) withObject:self afterDelay:1];
    
}
- (void)nextView {
   loginviewcoller *loginViewController1 = [[loginviewcoller alloc] init];
    [self presentViewController:loginViewController1 animated:NO completion:nil];
}
    // Do any additional setup after loading the view.


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
