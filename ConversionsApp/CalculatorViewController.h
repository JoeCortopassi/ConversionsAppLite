//
//  CalculatorViewController.h
//  ConversionsApp
//
//  Created by Joe Cortopassi on 1/15/13.
//  Copyright (c) 2013 Joe Cortopassi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Calculations;

typedef enum {
    inputLeft,
    inputRight
} InputSide;


@interface CalculatorViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, assign) CGRect bounds;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, assign) InputSide selectedInput;
@property (nonatomic, strong) Calculations *calculator;

/**********************
    Display elements
 **********************/
// Input fields
@property (nonatomic, strong) UILabel *leftInputLabel;
@property (nonatomic, strong) UIButton *leftInputOverlay;
@property (nonatomic, strong) UILabel *rightInputLabel;
@property (nonatomic, strong) UIButton *rightInputOverlay;
// Pickers
@property (nonatomic, strong) UIPickerView *leftPickerView;
@property (nonatomic, strong) UIPickerView *rightPickerView;
// Number Pad
@property (nonatomic, strong) UIButton *oneButton;
@property (nonatomic, strong) UIButton *twoButton;
@property (nonatomic, strong) UIButton *threeButton;
@property (nonatomic, strong) UIButton *fourButton;
@property (nonatomic, strong) UIButton *fiveButton;
@property (nonatomic, strong) UIButton *sixButton;
@property (nonatomic, strong) UIButton *sevenButton;
@property (nonatomic, strong) UIButton *eightButton;
@property (nonatomic, strong) UIButton *nineButton;
@property (nonatomic, strong) UIButton *zeroButton;
@property (nonatomic, strong) UIButton *periodButton;
@property (nonatomic, strong) UIButton *clearButton;

@end
