//
//  ViewController.m
//  PreventiveHealth
//
//  Created by Saurabh Sikka on 2/12/15.
//  Copyright (c) 2015 Saurabh Sikka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameField, ageField, name, age, gender;
@synthesize sex, adviceText, adviseMe;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

}
-(IBAction)dismissKeyboard {
    [ageField resignFirstResponder];
}


-(IBAction)buttonPressed {
    name = nameField.text;
    age = ageField.text.intValue;
    
    NSString *bpAd = @"Blood Pressure measurement every medical visit and at least once every 2 years.";
    NSString *cervixAd = @"Cervical Cytology screening every 2 years.";
    NSString *vaxxer = @"Annual influenza and pneumococcal vaccination.";
    
    if (sex.selectedSegmentIndex == 0) {
        gender = @"male";
        if (age > 35 && age < 65) {
            NSString *cholAdvice = @"Serum Cholesterol measurement every 5 years.";
            NSString *finalAdvice = [NSString stringWithFormat:@"%@\n%@", bpAd, cholAdvice];
            adviceText.text = finalAdvice;
        } else if (age > 65) {
            NSString *cholAdvice = @"Serum Cholesterol measurement every 5 years.";
            NSString *finalAdvice = [NSString stringWithFormat:@"%@\n%@\n%@", bpAd, cholAdvice, vaxxer];
            adviceText.text = finalAdvice;

        } else {
            NSString *finalAdvice = [NSString stringWithFormat:@"%@", bpAd];
            adviceText.text = finalAdvice;
        }
    }
    else if (sex.selectedSegmentIndex == 1) {
        gender = @"female";
        if (age >= 40 && age < 50) {
            NSString *breastAd = @"Annual Breast Exam";
            NSString *cholAdvice = @"Serum Cholesterol measurement every 5 years.";
            NSString *finalAdvice = [NSString stringWithFormat:@"%@\n%@\n%@\n%@", bpAd, breastAd, cholAdvice, cervixAd];
            adviceText.text = finalAdvice;
        }
        else if (age > 50 && age < 65) {
            NSString *breastAd = @"Annual Mammography";
            NSString *cholAdvice = @"Serum Cholesterol measurement every 5 years.";
            NSString *finalAdvice = [NSString stringWithFormat:@"%@\n%@\n%@\n%@", bpAd, breastAd, cholAdvice, cervixAd];
            adviceText.text = finalAdvice;
        } else if (age >= 65) {
            NSString *breastAd = @"Annual Mammography";
            NSString *cholAdvice = @"Serum Cholesterol measurement every 5 years.";
            NSString *finalAdvice = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@", bpAd, breastAd, cholAdvice, cervixAd, vaxxer];
            adviceText.text = finalAdvice;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
