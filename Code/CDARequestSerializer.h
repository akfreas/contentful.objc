//
//  CDARequestSerializer.h
//  ContentfulSDK
//
//  Created by Boris Bügling on 21/07/14.
//
//

#import "AFURLRequestSerialization.h"

@interface CDARequestSerializer : AFJSONRequestSerializer

@property (nonatomic) NSString* requestUserAgent;

-(id)initWithAccessToken:(NSString*)accessToken;

@end
