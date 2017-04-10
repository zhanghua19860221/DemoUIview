//
//  shareDelegate.m
//  Nbber
//
//  Created by 张华 on 15/10/22.
//  Copyright © 2015年 zhanghau. All rights reserved.
//

#import "shareDelegate.h"

@implementation shareDelegate

+ (shareDelegate *)sharedManager
{
    static shareDelegate *sharedAccountManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedAccountManagerInstance = [[self alloc] init];
        
    });
    return sharedAccountManagerInstance;
}

+(NSUserDefaults *)shareNSUserDefaults
{
    static NSUserDefaults * sharedAccountManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        
        sharedAccountManagerInstance = [[NSUserDefaults alloc] init];
        
    });
    return sharedAccountManagerInstance;
}

@end
