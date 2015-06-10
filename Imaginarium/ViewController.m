//
//  ViewController.m
//  Imaginarium
//
//  Created by Christine Perinchery on 6/8/15.
//  Copyright (c) 2015 Stanford Lessons App House. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[ImageViewController class]]){
        ImageViewController *ivc = (ImageViewController *) segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/a/images/download/%@.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
