//
//  ViewController.m
//  gd
//
//  Created by 金贝恩资本 on 2018/5/8.
//  Copyright © 2018年 金贝恩资本. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrData=@[@"小米千元全面屏：抱歉，久等！625献上",
                   @"可怜狗狗被抛弃，苦苦等候主人半年",
                   @"三星中端新机改名，全面屏火力全开",
                   @"学会这些，这5种花不用去花店买了",
                   @"华为nova2S发布，剧透了荣耀10？"
                   ];
    [self initView];
}
-(void)initView{
    float w=[[UIScreen mainScreen] bounds].size.width;
    self.noticeView=[[GYRollingNoticeView alloc]initWithFrame:CGRectMake(0, 250, w, 30)];
    self.noticeView.dataSource=self;
    self.noticeView.delegate=self;
    [self.noticeView registerClass:[GYNoticeViewCell class] forCellReuseIdentifier:@"GYNoticeViewCell"];
    [self.view addSubview:self.noticeView];
    [self.noticeView reloadDataAndStartRoll];
    
}
- (NSInteger)numberOfRowsForRollingNoticeView:(GYRollingNoticeView *)rollingView{
    return self.arrData.count;
}
- (GYNoticeViewCell *)rollingNoticeView:(GYRollingNoticeView *)rollingView cellAtIndex:(NSUInteger)index{
    GYNoticeViewCell *cell = [rollingView dequeueReusableCellWithIdentifier:@"GYNoticeViewCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"第1种cell %@", self.arrData[index]];
    cell.contentView.backgroundColor = [UIColor orangeColor];
    if (index % 2 == 0) {
        cell.contentView.backgroundColor = [UIColor greenColor];
    }
    return cell;
}
- (void)didClickRollingNoticeView:(GYRollingNoticeView *)rollingView forIndex:(NSUInteger)index
{
    NSLog(@"点击的index: %ld", index);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
