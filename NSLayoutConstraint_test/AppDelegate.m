//
//  AppDelegate.m
//  NSLayoutConstraint_test
//
//  Created by Gregory Casamento on 5/10/20.
//  Copyright © 2020 Open Logic Corporation. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (retain) IBOutlet NSWindow *window;
@property (retain) IBOutlet  NSLayoutConstraint *constraint;

- (IBAction)saveAction:(id)sender;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSData *d = [NSKeyedArchiver archivedDataWithRootObject:self.constraint
                                      requiringSecureCoding:NO error:  NULL];
    [d writeToFile:@"constraint.data" atomically:YES];
    d = [NSKeyedArchiver archivedDataWithRootObject:self.constraint
                              requiringSecureCoding:NO error:  NULL];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)saveAction:(id)sender
{
    
}

@end
