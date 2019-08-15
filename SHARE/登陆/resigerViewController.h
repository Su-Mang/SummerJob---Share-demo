//
//  resigerViewController.h
//  SHARE
//
//  Created by 岳靖翔 on 2019/7/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassDelegate <NSObject>
-(void)put:(NSString*)str1and:(NSString*)str2;
@end
NS_ASSUME_NONNULL_BEGIN

@interface resigerViewController : UIViewController
@property(nonatomic,weak)UITextField *  imageview1;
@property(nonatomic,weak)UITextField *  imageview2;
@property(nonatomic,weak)UITextField *  imageview3;
@property(nonatomic,assign)id<PassDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
