//
//  CCViewController.h
//  Age of Laika
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *humanAge;
@property (weak, nonatomic) IBOutlet UILabel *output;

- (IBAction)convert:(id)sender;
@end
