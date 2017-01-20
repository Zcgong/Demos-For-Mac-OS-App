//
//  ViewController.m
//  CountCharacters
//
//  Created by zcgong on 2017/1/20.
//  Copyright © 2017年 zcgong. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (IBAction)countStringCharacters:(NSButton *)sender {
    NSString* string = [self.kTextField stringValue];
    if (string.length > 0 ) {
       [self.kShowLabel setStringValue:[NSString stringWithFormat:@"%@ has %ld words.",string,string.length]];
    } else {
        [self.kShowLabel setStringValue:@"NO any words!"];
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
