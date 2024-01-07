//
//  ViewController.h
//  PreventiveHealth
//
//  Created by Saurabh Sikka on 2/12/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *nameField;
    IBOutlet UITextField *ageField;
    
    NSString *name;
    int age;
    NSString *gender;
    
    IBOutlet UITextView *adviceText;
    IBOutlet UISegmentedControl *sex;
    IBOutlet UIButton *adviseMe;
}

-(IBAction)buttonPressed;
-(IBAction)dismissKeyboard;


@property (nonatomic, retain) UITextField *nameField;
@property (nonatomic, retain) UITextField *ageField;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) int age;
@property (nonatomic, retain) NSString *gender;


@property (nonatomic, retain) IBOutlet UITextView *adviceText;
@property (nonatomic, retain) IBOutlet UISegmentedControl *sex;
@property (nonatomic, retain) IBOutlet UIButton *adviseMe;

@end
