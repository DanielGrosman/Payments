//
//  main.m
//  Payments
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PayPalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a random value between 100 and 1000
        int randomValue = arc4random_uniform(901)+100;
        
        // Log out a message that prints the random value and presents options for payment methods
        NSLog (@"Thank you for shopping at Acme.com Your total today is $%d. Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon\n4: ApplePay", randomValue);
        
        // Takes the user's input on the payment option, parses it, and converts it to an NSInteger value
        char inputValue [10];
        fgets(inputValue, 10, stdin);
        NSString *inputAnswer = [NSString stringWithUTF8String:inputValue];
        NSString *parsedInputAnswer = [inputAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger optionSelected = [parsedInputAnswer integerValue];
        
        // creates an instance of Payment Gateway and calls the processPaymentAmount method with the randomValue as input for the payment amount
        PaymentGateway *paymentGateWay = [[PaymentGateway alloc] init];
        
        switch (optionSelected) {
            case 1:
            {PayPalPaymentService *paypalPaymentService = [[PayPalPaymentService alloc] init];
                paymentGateWay.paymentDelegate = paypalPaymentService;
                [paymentGateWay processPaymentAmount:randomValue];
            }
                break;
            case 2:
            {StripePaymentService *stripePaymentService = [[StripePaymentService alloc] init];
                paymentGateWay.paymentDelegate = stripePaymentService;
                [paymentGateWay processPaymentAmount:randomValue];
            }
                break;
            case 3:
            {AmazonPaymentService *amazonPaymentService = [[AmazonPaymentService alloc] init];
                paymentGateWay.paymentDelegate = amazonPaymentService;
                [paymentGateWay processPaymentAmount:randomValue];
            }
                break;
            case 4:
            {ApplePaymentService *applePaymentService = [[ApplePaymentService alloc] init];
                paymentGateWay.paymentDelegate = applePaymentService;
                [paymentGateWay processPaymentAmount:randomValue];
            }
                break;
        }
    
        
    return 0;
}
}
