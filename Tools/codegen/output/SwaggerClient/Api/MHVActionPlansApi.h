//
// MHVActionPlansApi.h
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
#import "MHVRemoteMonitoringClient.h"
#import "MHVActionPlanAdherenceSummary.h"
#import "MHVActionPlansResponseV2ActionPlanInstance_.h"
#import "MHVMicrosoftKhronosCloudCommonErrorsErrorResponse.h"
#import "MHVSystemObject.h"
#import "MHVV2ActionPlan.h"
#import "MHVV2ActionPlanInstance.h"


NS_ASSUME_NONNULL_BEGIN

@interface MHVRemoteMonitoringClient (MHVActionPlansApi)

/// Post an action plan instance
/// 
///
/// @param actionPlan The instance of the plan to create.
/// 
///  code:200 message:"OK",
///  code:201 message:"Created",
///  code:0 message:"Error"
///
/// @return MHVSystemObject*
+ (NSURLSessionTask* _Nullable)createActionPlanWithActionPlan: (MHVV2ActionPlan* ) actionPlan
    completionHandler: (void (^ _Nonnull)(MHVSystemObject* _Nullable output, NSError* _Nullable error)) handler;


/// Delete an action plan instance
/// 
///
/// @param actionPlanId The instance of the plan to delete.
/// 
///  code:200 message:"OK",
///  code:204 message:"NoContent",
///  code:0 message:"Error"
///
/// @return MHVSystemObject*
+ (NSURLSessionTask* _Nullable)deleteActionPlanWithActionPlanId: (NSString* ) actionPlanId
    completionHandler: (void (^ _Nonnull)(MHVSystemObject* _Nullable output, NSError* _Nullable error)) handler;


/// Remove an action plan objective
/// 
///
/// @param actionPlanId The instance of the plan that the objective belongs to.
/// @param objectiveId The instance of the objective to delete.
/// 
///  code:200 message:"OK",
///  code:204 message:"NoContent",
///  code:0 message:"Error"
///
/// @return MHVSystemObject*
+ (NSURLSessionTask* _Nullable)deleteActionPlanObjectiveWithActionPlanId: (NSString* ) actionPlanId
    objectiveId: (NSString* ) objectiveId
    completionHandler: (void (^ _Nonnull)(MHVSystemObject* _Nullable output, NSError* _Nullable error)) handler;


/// Gets adherence information for an action plan.
/// 
///
/// @param startTime The start time.
/// @param endTime The end time.
/// @param actionPlanId The action plan identifier.
/// @param objectiveId The objective to filter the report to. (optional)
/// @param taskId The task to filter the report to. (optional)
/// 
///  code:200 message:"OK",
///  code:0 message:"Error"
///
/// @return MHVActionPlanAdherenceSummary*
+ (NSURLSessionTask* _Nullable)getActionPlanAdherenceWithStartTime: (NSDate* ) startTime
    endTime: (NSDate* ) endTime
    actionPlanId: (NSString* ) actionPlanId
    objectiveId: (NSString* _Nullable) objectiveId
    taskId: (NSString* _Nullable) taskId
    completionHandler: (void (^ _Nonnull)(MHVActionPlanAdherenceSummary* _Nullable output, NSError* _Nullable error)) handler;


/// Get an instance of a specific action plan
/// 
///
/// @param actionPlanId The action plan to update.
/// 
///  code:200 message:"OK",
///  code:0 message:"Error"
///
/// @return MHVV2ActionPlanInstance*
+ (NSURLSessionTask* _Nullable)getActionPlanByIdWithActionPlanId: (NSString* ) actionPlanId
    completionHandler: (void (^ _Nonnull)(MHVV2ActionPlanInstance* _Nullable output, NSError* _Nullable error)) handler;


/// Get a collection of action plans
/// 
///
/// @param maxPageSize The maximum number of entries to return per page. Defaults to 1000. (optional)
/// 
///  code:200 message:"OK",
///  code:0 message:"Error"
///
/// @return MHVActionPlansResponseV2ActionPlanInstance_*
+ (NSURLSessionTask* _Nullable)getActionPlansWithMaxPageSize: (NSNumber* _Nullable) maxPageSize
    completionHandler: (void (^ _Nonnull)(MHVActionPlansResponseV2ActionPlanInstance_* _Nullable output, NSError* _Nullable error)) handler;


/// Update an action plan instance with merge
/// 
///
/// @param actionPlan The instance of the plan to update. Only the fields present in the passed in model will be updated. All other fields and colelctions              will be left, as is, unless invalid.
/// 
///  code:200 message:"OK",
///  code:0 message:"Error"
///
/// @return MHVActionPlansResponseV2ActionPlanInstance_*
+ (NSURLSessionTask* _Nullable)patchActionPlanWithActionPlan: (MHVV2ActionPlanInstance* ) actionPlan
    completionHandler: (void (^ _Nonnull)(MHVActionPlansResponseV2ActionPlanInstance_* _Nullable output, NSError* _Nullable error)) handler;


/// Update/Replace a complete action plan instance with no merge.
/// 
///
/// @param actionPlan The instance of the plan to update. The entire plan will be replaced with this version.
/// 
///  code:200 message:"OK",
///  code:0 message:"Error"
///
/// @return MHVActionPlansResponseV2ActionPlanInstance_*
+ (NSURLSessionTask* _Nullable)putActionPlanWithActionPlan: (MHVV2ActionPlanInstance* ) actionPlan
    completionHandler: (void (^ _Nonnull)(MHVActionPlansResponseV2ActionPlanInstance_* _Nullable output, NSError* _Nullable error)) handler;



@end

NS_ASSUME_NONNULL_END
