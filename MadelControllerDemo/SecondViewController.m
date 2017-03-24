//
//  SecondViewController.m
//  ZFJianShuTransition
//
//  Created by macOne on 16/1/5.
//  Copyright © 2016年 WZF. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+XWModal.h"
#import "SpecWindowView.h"
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height //屏幕高度
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width //屏幕宽度

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *cancelButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 150)];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    [cancelButton addTarget:self action:@selector(cancel:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cancelButton];
    
    
    SpecWindowView * specView = [[NSBundle mainBundle]loadNibNamed:@"SpecWindowView" owner:nil options:nil].firstObject;
    specView.frame = CGRectMake(0, 150, SCREEN_WIDTH, SCREEN_HEIGHT-150);
    specView.CallBackWithCloseWindow=^(NSString * type,NSString * goodsId){
        [self dismissXWModalView];
    };
    specView.CallBackWithSiftSelected=^(NSDictionary * dic){
        NSLog(@"选择的商品:%@",dic);
    };
    [self.view addSubview:specView];
}

-(void)cancel:(UIButton *)sender{
    [self dismissXWModalView];
}

@end
