//
//  QuickRegistationViewController.m
//  Shower
//
//  Created by WangShuChao on 2017/2/3.
//  Copyright © 2017年 无限未来. All rights reserved.
//快速注册

#import "QuickRegistationViewController.h"

#import "CustomNavgitionBar.h"

@interface QuickRegistationViewController ()

@end

@implementation QuickRegistationViewController

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
    self.navgitionBar.title = @"快速注册";
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
