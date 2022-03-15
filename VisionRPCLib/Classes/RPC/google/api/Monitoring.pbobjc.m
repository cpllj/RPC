// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/monitoring.proto

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

#import "Monitoring.pbobjc.h"
#import "Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(Monitoring);
GPBObjCClassDeclaration(Monitoring_MonitoringDestination);

#pragma mark - MonitoringRoot

@implementation MonitoringRoot

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

#pragma mark - MonitoringRoot_FileDescriptor

static GPBFileDescriptor *MonitoringRoot_FileDescriptor(void) {
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

#pragma mark - Monitoring

@implementation Monitoring

@dynamic producerDestinationsArray, producerDestinationsArray_Count;
@dynamic consumerDestinationsArray, consumerDestinationsArray_Count;

typedef struct Monitoring__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *producerDestinationsArray;
  NSMutableArray *consumerDestinationsArray;
} Monitoring__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "producerDestinationsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Monitoring_MonitoringDestination),
        .number = Monitoring_FieldNumber_ProducerDestinationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Monitoring__storage_, producerDestinationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "consumerDestinationsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(Monitoring_MonitoringDestination),
        .number = Monitoring_FieldNumber_ConsumerDestinationsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Monitoring__storage_, consumerDestinationsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Monitoring class]
                                     rootClass:[MonitoringRoot class]
                                          file:MonitoringRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Monitoring__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Monitoring_MonitoringDestination

@implementation Monitoring_MonitoringDestination

@dynamic monitoredResource;
@dynamic metricsArray, metricsArray_Count;

typedef struct Monitoring_MonitoringDestination__storage_ {
  uint32_t _has_storage_[1];
  NSString *monitoredResource;
  NSMutableArray *metricsArray;
} Monitoring_MonitoringDestination__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "monitoredResource",
        .dataTypeSpecific.clazz = Nil,
        .number = Monitoring_MonitoringDestination_FieldNumber_MonitoredResource,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Monitoring_MonitoringDestination__storage_, monitoredResource),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "metricsArray",
        .dataTypeSpecific.clazz = Nil,
        .number = Monitoring_MonitoringDestination_FieldNumber_MetricsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Monitoring_MonitoringDestination__storage_, metricsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Monitoring_MonitoringDestination class]
                                     rootClass:[MonitoringRoot class]
                                          file:MonitoringRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Monitoring_MonitoringDestination__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    [localDescriptor setupContainingMessageClass:GPBObjCClass(Monitoring)];
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
