//
//  InterfaceController.h
//  WatchTimerPicker WatchKit Extension
//
//  Created by Vinod Ramanathan on 16/10/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfacePicker *Hour;

@property (strong, nonatomic) IBOutlet WKInterfacePicker *MIn;

- (IBAction)HourAction:(NSInteger)value;

- (IBAction)MinAction:(NSInteger)value;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *HourLabel;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *MIntuesLabel;

@property (strong, nonatomic) IBOutlet WKInterfaceButton *TimerButton;

- (IBAction)TimerAction;


@end
