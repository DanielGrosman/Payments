//
//  PaymentGateway.m
//  Payments
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger) paymentAmount {
    if ([self.paymentDelegate canProcessPayment]){
    [self.paymentDelegate processPaymentAmount:paymentAmount];
}
    else {
        NSLog(@"Your payment cannot be processed");
    }
}

@end
