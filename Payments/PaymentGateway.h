//
//  PaymentGateway.h
//  Payments
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

- (void) processPaymentAmount:(NSInteger) paymentAmount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount:(NSInteger) paymentAmount;

@end
