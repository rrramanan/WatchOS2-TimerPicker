//
//  InterfaceController.m
//  WatchTimerPicker WatchKit Extension
//
//  Created by Vinod Ramanathan on 16/10/15.
//  Copyright © 2015 Vinod Ramanathan. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
NSMutableArray *HourArray;
NSMutableArray *HourLoadArray;
NSMutableArray *HourFormatArray;
NSMutableArray *MinArray;
NSMutableArray *MinLoadArray;
NSMutableArray *MinFormatArray;

NSString *hh =@"00";
NSString *mm =@"00";
NSString *totalTime;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
   
HourArray = [[NSMutableArray alloc]init];
HourLoadArray =[[NSMutableArray alloc]initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23", nil];
HourFormatArray =[[NSMutableArray alloc]initWithObjects:@"00",@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23", nil];

  
    
    
MinArray = [[NSMutableArray alloc]init];
MinLoadArray =[[NSMutableArray alloc]initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20", @"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"40",@"41",@"42",@"43",@"44",@"45",@"46",@"47",@"48",@"49",@"50",@"51",@"52",@"53",@"54",@"55",@"56",@"57",@"58",@"59",nil];
    
MinFormatArray =[[NSMutableArray alloc]initWithObjects:@"00",@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20", @"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"40",@"41",@"42",@"43",@"44",@"45",@"46",@"47",@"48",@"49",@"50",@"51",@"52",@"53",@"54",@"55",@"56",@"57",@"58",@"59",nil];
    
    
    
    for (int i=0; i < [HourLoadArray count]; i++) {
        
        WKPickerItem *item = [[WKPickerItem alloc]init];
        
        NSString *getHH = [HourLoadArray objectAtIndex:i];
        
        item.title = getHH;
        
        item.caption = @"hour";
        
        [HourArray addObject:item];
        
        
    }
    
    
    for (int i=0; i < [MinLoadArray count]; i++) {
        
        WKPickerItem *item = [[WKPickerItem alloc]init];
        
        NSString *getMM = [MinLoadArray objectAtIndex:i];
        
        item.title = getMM;
        
        item.caption = @"min";
        
        [MinArray addObject:item];
    }

    
    [_Hour setItems:HourArray];
    [_MIn setItems:MinArray];
    
    
    [_HourLabel setText:@"00"];
    [_MIntuesLabel setText:@"00"];
    
    
    totalTime = @"00:00";  //set 
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)HourAction:(NSInteger)value {
    
    WKPickerItem *item = HourArray[value];
    
    item.caption = @"hour";
    
    NSString *HHFormat = HourFormatArray[value];
    
    [_HourLabel setText:HHFormat];
    
    hh = HHFormat;
    
    totalTime = [NSString stringWithFormat:@"%@:%@",hh,mm];
    
    [_TimerButton setTitle:totalTime];
    
    
}

- (IBAction)MinAction:(NSInteger)value {
   
    WKPickerItem *item = [[WKPickerItem alloc]init];
    
    item.caption = @"min";
    
    NSString *MMFormat = MinFormatArray[value];
    
    [_MIntuesLabel setText:MMFormat];

    mm = MMFormat;
    
    totalTime = [NSString stringWithFormat:@"%@:%@",hh,mm];
    
    [_TimerButton setTitle:totalTime];
    
}

- (IBAction)TimerAction {
    
    NSLog(@"Button -- %@",totalTime);
    
}
@end



