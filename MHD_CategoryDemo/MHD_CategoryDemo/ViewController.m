//
//  ViewController.m
//  MHD_CategoryDemo
//
//  Created by Ardee on 2018/5/21.
//  Copyright © 2018年 Ardee. All rights reserved.
//

#import "UITextField+MHD_TextFieldCommonSetting.h"
#import "UIButton+MHD_ButtonCommonSetting.h"
#import "UILabel+MHD_LabelCommonSetting.h"
#import "UIView+MHD_ViewCommonSetting.h"
#import "ViewController.h"

//屏幕尺寸
#define MAIN_SIZE ([ [ UIScreen mainScreen ] bounds ].size)
// 带有RGBA的颜色设置
#define UICOLOR_RGB(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

@interface ViewController ()
@property (nonatomic,retain)UILabel *normal_label;
@property (nonatomic,retain)UILabel *mhd_label;
@property (nonatomic,retain)UIButton *normal_button;
@property (nonatomic,retain)UIButton *mhd_button;
@property (nonatomic,retain)UITextField *normal_textfield;
@property (nonatomic,retain)UITextField *mhd_textfield;
@property (nonatomic,retain)UIView *normal_view;
@property (nonatomic,retain)UIView *mhd_view;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UICOLOR_RGB(255, 255, 255, 1);
    [self normal_label];
    [self mhd_label];
    [self normal_button];
    [self mhd_button];
    [self normal_textfield];
    [self mhd_textfield];
    [self normal_view];
    [self mhd_view];
}
- (UILabel *)normal_label
{
    if (!_normal_label) {
        _normal_label = [UILabel new];
        _normal_label.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2, 30);
        _normal_label.center = CGPointMake(MAIN_SIZE.width/4, 50);
        _normal_label.text = @"NormalLabel";
        _normal_label.textAlignment = NSTextAlignmentCenter;
        _normal_label.font = [UIFont systemFontOfSize:18];
        _normal_label.textColor = UICOLOR_RGB(0, 191, 255, 1);
        [self.view addSubview:_normal_label];
    }
    return _normal_label;
}
- (UILabel *)mhd_label
{
    if (!_mhd_label) {
        _mhd_label = [UILabel new];
        _mhd_label.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2, 30);
        _mhd_label.center = CGPointMake(MAIN_SIZE.width*3/4, 50);
        [_mhd_label mhd_labelWithText:@"MhdLabel" color:UICOLOR_RGB(0, 191, 255, 1) font:18 alignment:NSTextAlignmentCenter];
        [self.view addSubview:_mhd_label];
    }
    return _mhd_label;
}
- (UITextField *)normal_textfield
{
    if (!_normal_textfield) {
        _normal_textfield = [UITextField new];
        _normal_textfield.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2, 30);
        _normal_textfield.center = CGPointMake(MAIN_SIZE.width/4, 100);
        _normal_textfield.text = @"NormalTextfield";
        _normal_textfield.placeholder = @"NormalTextfield";
        _normal_textfield.textColor = UICOLOR_RGB(0, 250, 154, 1);
        _normal_textfield.textAlignment = NSTextAlignmentCenter;
        _normal_textfield.font = [UIFont systemFontOfSize:18];
        [self.view addSubview:_normal_textfield];
    }
    return _normal_textfield;
}
- (UITextField *)mhd_textfield
{
    if (!_mhd_textfield) {
        _mhd_textfield = [UITextField new];
        _mhd_textfield.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2, 30);
        _mhd_textfield.center = CGPointMake(MAIN_SIZE.width*3/4, 100);
        [_mhd_textfield mhd_textFieldWithText:@"MhdTextfield" placeHolder:@"MhdTextfield" textColor:UICOLOR_RGB(0, 250, 154, 1) alignment:NSTextAlignmentCenter font:18];
        [self.view addSubview:_mhd_textfield];
    }
    return _mhd_textfield;
}
- (UIButton *)normal_button
{
    if (!_normal_button) {
        _normal_button = [UIButton new];
        _normal_button.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2-20, 30);
        _normal_button.center = CGPointMake(MAIN_SIZE.width/4, 150);
        [_normal_button setTitle:@"NormalButton" forState:UIControlStateNormal];
        [_normal_button setBackgroundColor:UICOLOR_RGB(255, 255, 224, 1)];
        _normal_button.titleLabel.font = [UIFont systemFontOfSize:18];
        [_normal_button setTitleColor:UICOLOR_RGB(255, 69, 0, 1) forState:UIControlStateNormal];
        _normal_button.layer.cornerRadius = 5.f;
        [self.view addSubview:_normal_button];
    }
    return _normal_button;
}
- (UIButton *)mhd_button
{
    if (!_mhd_button) {
        _mhd_button = [UIButton new];
        _mhd_button.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2-20, 30);
        _mhd_button.center = CGPointMake(MAIN_SIZE.width*3/4, 150);
        [_mhd_button mhd_buttonWithTitle:@"MhdButton" backColor:UICOLOR_RGB(255, 255, 224, 1) font:18 titleColor:UICOLOR_RGB(255, 69, 0, 1) cornerRadius:5.f];
        [self.view addSubview:_mhd_button];
    }
    return _mhd_button;
}
- (UIView *)normal_view
{
    if (!_normal_view) {
        _normal_view = [UIView new];
        _normal_view.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2-20, 30);
        _normal_view.center = CGPointMake(MAIN_SIZE.width/4, 200);
        _normal_view.backgroundColor = UICOLOR_RGB(245, 245, 245, 1);
        _normal_view.layer.shadowOffset =  CGSizeMake(0, 1);
        _normal_view.layer.shadowOpacity = 0.35;
        _normal_view.layer.shadowColor =  UICOLOR_RGB(105, 105, 105, 1).CGColor;
        [self.view addSubview:_normal_view];
    }
    return _normal_view;
}
- (UIView *)mhd_view
{
    if (!_mhd_view) {
        _mhd_view = [UIView new];
        _mhd_view.bounds = CGRectMake(0, 0, MAIN_SIZE.width/2-20, 30);
        _mhd_view.center = CGPointMake(MAIN_SIZE.width*3/4, 200);
        _mhd_view.backgroundColor = UICOLOR_RGB(245, 245, 245, 1);
        [_mhd_view mhd_viewWithShadowOpacity:0.35 color:UICOLOR_RGB(105, 105, 105, 1)];
        [self.view addSubview:_mhd_view];
    }
    return _mhd_view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
