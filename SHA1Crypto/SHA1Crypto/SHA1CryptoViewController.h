//
//  SHA1CryptoViewController.h
//  SHA1Crypto
//
//  Created by Jesus Guerra Rosas on 4/6/11.
//  Copyright 2011 Guerrix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CommonCrypto/CommonDigest.h>

@interface SHA1CryptoViewController : UIViewController {
    
    IBOutlet UITextField *valueField;
    IBOutlet UILabel *shaString;
    
}

- (IBAction)encryptValue:(id)sender;
- (IBAction)manotas;

@end
