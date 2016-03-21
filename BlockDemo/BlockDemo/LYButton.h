//
//  LYButton.h
//  BlockDemo
//
//  Created by 米明 on 16/2/24.
//  Copyright © 2016年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LYButtonAction)(id sender);

@interface LYButton : UIButton

@property(nonatomic,copy)LYButtonAction actionBlock;

@end
