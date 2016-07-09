//
//  ViewController.m
//  reioreiiureiureiure
//
//  Created by 刘隆昌 on 15-1-23.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "ViewController.h"

#define DistanceV 20
#define DistanceH 50

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectZero];
    label.text = [NSString stringWithFormat:@"%@",[NSDate date]];
    [label sizeToFit];
  //  [self.view addSubview:label];
    
    UIView * shadView = [[UIView alloc]init];
    [shadView addSubview:label];
    shadView.bounds = CGRectMake(0, 0,label.bounds.size.width,label.bounds.size.height);
    label.backgroundColor = [UIColor brownColor];
    label.textColor = [UIColor whiteColor];
    label.layer.cornerRadius = 5;
    label.layer.masksToBounds = YES;
    CGPoint point = CGPointMake(DistanceV+CGRectGetWidth(label.frame)/2,150);
    shadView.center = point;
    shadView.layer.cornerRadius = 5.0;
    shadView.layer.shadowColor = [UIColor brownColor].CGColor;
    shadView.layer.shadowOpacity = 1.0;
    shadView.layer.shadowRadius = 3.0;
    shadView.layer.shadowOffset = CGSizeMake(0.0f,0.0f);
    [self.view addSubview:shadView];
    
    
    
    UIImageView * animateImageView = [[UIImageView alloc] init];
    animateImageView.animationImages = [NSArray arrayWithObjects:
                                        [UIImage imageNamed:@"1"],
                                        [UIImage imageNamed:@"2"],
                                        [UIImage imageNamed:@"3"],
                                        [UIImage imageNamed:@"4"],
                                        [UIImage imageNamed:@"5"],nil];
    animateImageView.animationDuration = 2.0f;
    animateImageView.animationRepeatCount = 0;
    [animateImageView startAnimating];
    animateImageView.backgroundColor = [UIColor brownColor];
    animateImageView.frame = CGRectMake(DistanceV, CGRectGetMaxY(shadView.frame)+DistanceH,100,40);
    animateImageView.layer.masksToBounds = YES;
    animateImageView.layer.cornerRadius = 4;
    
    UIView * shaView = [[UIView alloc]initWithFrame:CGRectMake(DistanceV, CGRectGetMaxY(shadView.frame)+DistanceH,100,40)];
    
    shaView.layer.cornerRadius = 5;
    shaView.layer.shadowColor = [UIColor brownColor].CGColor;
    shaView.layer.shadowRadius = 3.0;
    shaView.layer.shadowOpacity = 1.0;
    shaView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    
    [shaView addSubview:animateImageView];
    [self.view addSubview:shaView];
    //[self.view addSubview:animateImageView];
    
    
    
    
    
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
