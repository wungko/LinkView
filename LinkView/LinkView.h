//
//  LKView.h
//  LKView
//
//  Created by 王 科 on 14-8-11.
//  Copyright (c) 2014年 wungko. All rights reserved.
//  初始化LKView 之后需要指定图片的宽度和高度 这里默认认为要展示的图片宽高为固定值
//

#import <UIKit/UIKit.h>

@interface LinkView : UIView{
    int _startX; //图片x 坐标
    int _orgionY; //图片距父布局y坐标
    int _horizontalSpacing; //图片间隔距离
}

- (void) resetStartX;
- (int) startX;
- (void) setStartX :(int) startX;

- (int) orgionY;
- (void) setOrgionY :(int) orgionY;

- (int) horizontalSpacing;
- (void) setHorizontalSpacing :(int) horizontalSpacing;

- (void) setHorizontalSpacing :(int) horizontalSpacing setOrgionY :(int) orgionY;

//水平方向添加 UIImageView 右对齐
- (void) addHorizontalImageViewGravityRightImageView :(UIImageView *) imageview;

//水平方向添加 UIImageView 左对齐
- (void) addHorizontalImageViewGravityLeftImageView :(UIImageView *) imageview;

//水平方向添加 imageName 右对齐
- (void) addHorizontalImageViewGravityRightImageName: (NSString *) imageName;

//水平方向添加 imageName 左对齐
- (void) addHorizontalImageViewGravityLeftImageName: (NSString *) imageName;
@end
