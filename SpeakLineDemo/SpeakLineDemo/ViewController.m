//
//  ViewController.m
//  SpeakLineDemo
//
//  Created by zcgong on 2017/1/19.
//  Copyright © 2017年 zcgong. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (nonatomic, strong) NSSpeechSynthesizer* kSpeechSynth;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)stopSpeak:(NSButton *)sender {
    [self.kSpeechSynth stopSpeaking];
}

- (IBAction)speaking:(NSButton *)sender {
    NSString* speakString = [self.writeTextField stringValue];
    if (speakString.length == 0) {
        return;
    } else {
        [self.kSpeechSynth startSpeakingString:speakString];
    }
}

- (void)textDidChange:(NSNotification *)notification {
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (NSSpeechSynthesizer *)kSpeechSynth {
    if (!_kSpeechSynth) {
        _kSpeechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    }
    return _kSpeechSynth;
}

@end
