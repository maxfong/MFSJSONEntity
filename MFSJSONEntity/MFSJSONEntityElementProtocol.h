//
//  MFSJSONEntityElementProtocol.h
//  MFSJSONEntity
//
//  Created by maxfong.
//  Copyright (c) 2013年 maxfong. All rights reserved.
//  https://github.com/maxfong/MFSJSONEntity

#import <Foundation/Foundation.h>

@protocol MFSJSONEntityElementProtocol <NSObject>

@optional
/*  帮助你快速设置JSON和对象属性的映射表(解决接口返回相同对象的问题)
 key:   JSON字段命名
 value: 客户端对象命名
 */
+ (NSDictionary *)replacedElementDictionary;


/*  放弃array和dictionary属性的解析(解决数据需要透传的问题)
 value: 属性名
 */
+ (NSArray *)unparsedElements;

@end
