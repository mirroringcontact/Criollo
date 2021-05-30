//
//  CRFCGIServer.m
//  Criollo
//
//  Created by Cătălin Stan on 10/25/15.
//  Copyright © 2015 Cătălin Stan. All rights reserved.
//

#import <Criollo/CRFCGIServer.h>

#import <Criollo/CRFCGIConnection.h>
#import <Criollo/CRFCGIServerConfiguration.h>

#import "CRConnection_Internal.h"
#import "CRServer_Internal.h"

@implementation CRFCGIServer

- (instancetype)initWithDelegate:(id<CRServerDelegate>)delegate delegateQueue:(dispatch_queue_t)delegateQueue {
    self = [super initWithDelegate:delegate delegateQueue:delegateQueue];
    if (self != nil) {
        self.configuration = [[CRFCGIServerConfiguration alloc] init];
    }
    return self;
}

- (CRConnection*)newConnectionWithSocket:(GCDAsyncSocket*)socket {
    return [[CRFCGIConnection alloc] initWithSocket:socket server:self];
}

@end
