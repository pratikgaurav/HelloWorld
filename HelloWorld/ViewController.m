//
//  ViewController.m
//  HelloWorld
//
//  Created by CSCI 5737 on 9/13/17.
//  Copyright © 2017 CSCI 5737. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UILabel *labelGreeting;

@property (nonatomic, copy) NSString *userName;

- (IBAction)changeGreeting:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeGreeting:(id)sender {
    self.userName = _textFieldName.text;            //Input text is taken on the screen & communicates
                                                    //with userName property in interface
    NSString *nameString = self.userName;           //assigns the text to nameString String variable.
    if ([nameString length] == 0) {                 //if nothing is entered, enters the condition
        nameString = @"World";                      //sends the string 'World' to the variable.
    }
    _labelGreeting.text = [NSString stringWithFormat:@"Hello %@!", nameString];     //prints the whole string
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == _textFieldName) {
        [_textFieldName resignFirstResponder];
    }
    return YES;
}


@end
