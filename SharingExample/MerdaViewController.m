//
//  MerdaViewController.m
//  SharingExample
//
//  Created by Alexander Kustov on 14/12/13.
//  Copyright (c) 2013 Alexander Kustov. All rights reserved.
//

#import "MerdaViewController.h"
#import <Social/Social.h>

@implementation MerdaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SharetoFace:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"Sharig this great business with you"];
        [self presentViewController:controller animated:YES completion:Nil];
    }else{
        NSLog(@"no face account");
    }

}

@end
