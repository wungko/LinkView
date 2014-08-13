//
//  LKView.m
//  LKView
//
//  Created by 王 科 on 14-8-11.
//  Copyright (c) 2014年 wungko. All rights reserved.
//

#import "LinkView.h"
//int verticalIndex = 0; todo 扩展纵向排序

@implementation LinkView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) setHorizontalSpacing:(int)horizontalSpacing setOrgionY:(int)orgionY {
    _horizontalSpacing = horizontalSpacing;
    _orgionY = orgionY;
}

//设置图片距父布局y轴距离
- (void) setOrgionY:(int)orgionY {
    _orgionY = orgionY;
}

- (int) orgionY {
    return  _orgionY;
}

//重置图片x轴起始位置
- (void) resetStartX {
    _startX = 0;
}

- (int) startX {
    return _startX;
}

- (void)setStartX:(int)startX {
    _startX = startX;
}


- (int) horizontalSpacing {
    return _horizontalSpacing;
}

- (void) setHorizontalSpacing:(int)horizontalSpacing
{
    _horizontalSpacing = horizontalSpacing;
}

- (void) addHorizontalImageViewGravityRightImageView:(UIImageView *)imageview
{
    [self setStartX:imageview.frame.size.width + [self startX] + [self horizontalSpacing]];
    
    int x = self.frame.size.width - [self startX];
    imageview.frame = CGRectMake(x, [self orgionY], imageview.frame.size.width, imageview.frame.size.height);
    
    [self addSubview:imageview];
}


- (void) addHorizontalImageViewGravityLeftImageView:(UIImageView *)imageview
{
    int x = [self startX];
    imageview.frame = CGRectMake(x, [self orgionY], imageview.frame.size.width, imageview.frame.size.height);
    [self addSubview:imageview];
    [self setStartX:imageview.frame.size.width + [self startX] + [self horizontalSpacing]];
}


- (void) addHorizontalImageViewGravityRightImageName:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    UIImage * uiImage = [UIImage imageNamed:imageName];
    [imageView setImage:uiImage];
    
    int x = self.frame.size.width - (uiImage.size.width + [self startX]);
    imageView.frame = CGRectMake(x, [self orgionY], uiImage.size.width, uiImage.size.height);
    
    [self addSubview:imageView];
    [self setStartX:[self startX] + uiImage.size.width + [self horizontalSpacing]];
    
}


- (void) addHorizontalImageViewGravityLeftImageName:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    UIImage *uiImage=[UIImage imageNamed:imageName];
    [imageView setImage:uiImage];
    
    int x = [self startX];
    imageView.frame = CGRectMake(x, [self orgionY], uiImage.size.width, uiImage.size.height);
    
    [self addSubview:imageView];
    [self setStartX:[self startX] + uiImage.size.width + [self horizontalSpacing]];
}


@end
