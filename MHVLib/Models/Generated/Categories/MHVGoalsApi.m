//
// MHVGoalsApi.m
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
#import "MHVJsonSerializer.h"
#import "MHVGoalsApi.h"
#import "MHVGoal.h"
#import "MHVGoalsResponse.h"
#import "MHVGoalsWrapper.h"
#import "MHVMicrosoftKhronosCloudCommonErrorsErrorResponse.h"
#import "MHVSystemObject.h"


@implementation MHVRemoteMonitoringClient (MHVGoalsApi)

NSString* kMHVGoalsApiErrorDomain = @"MHVGoalsApiErrorDomain";
NSInteger kMHVGoalsApiMissingParamErrorCode = 234513;

#pragma mark - Api Methods

///
/// Post a collection of goal instances
///
///  @param goalsWrapper The collection of goal instances to create.
///
///  @returns MHVSystemObject*
///
- (void)createGoalsWithGoalsWrapper:(MHVGoalsWrapper*)goalsWrapper
                         completion:(void(^_Nonnull)(MHVSystemObject* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalsWrapper' is set
    if (goalsWrapper == nil)
    {
        NSParameterAssert(goalsWrapper);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalsWrapper"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }
    }
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSString *json = [MHVJsonSerializer serialize:goalsWrapper];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];
    
    [self requestWithPath:resourcePath
               httpMethod:@"POST"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVSystemObject class]
               completion:completion];
}

///
/// Delete a goal instance
///
///  @param goalId The identifier of the goal to delete.
///
///  @returns MHVSystemObject*
///
- (void)deleteGoalWithGoalId:(NSString*)goalId
                  completion:(void(^_Nonnull)(MHVSystemObject* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalId' is set
    if (goalId == nil)
    {
        NSParameterAssert(goalId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }
    }
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/{goalId}"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalId != nil)
    {
        pathParams[@"goalId"] = goalId;
    }
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    
    [self requestWithPath:resourcePath
               httpMethod:@"DELETE"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVSystemObject class]
               completion:completion];
}

///
/// Get a collection of the active goals
///
///  @param types The goal types(e.g Steps, CaloriesBurned) filter. (optional)
///
///  @param windowTypes The goal window types(e.g Daily, Weekly) filter. (optional)
///
///  @returns MHVGoalsResponse*
///
- (void)getActiveGoalsWithTypes:(NSString*)types
                    windowTypes:(NSString*)windowTypes
                     completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/active"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (types != nil)
    {
        queryParams[@"types"] = types;
    }
    if (windowTypes != nil)
    {
        queryParams[@"windowTypes"] = windowTypes;
    }
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    
    [self requestWithPath:resourcePath
               httpMethod:@"GET"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVGoalsResponse class]
               completion:completion];
}

///
/// Get an instance of a specific goal
///
///  @param goalId The goal identifier.
///
///  @returns MHVGoal*
///
- (void)getGoalByIdWithGoalId:(NSString*)goalId
                   completion:(void(^_Nonnull)(MHVGoal* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalId' is set
    if (goalId == nil)
    {
        NSParameterAssert(goalId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }
    }
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/{goalId}"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalId != nil)
    {
        pathParams[@"goalId"] = goalId;
    }
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    
    [self requestWithPath:resourcePath
               httpMethod:@"GET"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVGoal class]
               completion:completion];
}

///
/// Get a collection of all goals
///
///  @param types The goal types(e.g Steps, CaloriesBurned) filter. (optional)
///
///  @param windowTypes The goal window types(e.g Daily, Weekly) filter. (optional)
///
///  @param startDate The start date for date range filter. (optional)
///
///  @param endDate The end date for date range filter. (optional)
///
///  @returns MHVGoalsResponse*
///
- (void)getGoalsWithTypes:(NSString*)types
              windowTypes:(NSString*)windowTypes
                startDate:(NSDate*)startDate
                  endDate:(NSDate*)endDate
               completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (types != nil)
    {
        queryParams[@"types"] = types;
    }
    if (windowTypes != nil)
    {
        queryParams[@"windowTypes"] = windowTypes;
    }
    if (startDate != nil)
    {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil)
    {
        queryParams[@"endDate"] = endDate;
    }
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    
    [self requestWithPath:resourcePath
               httpMethod:@"GET"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVGoalsResponse class]
               completion:completion];
}

///
/// Update collection of goal instances with merge
///
///  @param goalsWrapper The collection of goal instances to update. Only the fields present in the passed in model will be updated. All other fields and colelctions              will be left, as is, unless invalid.
///
///  @returns MHVGoalsResponse*
///
- (void)patchGoalsWithGoalsWrapper:(MHVGoalsWrapper*)goalsWrapper
                        completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalsWrapper' is set
    if (goalsWrapper == nil)
    {
        NSParameterAssert(goalsWrapper);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalsWrapper"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }
    }
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSString *json = [MHVJsonSerializer serialize:goalsWrapper];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];
    
    [self requestWithPath:resourcePath
               httpMethod:@"PATCH"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVGoalsResponse class]
               completion:completion];
}

///
/// Update/Replace a complete goal instance with no merge
///
///  @param goal The instance of the goal to update. The entire goal will be replaced with this version.
///
///  @returns MHVGoal*
///
- (void)putGoalWithGoal:(MHVGoal*)goal
             completion:(void(^_Nonnull)(MHVGoal* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goal' is set
    if (goal == nil)
    {
        NSParameterAssert(goal);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goal"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }
    }
    
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];
    
    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSData *bodyParam = nil;;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSString *json = [MHVJsonSerializer serialize:goal];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];
    
    [self requestWithPath:resourcePath
               httpMethod:@"PUT"
               pathParams:pathParams
              queryParams:queryParams
               formParams:formParams
                     body:bodyParam
                  toClass:[MHVGoal class]
               completion:completion];
}



@end
