//
// MHVActionPlanRangeMetric.h
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

#import "MHVModelBase.h"
#import "MHVEnum.h"


@protocol MHVActionPlanRangeMetric
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlanRangeMetricValueTypeEnum : MHVEnum
+(MHVActionPlanRangeMetricValueTypeEnum *) Unknown;
+(MHVActionPlanRangeMetricValueTypeEnum *) MinutesToMidnight;
@end

@interface MHVActionPlanRangeMetric : MHVModelBase

/* Gets or sets the property name the metric applies to [optional]
 */
@property(strong,nonatomic,nullable) NSString* propertyName;
/* Gets or sets the Value Type of the Metric [optional]
 */
@property(strong,nonatomic,nullable) MHVActionPlanRangeMetricValueTypeEnum* valueType;
/* Gets or sets the Max value of the target [optional]
 */
@property(strong,nonatomic,nullable) NSNumber* maxTarget;
/* Gets or sets the min value of the target [optional]
 */
@property(strong,nonatomic,nullable) NSNumber* minTarget;
/* Gets or sets the XPath of the property that the metric applies to [optional]
 */
@property(strong,nonatomic,nullable) NSString* propertyXPath;

@end

NS_ASSUME_NONNULL_END