//
//  ViewController.m
//  StarPictureVC
//
//  Created by duogaojituan on 16/8/30.
//  Copyright © 2016年 duogaojituan. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"


@interface ViewController ()
{
    UIButton * button ;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self  createButton];

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)createButton{
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    [imageView setImage:[UIImage imageNamed:@"leftImage.jpg"]];
    imageView.userInteractionEnabled = YES;
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame       = CGRectMake(WIDTH/2-60, HEIGHT*0.85, 120, 30) ;
    [button setTitle:@"点击返回" forState:UIControlStateNormal];
    [button.layer setBorderWidth:1.0];
    [button.layer setMasksToBounds:YES];
    [button.layer setCornerRadius:15.0];
    button.layer.borderColor = [UIColor whiteColor].CGColor ;
    button.titleLabel.font = [UIFont systemFontOfSize:23];;
    [button setTintColor:[UIColor whiteColor]];
    [button addTarget:self action:@selector(bttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    [imageView addSubview:button];
    [self.view addSubview:imageView];

}
-(void)bttonClick{
    FirstViewController * first = [[FirstViewController alloc]init];
    first.modalTransitionStyle  = UIModalTransitionStyleCrossDissolve ;
    
    [self presentViewController:first animated:YES completion:nil];
    //世界
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
