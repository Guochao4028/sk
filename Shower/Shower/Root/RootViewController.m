//
//  RootViewController.m
//  Shower
//
//  Created by WangShuChao on 2017/1/23.
//  Copyright © 2017年 无限未来. All rights reserved.
// 所有这个项目 ViewController 的父类

#import "RootViewController.h"

#import "CustomNavgitionBar.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 基础方法

- (void)setupNavgitionBar{
    [self.navigationController setNavigationBarHidden:YES];
    self.navgitionBar = [[CustomNavgitionBar alloc]init];
    [self.view addSubview:self.navgitionBar];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
