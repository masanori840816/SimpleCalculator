//
//  CaluculateData.m
//  SimpleApplication
//
//  Created by masuimasanori on 2013/12/15.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import "CaluculateData.h"

@implementation CaluculateData

// Get Set
- (NSString *)strOperatorSymbol{
    return strOperatorSymbol;
}
- (void)setOperatorSymbol: (NSString *)strSetOperatorSymbol{
    strOperatorSymbol = strSetOperatorSymbol;
}

- (NSMutableString *)CaluclateNewData: (NSMutableString *) mstCurrentData AddData:(NSString *)strNewData FlagDisplayLastData:(BOOL)flagHideLastData
{
    // 現在表示されている数値が0、または演算子が挿入された場合は入力された番号だけを表示する
    if((![mstCurrentData isEqualToString:BUTTON_ZERO])&&(!flagHideLastData)){
        [mstCurrentData appendString:strNewData];
    }else{
        [mstCurrentData setString:strNewData];
    }
    
    return mstCurrentData;
}

- (NSMutableString *)GetResult:(NSMutableString *)mstCurrentData OriginalData:(NSString *)strOriginalData
{
    int intResulNumber = 0;
    if((![strOriginalData isEqualToString:@""])&&(strOriginalData != NULL)&&(![strOperatorSymbol isEqualToString:@""])&&(strOperatorSymbol != NULL))
    {
        if ([strOperatorSymbol isEqualToString:CALUCULATE_ADDITION])
        {
            intResulNumber = [strOriginalData intValue] + [mstCurrentData intValue];
            // 計算結果を新しいmstCurrentDataとする
            [mstCurrentData setString:[[NSNumber numberWithUnsignedInt:intResulNumber] stringValue]];
        }
        else if([strOperatorSymbol isEqualToString:CALUCULATE_SUBTRACTION])
        {
            intResulNumber = [strOriginalData intValue] - [mstCurrentData intValue];
            // 計算結果を新しいmstCurrentDataとする
            [mstCurrentData setString:[[NSNumber numberWithUnsignedInt:intResulNumber] stringValue]];
        }
        else if([strOperatorSymbol isEqualToString:CALUCULATE_MULTIPLICATION])
        {
            intResulNumber = [strOriginalData intValue] * [mstCurrentData intValue];
            // 計算結果を新しいmstCurrentDataとする
            [mstCurrentData setString:[[NSNumber numberWithUnsignedInt:intResulNumber] stringValue]];
        }
        else if([strOperatorSymbol isEqualToString:CALUCULATE_DIVISION])
        {
            intResulNumber = [strOriginalData intValue] / [mstCurrentData intValue];
            // 計算結果を新しいmstCurrentDataとする
            [mstCurrentData setString:[[NSNumber numberWithUnsignedInt:intResulNumber] stringValue]];
        }
    }
    return mstCurrentData;
}

@end
