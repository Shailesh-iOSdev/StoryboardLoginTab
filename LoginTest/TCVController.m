//
//  EulaViewController.m
//  LoginTest
//
//  Created by Shailesh on 11/10/15.
//  Copyright (c) 2015 RPD. All rights reserved.
//

#import "TCVController.h"
#import "AppDelegate.h"
@implementation TCVController


-(IBAction)EULA_accepted:(id)sender{
    
    AppDelegate *appDelegateTemp = [[UIApplication sharedApplication]delegate];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]; // <-- make sure Main match name of your storyboard
    UITabBarController *tvc = [storyboard  instantiateViewControllerWithIdentifier:@"maintabbar"];
    appDelegateTemp.window.rootViewController = tvc;
    [[NSUserDefaults standardUserDefaults] setBool:@(YES) forKey:@"eulaaccepted"];
    
}

@end
