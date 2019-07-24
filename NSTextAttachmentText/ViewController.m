//
//  ViewController.m
//  NSTextAttachmentText
//
//  Created by smppw_zwq on 2019/6/14.
//  Copyright © 2019 smppw_zwq. All rights reserved.
//

#import "ViewController.h"

#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height
// 获取屏幕宽度 即:整屏的宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableAttributedString *newstring = [[NSMutableAttributedString alloc] initWithString:@" 上周，排排网有额外6位金V客户主动在直营店查看贵司信息，签约机构可查看全部金V客户"];
    NSTextAttachment *imageAtta = [[NSTextAttachment alloc] init];
    imageAtta.bounds = CGRectMake(0, -1, 27, 14);
    imageAtta.image = [UIImage imageNamed:@"热搜"];
    NSAttributedString *attach = [NSAttributedString attributedStringWithAttachment:imageAtta];
    [newstring insertAttributedString:attach atIndex:0];

    UILabel * imageLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 100, kScreenWidth-30, 100)];
    imageLabel.backgroundColor = [UIColor grayColor];
    imageLabel.numberOfLines=0;
    imageLabel.attributedText= newstring;
    [self.view addSubview:imageLabel];

    
}


@end
