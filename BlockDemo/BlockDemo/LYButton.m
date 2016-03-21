//
//  LYButton.m
//  BlockDemo
//
//  Created by 米明 on 16/2/24.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "LYButton.h"

@implementation LYButton

//+ (instancetype)buttonWithType:(UIButtonType)buttonType{
//    LYButton * btn = [super buttonWithType:buttonType];
//    [btn addTarget:btn action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
//    return btn;
//}

- (void)btnAction:(id)sender{
    if (self.actionBlock) {
        self.actionBlock(sender);
    }
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}



@end
