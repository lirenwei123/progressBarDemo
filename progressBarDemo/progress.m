//
//  view.m
//  progressBarDemo
//
//  Created by rwli on 16/11/18.
//  Copyright © 2016年 companyName. All rights reserved.
//

#import "progress.h"

@implementation progress

- (void)drawRect:(CGRect)rect {
#define w rect.size.width
#define h rect.size.height
    CGPoint point =CGPointMake(w*0.5, h*0.5);
    CGFloat r =MIN(w, h)*0.4;
    CGFloat startAngel =-M_PI_2;
    CGFloat endAngel =startAngel+self.progress*M_PI*2;
    
    UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:point radius:r startAngle:startAngel endAngle:endAngel clockwise:YES];
    [[UIColor greenColor] set];
    path.lineWidth=10;
    [path stroke];
}
-(void)setProgress:(CGFloat)progress{
    _progress =progress;
    [self setNeedsDisplay];
}


@end
