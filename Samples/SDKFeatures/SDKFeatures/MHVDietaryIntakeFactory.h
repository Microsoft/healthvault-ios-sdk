//
//  MHVDietaryIntakeFactory.h
//  SDKFeatures
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
#import "MHVLib.h"
#import "MHVThingTestExtensions.h"

@interface MHVDietaryIntake (MHVFactoryMethods)

+(MHVThingCollection *) createRandomForDay:(NSDate *) date;
+(MHVThingCollection *) createRandomMetricForDay:(NSDate *) date;

+(MHVThing *) makeBreakfastFor:(MHVDateTime *) breakfastTime;
+(MHVThing *) makeLunchEntreeFor:(MHVDateTime *) lunchTime;
+(MHVThing *) makeLunchVeggiesFor:(MHVDateTime *) lunchTime;
+(MHVThing *) makeDinnerEntreeFor:(MHVDateTime *) dinnerTime;
+(MHVThing *) makeDinnerVeggiesFor:(MHVDateTime *) dinnerTime;
+(MHVThing *) makeDinnerDessertFor:(MHVDateTime *) dinnerTime;

+(MHVVocabIdentifier *) getVocabForMeals;

@end

@interface MHVDietaryIntake (MHVDisplay)

-(NSString *) detailsString;
-(NSString *) detailsStringMetric;

@end
