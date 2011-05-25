//
//  SHA1CryptoViewController.m
//  SHA1Crypto
//
//  Created by Jesus Guerra Rosas on 4/6/11.
//  Copyright 2011 Guerrix. All rights reserved.
//

#import "SHA1CryptoViewController.h"

@implementation SHA1CryptoViewController

- (void)dealloc
{
    [valueField release];
    [shaString release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidUnload
{
    [valueField release];
    valueField = nil;
    [shaString release];
    shaString = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSString*) digest:(NSString*)input
{
    
    NSData *data = [input dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, data.length, digest);
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
    
}

- (IBAction)encryptValue:(id)sender {
    NSLog(@"%@",[self digest:valueField.text]);
    
    shaString.text = [self digest:valueField.text];
}

- (IBAction)manotas{}

@end
