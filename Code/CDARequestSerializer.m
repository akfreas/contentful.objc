//
//  CDARequestSerializer.m
//  ContentfulSDK
//
//  Created by Boris Bügling on 21/07/14.
//
//

#import "CDARequestSerializer.h"
#import "CDAUtilities.h"

@implementation CDARequestSerializer

-(id)initWithAccessToken:(NSString*)accessToken {
    NSParameterAssert(accessToken);

    self = [super init];
    if (self) {
        [self setValue:[@"Bearer " stringByAppendingString:accessToken] forHTTPHeaderField:@"Authorization"];

        self.requestUserAgent = @"contentful.objc/1.8.1";
    }
    return self;
}

-(void)setRequestUserAgent:(NSString *)userAgent {
    if (_requestUserAgent == userAgent) {
        return;
    }

    _requestUserAgent = userAgent;

    NSString* userAgentHeader = self.HTTPRequestHeaders[@"User-Agent"];
    userAgentHeader = [userAgentHeader stringByReplacingOccurrencesOfString:@"(null)" withString:@""];
    NSRange bracketRange = [userAgentHeader rangeOfString:@"("];
    [self setValue:[userAgentHeader stringByReplacingCharactersInRange:NSMakeRange(0, bracketRange.location - 1) withString:userAgent] forHTTPHeaderField:@"User-Agent"];
}

@end
