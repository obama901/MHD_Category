[![Ardee_Logo_256x256.png](https://s15.postimg.cc/t507nywzf/Ardee_Logo_256x256.png)](https://postimg.cc/image/5e0u5uws7/)
# MHD_Category
### 说明:
一个为一些常用控件设置提供简便化操作的分类集合<br>
工具包在工程里面名为"MHD_Category"的文件夹下;<br>
这是为了快速使用代码构建界面的小方法,之后会有更新.

### 实例:

* UILabel:
```
- (UILabel *)normal_label//普通方式
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
```
```
- (UILabel *)mhd_label//MHD_Category方式
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
```
* UIButton:
```
- (UIButton *)normal_button//普通方式
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
```
```
- (UIButton *)mhd_button//MHD_Category方式
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
```
* UITextfield:
```
- (UITextField *)normal_textfield//普通方式
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
```
```
- (UITextField *)mhd_textfield//MHD_Category方式
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
```
* 另外还有为UIview添加阴影等可根据demo添加.
* 最后希望也有人可以看到这个,有更好的第三方可以分享一下,谢谢.
