//
//  MainViewViewController.m
//  SimpleApplication
//
//  Created by masuimasanori on 2013/12/13.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import "MainViewViewController.h"

@interface MainViewViewController ()

@end

@implementation MainViewViewController
@synthesize flagOperatorSymbol;
@synthesize strOriginalData;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // クラスCaluculateDataのインスタンス生成／初期化
    calcData = [[CaluculateData alloc]init];
    // 現在の値を保つインスタンスの生成／初期化
    mstCurrentData = [[NSMutableString alloc]init];
    [mstCurrentData setString:self.textDisplay.text];
    
    // 演算子押下前の値を格納する
    strOriginalData = @"";
    
    flagOperatorSymbol = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonZeroTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_ZERO FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonOneTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_ONE FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonTwoTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_TWO FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonThreeTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_THREE FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonFourTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_FOUR FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonFiveTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_FIVE FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonSixTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_SIX FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonSevenTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_SEVEN FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonEightTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_EIGHT FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}

- (IBAction)buttonNineTouched:(id)sender {
    [mstCurrentData setString:[calcData CaluclateNewData:mstCurrentData AddData:BUTTON_NINE FlagDisplayLastData:flagOperatorSymbol]];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}


- (IBAction)buttonClearTouched:(id)sender {
    [mstCurrentData setString:BUTTON_DEFAULT];
    self.textDisplay.text = mstCurrentData;
    flagOperatorSymbol = NO;
}
- (IBAction)buttonEqualTouched:(id)sender {
    [mstCurrentData setString:[calcData GetResult:mstCurrentData OriginalData:strOriginalData]];
    self.textDisplay.text = mstCurrentData;
    [calcData setOperatorSymbol:@""];
    strOriginalData = @"";
}
- (IBAction)buttonAdditionTouched:(id)sender
{
    if((![strOriginalData isEqualToString:@""])&&(!flagOperatorSymbol))
    {
        // 元の数、演算子、足す数が入力されている場合は計算結果を現在の値とする
        [mstCurrentData setString:[calcData GetResult:mstCurrentData OriginalData:strOriginalData]];
        self.textDisplay.text = mstCurrentData;
    }
    [calcData setOperatorSymbol:CALUCULATE_ADDITION];
    strOriginalData = [[NSString alloc] initWithString:mstCurrentData];
    flagOperatorSymbol = YES;
}
- (IBAction)buttonSubtractionTouched:(id)sender {
    if((![strOriginalData isEqualToString:@""])&&(!flagOperatorSymbol))
    {
        // 元の数、演算子、引く数が入力されている場合は計算結果を現在の値とする
        [mstCurrentData setString:[calcData GetResult:mstCurrentData OriginalData:strOriginalData]];
        self.textDisplay.text = mstCurrentData;
    }
    [calcData setOperatorSymbol:CALUCULATE_SUBTRACTION];
    strOriginalData = [[NSString alloc] initWithString:mstCurrentData];
    flagOperatorSymbol = YES;
}
- (IBAction)buttonMultiplicationTouched:(id)sender {
    if((![strOriginalData isEqualToString:@""])&&(!flagOperatorSymbol))
    {
        // 元の数、演算子、掛ける数が入力されている場合は計算結果を現在の値とする
        [mstCurrentData setString:[calcData GetResult:mstCurrentData OriginalData:strOriginalData]];
        self.textDisplay.text = mstCurrentData;
    }
    [calcData setOperatorSymbol:CALUCULATE_MULTIPLICATION];
    strOriginalData = [[NSString alloc] initWithString:mstCurrentData];
    flagOperatorSymbol = YES;
}
- (IBAction)buttonDivisionTouched:(id)sender {
    if((![strOriginalData isEqualToString:@""])&&(!flagOperatorSymbol))
    {
        // 元の数、演算子、割る数が入力されている場合は計算結果を現在の値とする
        [mstCurrentData setString:[calcData GetResult:mstCurrentData OriginalData:strOriginalData]];
        self.textDisplay.text = mstCurrentData;
    }
    [calcData setOperatorSymbol:CALUCULATE_DIVISION];
    strOriginalData = [[NSString alloc] initWithString:mstCurrentData];
    flagOperatorSymbol = YES;
}
@end
