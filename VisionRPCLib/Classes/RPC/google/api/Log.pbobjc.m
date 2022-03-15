// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/log.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "Log.pbobjc.h"
#import "Label.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(LabelDescriptor);

#pragma mark - LogRoot

@implementation LogRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - LogRoot_FileDescriptor

static GPBFileDescriptor *LogRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.api"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - LogDescriptor

@implementation LogDescriptor

@dynamic name;
@dynamic labelsArray, labelsArray_Count;
@dynamic description_p;
@dynamic displayName;

typedef struct LogDescriptor__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSMutableArray *labelsArray;
  NSString *description_p;
  NSString *displayName;
} LogDescriptor__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = LogDescriptor_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LogDescriptor__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "labelsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(LabelDescriptor),
        .number = LogDescriptor_FieldNumber_LabelsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(LogDescriptor__storage_, labelsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.clazz = Nil,
        .number = LogDescriptor_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LogDescriptor__storage_, description_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "displayName",
        .dataTypeSpecific.clazz = Nil,
        .number = LogDescriptor_FieldNumber_DisplayName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(LogDescriptor__storage_, displayName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LogDescriptor class]
                                     rootClass:[LogRoot class]
                                          file:LogRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LogDescriptor__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
