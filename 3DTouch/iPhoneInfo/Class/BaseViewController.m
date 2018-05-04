//
//  BaseViewController.m
//  iPhoneInfo
//
//  Created by saifing_82 on 15/10/20.
//  Copyright © 2015年 JamesGu. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

//预览页面 底部Action Items
- (NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction *p1 =[UIPreviewAction actionWithTitle:@"不要酱紫" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
    }];
    
    UIPreviewAction *p2 =[UIPreviewAction actionWithTitle:@"好了啦" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
    }];
    
    NSArray *actions = @[p1,p2];
    return actions;
}
@end
