//
//  UDMimeType.m
//  Use_Desk_iOS_SDK_Example
//
//  Created by Maxim Melikhov on 19.02.2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import "UDMimeType.h"

@implementation UDMimeType


+(NSString *)mimeTypeForData:(NSData *)data{
    uint8_t c;
    [data getBytes:&c length:1];
    
    switch (c) {
        case 0xFF:
            return @"image";
            break;
        case 0x89:
            return @"image";
            break;
        case 0x47:
            return @"image/gif";
            break;
        case 0x49:
            return @"";
            break;
        case 0x4D:
            return @"image";
            break;
        case 0x25:
            return @"application/pdf";
            break;
        case 0xD0:
            return @"application/vnd";
            break;
        case 0x46:
            return @"text/plain";
            break;
        default:
            return @"application/octet-stream";
    }
    return nil;
}

@end
