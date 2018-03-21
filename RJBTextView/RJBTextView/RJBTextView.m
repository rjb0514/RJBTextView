//
//  RJBTextView.m
//  ThinkforGirl
//
//  Created by 茹 on 2018/3/20.
//  Copyright © 2018年 bin. All rights reserved.
//

#import "RJBTextView.h"

@implementation RJBTextView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //默认站位 文字大小
        self.font = [UIFont systemFontOfSize:18];
        //默认站位 文字颜色
        self.placeholderColor = [UIColor redColor];
        
        //代码改 text 不会走通知
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:nil];
        
    }
    return self;
}


- (void)textDidChange:(UITextView *)textView {
    NSLog(@"%@",textView);
    [self setNeedsDisplay];
//    [self layoutIfNeeded]
    
}

- (void)drawRect:(CGRect)rect {
    
//    if (self.text.length || self.attributedText.length) {
//        //如果有文字直接返回
//        return;
//    }
    
    //如果有文字
    if (self.hasText) {
        return;
    }
    
    //处理rect
    rect.origin.x = 3;
    rect.origin.y = 7;
    rect.size.width  -= 2 * rect.origin.x;
    
    
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setValue:self.font forKey:NSFontAttributeName];
    [dic setValue:self.placeholderColor forKey:NSForegroundColorAttributeName];
    
    [self.placeholder drawInRect:rect withAttributes:dic];
    
    
}

#pragma mark -防止随时改变文字颜色没效果
- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    
    [self setNeedsDisplay];
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    
    [self setNeedsDisplay];
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text {
    [super setText:text];
    
    [self setNeedsDisplay];
}

- (void)setAttributedText:(NSAttributedString *)attributedText {
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
}


- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
