//
//  CustomNavgitionBar.h
//  Shower
//
//  Created by WangShuChao on 2017/1/23.
//  Copyright © 2017年 无限未来. All rights reserved.
// 自定义navigationBar

#import <UIKit/UIKit.h>

@interface CustomNavgitionBar : UIView

/**
 左边的按钮 距离左的距离 默认是14
 */
@property(nonatomic)NSInteger leftDistance;

/**
 右边的按钮 距离右的距离 默认是14
 */
@property(nonatomic)NSInteger rightDistance;

/**
 navigationbar 要显示的标题
 */
@property(nonatomic, nullable, copy)NSString *title;

/**
 左按钮内容
 @param viewContent 要显示的内容 类型（NSString ， UIImage）
 */
-(void)leftButtonViewAccordingContent:(id _Nonnull)viewContent;
/**
 右按钮内容
 @param viewContent 要显示的内容 类型（NSString ， UIImage）
 */
-(void)rightButtonViewAccordingContent:(id _Nonnull)viewContent;

/**
 给 左按钮 加事件
 @param target 目标 (仅 点击)
 @param action 执行的方法
 */
-(void)leftButtonAddTarget:(nullable id)target action:(nonnull SEL)action;

/**
 给 右按钮 加事件 (仅 点击)
 @param target 目标
 @param action 执行的方法
 */
-(void)rightButtonAddTarget:(nullable id)target action:(nonnull SEL)action;



@end
