//
//  ViewController.m
//  AutoGenerateProperty
//
//  Created by JFQ on 2017/11/14.
//  Copyright © 2017年 Feroo. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+Property.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dic = @{
                          @"name" : @"应填写",
                          @"success" : @"ture",
                          @"number" : @1,
                          @"price" : @120,
                          @"list" : @[],
                          @"rule" : @{}
                          };
    [dic createPropertyCode];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
