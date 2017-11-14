//
//  NSDictionary+Property.m
//  Project01
//
//  Created by JFQ on 2017/10/12.
//  Copyright © 2017年 Feroo. All rights reserved.
//

#import "NSDictionary+Property.h"
/**
 *  字典中所有的key => 生成属性代码
 */
@implementation NSDictionary (Property)

- (void)createPropertyCode {
    NSMutableString *codes = [NSMutableString string];
    //遍历字典
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSString *code = @"";
        if ([obj isKindOfClass:[NSString class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, copy) NSString *%@;", key];
        } else if ([obj isKindOfClass:NSClassFromString(@"__NSCFB00lean")]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) BOOL %@;", key];
        } else if ([obj isKindOfClass:[NSNumber class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) NSInteger %@;", key];
        } else if ([obj isKindOfClass:[NSArray class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, copy) NSArray *%@;", key];
        } else if ([obj isKindOfClass:[NSDictionary class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, copy) NSDictionary *%@;", key];
        }
        
        [codes appendFormat:@"\n%@", code];
    }];
    NSLog(@"nsdictionary%@", codes);
}
@end
