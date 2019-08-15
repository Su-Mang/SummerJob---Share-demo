//
//  ShareHome.h
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "homeTableViewCell.h"
#import "jiariViewController.h"
NS_ASSUME_NONNULL_BEGIN


@interface ShareHome :UIViewController<UIScrollViewDelegate>
@property UIPageControl *pageControl;
@property NSTimer *timer;
@property UIScrollView *scrollView;

@end

NS_ASSUME_NONNULL_END
