//
// MHVNameValue.h
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
#import "MHVType.h"
#import "MHVCodedValue.h"
#import "MHVMeasurement.h"

// -------------------------
//
// Named Measurements
//
// -------------------------
@interface MHVNameValue : MHVType

// -------------------------
//
// Data
//
// -------------------------
//
// REQUIRED
//
@property (readwrite, nonatomic, strong) MHVCodedValue *name;
@property (readwrite, nonatomic, strong) MHVMeasurement *value;

//
// Convenience
//
@property (readwrite, nonatomic, assign) double measurementValue;

// -------------------------
//
// Initializers
//
// -------------------------
- (instancetype)initWithName:(MHVCodedValue *)name andValue:(MHVMeasurement *)value;

+ (MHVNameValue *)fromName:(MHVCodedValue *)name andValue:(MHVMeasurement *)value;

@end

// -------------------------
//
// Collection of Named Measurements
//
// -------------------------
@interface MHVNameValueCollection : MHVCollection<MHVNameValue *>

- (NSUInteger)indexOfItemWithName:(MHVCodedValue *)code;
//
// Name codes should typically be from [MHVExercise vocabForDetails]
//
- (NSUInteger)indexOfItemWithNameCode:(NSString *)nameCode;
- (MHVNameValue *)getItemWithNameCode:(NSString *)nameCode;

- (void)addOrUpdate:(MHVNameValue *)value;

@end
