//
//  ViewController.m
//  MadelControllerDemo
//
//  Created by 大家保 on 2017/3/23.
//  Copyright © 2017年 大家保. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIViewController+XWModal.h"
#import "MXPullDownMenu.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btnNext = [UIButton new];
    btnNext.frame = CGRectMake((self.view.bounds.size.width - 100)/2, self.view.center.y, 100, 50);
    btnNext.titleLabel.font = [UIFont  boldSystemFontOfSize:14.0f];
    [btnNext setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btnNext setTitle:@"选择商品" forState:UIControlStateNormal];
    [btnNext addTarget:self action:@selector(presentNext:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnNext];
    
    
    
    MXPullDownMenu *menu=[[MXPullDownMenu alloc]initWithArray:nil selectedColor:[UIColor redColor] frame:CGRectMake(0,64, self.view.frame.size.width, 44) backGroundViewInView:nil];
    [self.view addSubview:menu];
    
    NSArray *array=@[@[@"苹果",@"香蕉",@"猕猴桃",@"火龙果",@"荔枝"],@[@"白菜",@"萝卜",@"香菜",@"花菜",@"包菜"],@[@"包子",@"饺子",@"混沌",@"面条"]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [menu updateContentWithArray:array];
    });
    
    NSArray *array2=@[@[@"白菜",@"萝卜",@"香菜",@"花菜",@"包菜"],@[@"包子",@"饺子",@"混沌",@"面条"]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [menu updateContentWithArray:array2];
    });
    
}

-(void)presentNext:(UIButton *)sender{
    [self presnetXWViewController:[[SecondViewController alloc] init] withOptions:nil completion:^{
        
    } dissmissBlock:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
