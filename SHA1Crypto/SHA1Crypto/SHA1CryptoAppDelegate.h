//
//  SHA1CryptoAppDelegate.h
//  SHA1Crypto
//
//  Created by Jesus Guerra Rosas on 4/6/11.
//  Copyright 2011 Guerrix. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SHA1CryptoViewController;

@interface SHA1CryptoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SHA1CryptoViewController *viewController;

@end
