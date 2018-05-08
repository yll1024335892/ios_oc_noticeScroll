//
//  ViewController.h
//  gd
//
//  Created by 金贝恩资本 on 2018/5/8.
//  Copyright © 2018年 金贝恩资本. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GYRollingNoticeView.h"
#import "CustomNoticeCell.h"

@interface ViewController : UIViewController<GYRollingNoticeViewDelegate,GYRollingNoticeViewDataSource>
@property(nonatomic,strong)GYRollingNoticeView *noticeView;
@property(nonatomic,strong)NSArray *arrData;
@end

