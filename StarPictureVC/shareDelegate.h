//
//  shareDelegate.h
//  Nbber
//
//  Created by 张华 on 15/10/22.
//  Copyright © 2015年 zhanghau. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface shareDelegate : NSObject

+ (shareDelegate *)sharedManager;
//NSUserDefaults单例
+(NSUserDefaults *)shareNSUserDefaults;


@end