//
//  LoginViewController.m
//  Shower
//
//  Created by WangShuChao on 2017/1/23.
//  Copyright © 2017年 无限未来. All rights reserved.
// 登录

#import "LoginViewController.h"
#import "CustomNavgitionBar.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initUI{
    [self setupNavgitionBar];
    self.navgitionBar.title = @"登 录";
    
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
