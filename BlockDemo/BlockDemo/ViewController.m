//
//  ViewController.m
//  BlockDemo
//
//  Created by 米明 on 16/2/24.
//  Copyright © 2016年 LY. All rights reserved.
//


#import "ViewController.h"

#import "LYButton.h"

@interface ViewController ()

{
    NSInteger index;
}

@property (weak, nonatomic) IBOutlet UILabel *textL;

@property (weak, nonatomic) IBOutlet LYButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1:代码创建的
    
//    LYButton * btn = [LYButton buttonWithType:UIButtonTypeSystem];
//    
//    btn.backgroundColor = [UIColor blueColor];
//    
//    [btn setTitle:@"曹大神" forState:UIControlStateNormal];
//    
//    btn.tintColor = [UIColor whiteColor];
//    
//    btn.frame = CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width - 20, 60);
//    
//    [self.view addSubview:btn];
//
//    btn.actionBlock = ^(id sender){
//        
//        [self whyClickMe];
//
//    };
    
//    2:SB
    self.btn.actionBlock = ^(id sender){
        [self whyClickMe];
    };
}
- (NSArray *)texts{
    return @[@"点我!",@"让你点你就点,再点一个试试!",@"你真听话,你一定是猴子请来的逗B!",@"Fuck Shit ! You are Bad!"];
}

- (void)whyClickMe{

    if (++index>([[self texts] count]-1)) {
        index = 0;
    }
    self.textL.text = [[self texts] objectAtIndex:index];

}

@end
