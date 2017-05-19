//
//  MHVClientFactory.m
//  MHVLib
//
// Copyright (c) 2017 Microsoft Corporation. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MHVClientFactory.h"
#import "MHVPersonClient.h"
#import "MHVPlatformClient.h"
#import "MHVThingClient.h"
#import "MHVSessionCredentialClient.h"

@implementation MHVClientFactory

- (id<MHVPersonClientProtocol>)personClientWithConnection:(id<MHVConnectionProtocol>)connection
{
    return [[MHVPersonClient alloc] initWithConnection:connection];
}

- (id<MHVPlatformClientProtocol>)platformClientWithConnection:(id<MHVConnectionProtocol>)connection
{
    return [[MHVPlatformClient alloc] initWithConnection:connection];
}

- (id<MHVThingClientProtocol>)thingClientWithConnection:(id<MHVConnectionProtocol>)connection
{
    return [[MHVThingClient alloc] initWithConnection:connection];
}

- (id<MHVVocabularyClientProtocol>)vocabularyClientWithConnection:(id<MHVConnectionProtocol>)connection
{
    return nil;
}

- (id<MHVSessionCredentialClientProtocol>)credentialClientWithConnection:(id<MHVConnectionProtocol>)connection
{
    return [[MHVSessionCredentialClient alloc] initWithConnection:connection];
}

@end