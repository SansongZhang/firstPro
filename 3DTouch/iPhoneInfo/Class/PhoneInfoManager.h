//
//  PhoneInfoManager.h
//  iPhoneInfo
//
//  Created by saifing_82 on 15/10/20.
//  Copyright © 2015年 JamesGu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneInfoManager : NSObject
/**
 *  获取设备型号
 *
 *  @return 设备型号
 */
+ (NSString *)getCurrentDeviceModel;

/**
 *  获取内存大小
 *
 *  @return 内存大小
 */
+ (double)logMemoryInfo;

/**
 *  获取使用空间
 *
 *  @return 使用空间
 */
+ (long long)freeDiskSpaceInBytes;
@end
