//
//  CustomNavgitionBar.m
//  Shower
//
//  Created by WangShuChao on 2017/1/23.
//  Copyright © 2017年 无限未来. All rights reserved.
//

#import "CustomNavgitionBar.h"

/*  自动布局 */
#import "UIView+AutoLayout.h"

#import "UIMacro.h"
#import "CommonnMacro.h"


@interface CustomNavgitionBar ()

@property(nonatomic, strong)UIButton *leftButton;

@property(nonatomic, strong)UIButton *rightButton;

@property(nonatomic, strong)UILabel *titleLabel;

@property(nonatomic, strong)UIView *containerView;

@end


@implementation CustomNavgitionBar

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if (self != nil) {
        [self setup];
    }
    
    return self;
}

-(instancetype)init{

    self = [self initWithFrame:CGRectMake(0, 0, SREENWIDTH, NavigatorHeight)];
    return self;
}

#pragma mark - initUI
/*  安装所有的组件 */
-(void)setup{
    [self addSubview:self.containerView];
    /*  给容器位置 */
    [self.containerView autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:0];
    [self.containerView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:0];
    [self.containerView autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:0];
    [self.containerView autoSetDimension:ALDimensionHeight toSize:44];
    /*  给容器 加 子控件 */
    [self addSubViews:self.containerView];
}

-(void)addSubViews:(UIView *)superView{
    [superView addSubview:self.leftButton];
    [superView addSubview:self.rightButton];
    [superView addSubview:self.titleLabel];
    /*  标题 居中 （水，垂） */
    [self.titleLabel autoAlignAxisToSuperviewAxis:ALAxisVertical];
    [self.titleLabel autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    /*  左边按钮   距 父控件的左边距 */
    [self.leftButton autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:self.leftDistance];
    /* 左边按钮 水平  */
    [self.leftButton autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    /*  宽，高 */
    [self.leftButton autoSetDimension:ALDimensionWidth toSize:20];
    [self.leftButton autoSetDimension:ALDimensionHeight toSize:20];
    
    /*  右边按钮   距 父控件的右边距 */
    [self.rightButton autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:self.rightDistance];
    /* 右边按钮 水平  */
    [self.rightButton autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
    /*  宽，高 */
    [self.rightButton autoSetDimension:ALDimensionWidth toSize:20];
    [self.rightButton autoSetDimension:ALDimensionHeight toSize:20];

}

#pragma mark - methods

-(void)leftButtonViewAccordingContent:(id _Nonnull)viewContent{

    if ([viewContent isKindOfClass:[NSString class]] == YES) {
        [self.leftButton setTitle:viewContent forState:UIControlStateNormal];
    }else if ([viewContent isKindOfClass:[UIImage class]] == YES){
        [self.leftButton setImage:viewContent forState:UIControlStateNormal];
    }else{
    
        SELFLOG(@"leftButton 暂不支持其他类型");
    }
}

-(void)rightButtonViewAccordingContent:(id _Nonnull)viewContent{

    if ([viewContent isKindOfClass:[NSString class]] == YES) {
        [self.rightButton setTitle:viewContent forState:UIControlStateNormal];
    }else if ([viewContent isKindOfClass:[UIImage class]] == YES){
        [self.rightButton setImage:viewContent forState:UIControlStateNormal];
    }else{
        SELFLOG(@"rightButton 暂不支持其他类型");
    }
    
}

-(void)leftButtonAddTarget:(id)target action:(SEL)action{

    [self.leftButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

-(void)rightButtonAddTarget:(id)target action:(SEL)action{

    [self.rightButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - setter

-(void)setTitle:(NSString *)title{
    _title = title;
    [self.titleLabel setText:title];
}

#pragma mark - getter

-(NSInteger)leftDistance{
    
    if (_leftDistance == 0) {
        _leftDistance = 14;
    }
    return _leftDistance;
}

-(NSInteger)rightDistance{
    
    if (_rightDistance == 0) {
        _rightDistance = 14;
    }
    return _rightDistance;
}

-(UIView *)containerView{
    
    if (_containerView == nil) {
        _containerView = [UIView newAutoLayoutView];
    }
    
    return _containerView;
}

-(UIButton *)leftButton{
    
    if (_leftButton == nil) {
        _leftButton = [UIButton newAutoLayoutView];
    }
    
    return _leftButton;
}

-(UIButton *)rightButton{
    
    if (_rightButton == nil) {
        _rightButton = [UIButton newAutoLayoutView];
    }
    
    return _rightButton;
}

-(UILabel *)titleLabel{
    
    if (_titleLabel == nil) {
        _titleLabel = [UILabel newAutoLayoutView];
        [_titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_titleLabel setTextColor:[UIColor blackColor]];
    }
    return _titleLabel;
}

@end
