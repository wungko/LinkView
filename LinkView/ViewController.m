//
//  ViewController.m
//  LinkView
//
//  Created by wungko on 14-8-13.
//  Copyright (c) 2014年 wungko. All rights reserved.
//

#import "ViewController.h"
#import "LinkView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LinkView *linkViewLeft;
@property (weak, nonatomic) IBOutlet LinkView *linkViewRight;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //左对齐
    [self.linkViewLeft setHorizontalSpacing:8 setOrgionY:10];
    [self.linkViewLeft resetStartX]; // table view 绑定数据时必须先调用此方法
    
    [self.linkViewLeft addHorizontalImageViewGravityLeftImageName:@"icon_red_04.png"];
    [self.linkViewLeft addHorizontalImageViewGravityLeftImageName:@"icon_blue_01.png"];

    
    //右对齐
    [self.linkViewRight setHorizontalSpacing:8 setOrgionY:10];
    [self.linkViewRight resetStartX];// table view 绑定数据时必须先调用此方法
    
    [self.linkViewRight addHorizontalImageViewGravityRightImageName:@"icon_blue_01.png"];
    [self.linkViewRight addHorizontalImageViewGravityRightImageName:@"icon_red_04.png"];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
