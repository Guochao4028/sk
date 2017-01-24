//
//  CommonnMacro.h
//  Shower
//
//  Created by WangShuChao on 2017/1/24.
//  Copyright © 2017年 无限未来. All rights reserved.
//

#ifndef CommonnMacro_h
#define CommonnMacro_h

//是否是内网版本
#define ISINSIDENEWWORK YES


/**
 打印log 
 如果是内网测试 就是打印log， 不是内网就把log的功能关上
 可能增加app的效率
 */
#ifdef  ISINSIDENEWWORK
#define SELFLOG(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#endif

#endif /* CommonnMacro_h */
