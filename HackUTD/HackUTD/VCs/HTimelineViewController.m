//
//  HTimelineViewController.m
//  HackUTD
//
//  Created by Izuchukwu Elechi on 11/22/15.
//  Copyright © 2015 HackUTD. All rights reserved.
//

#import "HTimelineViewController.h"
#import "HUserDefaults.h"

@interface HTimelineViewController ()

@end

@implementation HTimelineViewController

NSString *const HTabBarSegueOnboarding = @"HTabBarSegueOnboarding";

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    bool hasOnboarded = [[NSUserDefaults standardUserDefaults] boolForKey:HUserDefaultsKeyUserHasOnboarded];
    if (!hasOnboarded) {
        [self.storyboard instantiateViewControllerWithIdentifier:@"onboarding"];
        [self performSegueWithIdentifier:HTabBarSegueOnboarding sender:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
