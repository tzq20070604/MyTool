//
//  UILabel+Creat.h
//  BusManager
//
//  Created by tangzhiqiang on 17/2/6.
//  Copyright © 2017年 com.yjihua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Create)
/// 快速创建一个Label
+(instancetype)creatLabelWithTitle:(NSString *)title titleColor:(UIColor *)color font:(UIFont *)font;

/// 给UILabel 设置行间距
-(void)setTitle:(NSString*)title lineSpacing:(CGFloat)lineSpacing alignment:( NSTextAlignment) alignment;

/// 给UILabel 设置行间距 字间距
-(void)setTitle:(NSString*)title lineSpacing:(CGFloat)lineSpacing interSpace:(CGFloat)interSpace;

@end
