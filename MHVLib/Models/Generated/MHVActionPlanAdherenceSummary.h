//
// MHVActionPlanAdherenceSummary.h
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
//

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import <Foundation/Foundation.h>

#import "MHVObjectiveAdherenceSummary.h"
#import "MHVModelBase.h"


@protocol MHVActionPlanAdherenceSummary
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlanAdherenceSummary : MHVModelBase

/* The ID of the plan [optional]
 */
@property(strong,nonatomic,nullable) NSString* _id;
/* The name of the plan [optional]
 */
@property(strong,nonatomic,nullable) NSString* name;
/* The starting date of the adherence summary. [optional]
 */
@property(strong,nonatomic,nullable) NSDate* startDate;
/* The ending date of the adherence summary. [optional]
 */
@property(strong,nonatomic,nullable) NSDate* endDate;
/* The Collection of objectives for the plan [optional]
 */
@property(strong,nonatomic,nullable) NSArray<MHVObjectiveAdherenceSummary>* objectives;

@end

NS_ASSUME_NONNULL_END