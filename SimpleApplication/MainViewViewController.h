//
//  MainViewViewController.h
//  SimpleApplication
//
//  Created by masuimasanori on 2013/12/13.
//  Copyright (c) 2013年 masanori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CaluculateData.h"

@interface MainViewViewController : UIViewController
{
    CaluculateData *calcData;
    NSMutableString *mstCurrentData;
    
}
@property NSString *strOriginalData;
@property (assign, nonatomic) BOOL flagOperatorSymbol;

@property (weak, nonatomic) IBOutlet UITextField *textDisplay;

@property (weak, nonatomic) IBOutlet UIButton *buttonZero;
- (IBAction)buttonZeroTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
- (IBAction)buttonOneTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
- (IBAction)buttonTwoTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
- (IBAction)buttonThreeTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
- (IBAction)buttonFourTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
- (IBAction)buttonFiveTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
- (IBAction)buttonSixTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
- (IBAction)buttonSevenTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
- (IBAction)buttonEightTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
- (IBAction)buttonNineTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonClear;
- (IBAction)buttonClearTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonEqual;
- (IBAction)buttonEqualTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonAddition;
- (IBAction)buttonAdditionTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonSubtraction;
- (IBAction)buttonSubtractionTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonMultiplication;
- (IBAction)buttonMultiplicationTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonDivision;
- (IBAction)buttonDivisionTouched:(id)sender;

@end
