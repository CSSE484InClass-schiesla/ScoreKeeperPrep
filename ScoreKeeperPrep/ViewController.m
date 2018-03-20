//
//  ViewController.m
//  ScoreKeeperPrep
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.text = @"";
}

- (IBAction)pressedButton:(id)sender {
    NSString* textInTextField = self.textField.text;
    int textAsInt = [textInTextField intValue];
    if (self.textView.text.length > 0) {
        //self.textView.text = [NSString stringWithFormat:@"%@\n%@", self.textView.text, textInTextField];
        self.textView.text = [NSString stringWithFormat:@"%@\n%d", self.textView.text, textAsInt];
    } else {
        //self.textView.text = textInTextField;
        self.textView.text = [NSString stringWithFormat:@"%d", textAsInt];
    }
    
    
    self.textField.text = @"";
    [self.view endEditing:YES];
}

@end
