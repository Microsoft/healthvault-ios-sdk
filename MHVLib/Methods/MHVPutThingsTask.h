//
//  MHVPutThingsTask.h
//  MHVLib
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

#import <Foundation/Foundation.h>
#import "MHVMethodCallTask.h"
#import "MHVThing.h"

//
// Request: MHVThingCollection
// Response: MHVThingKeyCollection - keys assigned to the things you put
// 
@interface MHVPutThingsTask : MHVMethodCallTask
{
    MHVThingCollection* m_things;
}

@property (readwrite, nonatomic, strong) MHVThingCollection* things;
@property (readonly, nonatomic) BOOL hasThings;

@property (readonly, nonatomic, strong) MHVThingKeyCollection* putResults;
@property (readonly, nonatomic, strong) MHVThingKey* firstKey;

-(id) initWithThing:(MHVThing *) thing andCallback:(MHVTaskCompletion) callback;
-(id) initWithThings:(MHVThingCollection *) things andCallback:(MHVTaskCompletion) callback;

+(MHVPutThingsTask *) newForRecord:(MHVRecordReference *) record thing:(MHVThing *) thing andCallback:(MHVTaskCompletion)callback;
+(MHVPutThingsTask *) newForRecord:(MHVRecordReference *) record things:(MHVThingCollection *)things andCallback:(MHVTaskCompletion)callback;

@end
