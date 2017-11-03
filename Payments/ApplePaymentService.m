//
//  ApplePaymentService.m
//  Payments
//
//  Created by Daniel Grosman on 2017-11-03.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount:(NSInteger) paymentAmount {
    NSLog(@"ApplePay processed amount $%ld", paymentAmount);
}

- (BOOL) canProcessPayment {
    int canItProcessPayment = arc4random_uniform(2);
    if (canItProcessPayment == 1) {
        return YES;
    } else {
        return NO;
    }
}

@end
