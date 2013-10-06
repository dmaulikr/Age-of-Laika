//
//  CCViewController.m
//  Age of Laika
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convert:(id)sender {
  [self.humanAge resignFirstResponder];
  
  int humanAge;
  float dogAge = 0;
  
  if ([self.humanAge.text isEqualToString:@""]) {
    [[[UIAlertView alloc] initWithTitle:@"Oups" message:@"Please enter a human age" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil] show];
  }else{
    humanAge = [self.humanAge.text intValue];
    if (humanAge > 2) {
      
      // 10.5 years per human years for the first 2 years and 4 years for the rest
      // for instance 3 human years = (21 + ((3 - 2) * 4)) = 25 dog years
      
      dogAge = 21 + ((humanAge - 2)  * 4);
    }else{
      dogAge = humanAge * 10.5;
    }
    
    self.output.text = [NSString stringWithFormat:@"Laïka would have %.f years old", dogAge ];
  }
}
@end
