//
// MHVRecord.h
// MHVLib
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

#import <Foundation/Foundation.h>
#import "MHVRecordReference.h"
#import "MHVCollection.h"
#import "HealthVaultRecord.h"
#import "MHVGetPersonalImageTask.h"

// -------------------------
//
// A HealthVault Record!
//
// Basic information about the record
// This will eventually fully replace the HealthVaultRecord object from MHVMobile
//
// -------------------------
@interface MHVRecord : MHVRecordReference

// -------------------------
//
// Data
//
// -------------------------
//
// (Required) Record name
//
@property (readwrite, nonatomic, strong) NSString *name;
//
// (Optional) Display name of the person whose record this is
//
@property (readwrite, nonatomic, strong) NSString *displayName;
//
// (Optional) Such as mother, father, etc...
//
@property (readwrite, nonatomic, strong) NSString *relationship;
//
// (Optional) Such as NoAuthNeeded...
//
@property (readwrite, nonatomic, strong) NSString *authStatus;

// -------------------------
//
// Initializers
//
// -------------------------
- (instancetype)initWithRecord:(HealthVaultRecord *)record;

// -------------------------
//
// Methods
//
// -------------------------
- (MHVGetPersonalImageTask *)downloadPersonalImageWithCallback:(MHVTaskCompletion)callback;

@end

// -------------------------
//
// Collection of Records
//
// -------------------------
@interface MHVRecordCollection : MHVCollection<MHVRecord *>

- (instancetype)initWithRecordArray:(NSArray *)records;

- (NSInteger)indexOfRecordID:(NSString *)recordID;

@end
