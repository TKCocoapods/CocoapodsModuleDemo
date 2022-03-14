//
//  TKCPBasket.m
//  Pods-TKCPBasket_Tests
//
//  Created by ZhengXianda on 2022/3/10.
//

#import "TKCPBasket.h"
#import "BasketLibStatic.h"
#import <BasketFxStatic/BasketFxStatic.h>

@implementation TKCPBasket

+ (NSString *)introLibStatic {
    return [BasketLibStatic intro];
}

+ (NSString *)introFxStatic {
    return [BasketFxStatic intro];
}

@end
