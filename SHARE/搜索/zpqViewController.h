//
//  zpqViewController.h
//  SHARE
//
//  Created by 岳靖翔 on 2019/8/2.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "jiuTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@protocol CzDelegate <NSObject>
-(void) pu:(NSInteger)a and:(NSInteger)b;
@end
@interface zpqViewController : UIViewController
@property  id<CzDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
