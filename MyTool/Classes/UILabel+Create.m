//
//  UILabel+Creat.m
//  BusManager
//
//  Created by tangzhiqiang on 17/2/6.
//  Copyright © 2017年 com.yjihua. All rights reserved.
//

#import "UILabel+Create.h"

@implementation UILabel (Create)
/// 快速创建一个Label
+(instancetype)creatLabelWithTitle:(NSString *)title titleColor:(UIColor *)color font:(UIFont *)font{
    UILabel *label = [[[self class] alloc] init];
    label.text = title;
    label.textColor = color;
    label.font = font;
    [label sizeToFit];
    return label;
}

/// 给UILabel 设置行间距
-(void)setTitle:(NSString*)title lineSpacing:(CGFloat)lineSpacing alignment:( NSTextAlignment) alignment{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = alignment;
    paraStyle.lineSpacing = lineSpacing; //设置行间距
    paraStyle.hyphenationFactor = 1.0;
    paraStyle.firstLineHeadIndent = 0.0;
    paraStyle.paragraphSpacingBefore = 0.0;
    paraStyle.headIndent = 0;
    paraStyle.tailIndent = 0;
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{NSFontAttributeName:self.font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@0.7f,
                          NSForegroundColorAttributeName:self.textColor};
    
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:title attributes:dic];
    self.attributedText = attributeStr;
}


/// 给UILabel 设置行间距 字间距
-(void)setTitle:(NSString*)title lineSpacing:(CGFloat)lineSpacing interSpace:(CGFloat)interSpace{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = lineSpacing; //设置行间距
    paraStyle.hyphenationFactor = 1.0;
    paraStyle.firstLineHeadIndent = 0.0;
    paraStyle.paragraphSpacingBefore = 0.0;
    paraStyle.headIndent = 0;
    paraStyle.tailIndent = 0;
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{NSFontAttributeName:self.font, NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@(interSpace),NSForegroundColorAttributeName:self.textColor
    };
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:title attributes:dic];
    self.attributedText = attributeStr;
}
@end
