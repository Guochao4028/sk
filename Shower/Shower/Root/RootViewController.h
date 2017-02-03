//
//  RootViewController.h
//  Shower
//
//  Created by WangShuChao on 2017/1/23.
//  Copyright © 2017年 无限未来. All rights reserved.
// 所有这个项目 ViewController 的父类

#import <UIKit/UIKit.h>

@class CustomNavgitionBar;

@interface RootViewController : UIViewController{

    CustomNavgitionBar *_navgitionBar;
}

@property(nonatomic, strong)CustomNavgitionBar *navgitionBar;

/**
 加载自定义的navgaitionBar
 */
- (void)setupNavgitionBar;

/**
 初始化UI 
 只是提供的接口 专门为重写准备 代码规范
 */
- (void)initUI;

/**
 初始化数据 
 只是提供的接口 专门为重写准备 代码规范
 */
- (void)initData;
@end
