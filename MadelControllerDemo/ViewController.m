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
    [btnNext setTitle:@"下一个转场" forState:UIControlStateNormal];
    [btnNext addTarget:self action:@selector(presentNext:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnNext];
    
}

-(void)presentNext:(UIButton *)sender{
    [self presnetXWViewController:[[SecondViewController alloc] init]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
