//
//  MHVMockDatabase.h
//  healthvault-ios-sdk
//
//  Copyright (c) 2017 Microsoft Corporation. All rights reserved.
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
//

#import <Foundation/Foundation.h>
#import "MHVThingCacheDatabaseProtocol.h"

@interface MHVMockRecord : NSObject

@property (readonly, nonatomic, strong) NSDate *lastSyncDate;
@property (readonly, nonatomic, assign) NSInteger lastSequenceNumber;

@property (readonly, nonatomic, strong) MHVThingCollection *things;

@end


@interface MHVMockDatabase : NSObject <MHVThingCacheDatabaseProtocol>

@property (readonly, nonatomic, strong) NSMutableDictionary<NSString *, MHVMockRecord *> *database;

@property (nonatomic, strong) NSError *errorToReturn;
@property (nonatomic, assign) BOOL ignoreDeletes;

- (instancetype)initWithRecordIds:(NSArray<NSString *> *)recordIds
                        hasSynced:(BOOL)hasSynced
                 shouldHaveThings:(BOOL)shouldHaveThings;

@end
