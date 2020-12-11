//
//  TestView.m
//  test啊
//
//  Created by 韩李涛 on 2020/12/11.
//

#import "TestView.h"
@interface TestView()<UIGestureRecognizerDelegate>
@end
@implementation TestView
static UIWindow *window_;
+ (void)showWithFrame:(CGRect)frame{
    window_ = [[UIWindow alloc] init];
    window_.frame = [UIScreen mainScreen].bounds;
    window_.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];

    window_.hidden = NO;
    window_.windowScene =  (UIWindowScene *)[[UIApplication sharedApplication].connectedScenes  anyObject];
    TestView *testView = [[TestView alloc]init];
    testView.backgroundColor = [UIColor redColor];
    
    testView.center= window_.center;
    testView.bounds = CGRectMake(0, 0, frame.size.width, frame.size.height);
    [window_ addSubview:testView];
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:testView action:@selector(tap:)];
    gesture.delegate = testView;
    gesture.numberOfTapsRequired =1;
    [window_ addGestureRecognizer:gesture];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    if (touch.view ==self) {
        return NO;
    }

    return YES;
}

- (void)tap:(UIGestureRecognizer *)gesture{
    window_ = nil;
}


@end
