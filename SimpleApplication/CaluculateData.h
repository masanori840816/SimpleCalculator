//
//  CaluculateData.h
//  SimpleApplication
//
//  Created by masuimasanori on 2013/12/15.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaluculateData : NSObject
{
    NSString *strOperatorSymbol;
    //NSString *strOriginalNumber;
}

- (NSString *)strOperatorSymbol;
- (void)setOperatorSymbol: (NSString *)strSetOperatorSymbol;

//- (NSString *)strOriginalNumber;
//- (void)setOriginalNumber: (NSString *)strSetOriginalNumber;

- (NSMutableString *)CaluclateNewData: (NSMutableString *)mstCurrentData AddData:(NSString *)strNewData FlagDisplayLastData:(BOOL)flagHideLastData;

- (NSMutableString *)GetResult: (NSMutableString *)mstCurrentData OriginalData:(NSString *)strOriginalData;
@end
