//
//  ViewController.m
//  test啊
//
//  Created by 韩李涛 on 2020/12/11.
//

#import "ViewController.h"
#import "TestView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *view =[[UIView alloc]init];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor purpleColor];
    view.frame = CGRectMake(100, 100, 100, 40);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [TestView showWithFrame:CGRectMake(80, 150, 300, 300)];
}
@end
