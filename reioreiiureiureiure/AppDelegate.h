//
//  AppDelegate.h
//  reioreiiureiureiure
//
//  Created by 刘隆昌 on 15-1-23.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    ViewController * _viewController;
    
}
@property (strong, nonatomic) UIWindow *window;

@property(nonatomic,strong)ViewController * viewController;



@end

