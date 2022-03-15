// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/longrunning/operations.proto

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

#import "Operations.pbobjc.h"
#import "Annotations.pbobjc.h"
#import "Status.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(GPBAny);
GPBObjCClassDeclaration(Operation);
GPBObjCClassDeclaration(Status);

#pragma mark - OperationsRoot

@implementation OperationsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[AnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - OperationsRoot_FileDescriptor

static GPBFileDescriptor *OperationsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.longrunning"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Operation

@implementation Operation

@dynamic resultOneOfCase;
@dynamic name;
@dynamic hasMetadata, metadata;
@dynamic done;
@dynamic error;
@dynamic response;

typedef struct Operation__storage_ {
  uint32_t _has_storage_[2];
  NSString *name;
  GPBAny *metadata;
  Status *error;
  GPBAny *response;
} Operation__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Operation_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Operation__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "metadata",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBAny),
        .number = Operation_FieldNumber_Metadata,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Operation__storage_, metadata),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "done",
        .dataTypeSpecific.clazz = Nil,
        .number = Operation_FieldNumber_Done,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "error",
        .dataTypeSpecific.clazz = GPBObjCClass(Status),
        .number = Operation_FieldNumber_Error,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Operation__storage_, error),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "response",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBAny),
        .number = Operation_FieldNumber_Response,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Operation__storage_, response),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Operation class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Operation__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    static const char *oneofs[] = {
      "result",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Operation_ClearResultOneOfCase(Operation *message) {
  GPBDescriptor *descriptor = [Operation descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBClearOneof(message, oneof);
}
#pragma mark - GetOperationRequest

@implementation GetOperationRequest

@dynamic name;

typedef struct GetOperationRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} GetOperationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = GetOperationRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetOperationRequest__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetOperationRequest class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetOperationRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListOperationsRequest

@implementation ListOperationsRequest

@dynamic name;
@dynamic filter;
@dynamic pageSize;
@dynamic pageToken;

typedef struct ListOperationsRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t pageSize;
  NSString *filter;
  NSString *pageToken;
  NSString *name;
} ListOperationsRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "filter",
        .dataTypeSpecific.clazz = Nil,
        .number = ListOperationsRequest_FieldNumber_Filter,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ListOperationsRequest__storage_, filter),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pageSize",
        .dataTypeSpecific.clazz = Nil,
        .number = ListOperationsRequest_FieldNumber_PageSize,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ListOperationsRequest__storage_, pageSize),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pageToken",
        .dataTypeSpecific.clazz = Nil,
        .number = ListOperationsRequest_FieldNumber_PageToken,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ListOperationsRequest__storage_, pageToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = ListOperationsRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListOperationsRequest__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListOperationsRequest class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListOperationsRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListOperationsResponse

@implementation ListOperationsResponse

@dynamic operationsArray, operationsArray_Count;
@dynamic nextPageToken;

typedef struct ListOperationsResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *operationsArray;
  NSString *nextPageToken;
} ListOperationsResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "operationsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Operation),
        .number = ListOperationsResponse_FieldNumber_OperationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ListOperationsResponse__storage_, operationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nextPageToken",
        .dataTypeSpecific.clazz = Nil,
        .number = ListOperationsResponse_FieldNumber_NextPageToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListOperationsResponse__storage_, nextPageToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListOperationsResponse class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListOperationsResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CancelOperationRequest

@implementation CancelOperationRequest

@dynamic name;

typedef struct CancelOperationRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} CancelOperationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = CancelOperationRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CancelOperationRequest__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CancelOperationRequest class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CancelOperationRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DeleteOperationRequest

@implementation DeleteOperationRequest

@dynamic name;

typedef struct DeleteOperationRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} DeleteOperationRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = DeleteOperationRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeleteOperationRequest__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeleteOperationRequest class]
                                     rootClass:[OperationsRoot class]
                                          file:OperationsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeleteOperationRequest__storage_)
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
