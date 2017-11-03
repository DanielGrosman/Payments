//
//  StripePaymentService.m
//  Payments
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) processPaymentAmount:(NSInteger) paymentAmount {
    NSLog(@"Stripe processed amount $%ld", paymentAmount);
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
