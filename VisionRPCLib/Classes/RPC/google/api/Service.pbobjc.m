// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/service.proto

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

#import "Service.pbobjc.h"
#import "Annotations.pbobjc.h"
#import "Auth.pbobjc.h"
#import "Backend.pbobjc.h"
#import "Billing.pbobjc.h"
#import "Consumer.pbobjc.h"
#import "Context.pbobjc.h"
#import "Control.pbobjc.h"
#import "Documentation.pbobjc.h"
#import "HTTP.pbobjc.h"
#import "Label.pbobjc.h"
#import "Log.pbobjc.h"
#import "Logging.pbobjc.h"
#import "Metric.pbobjc.h"
#import "MonitoredResource.pbobjc.h"
#import "Monitoring.pbobjc.h"
#import "SystemParameter.pbobjc.h"
#import "Usage.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(Authentication);
GPBObjCClassDeclaration(Backend);
GPBObjCClassDeclaration(Billing);
GPBObjCClassDeclaration(Context);
GPBObjCClassDeclaration(Control);
GPBObjCClassDeclaration(Documentation);
GPBObjCClassDeclaration(GPBApi);
GPBObjCClassDeclaration(GPBEnum);
GPBObjCClassDeclaration(GPBType);
GPBObjCClassDeclaration(GPBUInt32Value);
GPBObjCClassDeclaration(Http);
GPBObjCClassDeclaration(LogDescriptor);
GPBObjCClassDeclaration(Logging);
GPBObjCClassDeclaration(MetricDescriptor);
GPBObjCClassDeclaration(MonitoredResourceDescriptor);
GPBObjCClassDeclaration(Monitoring);
GPBObjCClassDeclaration(ProjectProperties);
GPBObjCClassDeclaration(SystemParameters);
GPBObjCClassDeclaration(Usage);

#pragma mark - ServiceRoot

@implementation ServiceRoot

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

#pragma mark - ServiceRoot_FileDescriptor

static GPBFileDescriptor *ServiceRoot_FileDescriptor(void) {
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

#pragma mark - Service

@implementation Service

@dynamic hasConfigVersion, configVersion;
@dynamic name;
@dynamic id_p;
@dynamic title;
@dynamic producerProjectId;
@dynamic apisArray, apisArray_Count;
@dynamic typesArray, typesArray_Count;
@dynamic enumsArray, enumsArray_Count;
@dynamic hasDocumentation, documentation;
@dynamic hasBackend, backend;
@dynamic hasHTTP, HTTP;
@dynamic hasAuthentication, authentication;
@dynamic hasContext, context;
@dynamic hasUsage, usage;
@dynamic hasProjectProperties, projectProperties;
@dynamic hasControl, control;
@dynamic logsArray, logsArray_Count;
@dynamic metricsArray, metricsArray_Count;
@dynamic monitoredResourcesArray, monitoredResourcesArray_Count;
@dynamic hasBilling, billing;
@dynamic hasLogging, logging;
@dynamic hasMonitoring, monitoring;
@dynamic hasSystemParameters, systemParameters;

typedef struct Service__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSString *title;
  NSMutableArray *apisArray;
  NSMutableArray *typesArray;
  NSMutableArray *enumsArray;
  Documentation *documentation;
  Backend *backend;
  Http *HTTP;
  Authentication *authentication;
  Context *context;
  Usage *usage;
  ProjectProperties *projectProperties;
  GPBUInt32Value *configVersion;
  Control *control;
  NSString *producerProjectId;
  NSMutableArray *logsArray;
  NSMutableArray *metricsArray;
  NSMutableArray *monitoredResourcesArray;
  Billing *billing;
  Logging *logging;
  Monitoring *monitoring;
  SystemParameters *systemParameters;
  NSString *id_p;
} Service__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.clazz = Nil,
        .number = Service_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Service__storage_, name),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "title",
        .dataTypeSpecific.clazz = Nil,
        .number = Service_FieldNumber_Title,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Service__storage_, title),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "apisArray",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBApi),
        .number = Service_FieldNumber_ApisArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, apisArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "typesArray",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBType),
        .number = Service_FieldNumber_TypesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, typesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "enumsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBEnum),
        .number = Service_FieldNumber_EnumsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, enumsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "documentation",
        .dataTypeSpecific.clazz = GPBObjCClass(Documentation),
        .number = Service_FieldNumber_Documentation,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(Service__storage_, documentation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "backend",
        .dataTypeSpecific.clazz = GPBObjCClass(Backend),
        .number = Service_FieldNumber_Backend,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(Service__storage_, backend),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "HTTP",
        .dataTypeSpecific.clazz = GPBObjCClass(Http),
        .number = Service_FieldNumber_HTTP,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(Service__storage_, HTTP),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "authentication",
        .dataTypeSpecific.clazz = GPBObjCClass(Authentication),
        .number = Service_FieldNumber_Authentication,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(Service__storage_, authentication),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "context",
        .dataTypeSpecific.clazz = GPBObjCClass(Context),
        .number = Service_FieldNumber_Context,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(Service__storage_, context),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "usage",
        .dataTypeSpecific.clazz = GPBObjCClass(Usage),
        .number = Service_FieldNumber_Usage,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(Service__storage_, usage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "projectProperties",
        .dataTypeSpecific.clazz = GPBObjCClass(ProjectProperties),
        .number = Service_FieldNumber_ProjectProperties,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(Service__storage_, projectProperties),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "configVersion",
        .dataTypeSpecific.clazz = GPBObjCClass(GPBUInt32Value),
        .number = Service_FieldNumber_ConfigVersion,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Service__storage_, configVersion),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "control",
        .dataTypeSpecific.clazz = GPBObjCClass(Control),
        .number = Service_FieldNumber_Control,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(Service__storage_, control),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "producerProjectId",
        .dataTypeSpecific.clazz = Nil,
        .number = Service_FieldNumber_ProducerProjectId,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Service__storage_, producerProjectId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "logsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(LogDescriptor),
        .number = Service_FieldNumber_LogsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, logsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metricsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(MetricDescriptor),
        .number = Service_FieldNumber_MetricsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, metricsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "monitoredResourcesArray",
        .dataTypeSpecific.clazz = GPBObjCClass(MonitoredResourceDescriptor),
        .number = Service_FieldNumber_MonitoredResourcesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Service__storage_, monitoredResourcesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "billing",
        .dataTypeSpecific.clazz = GPBObjCClass(Billing),
        .number = Service_FieldNumber_Billing,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(Service__storage_, billing),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "logging",
        .dataTypeSpecific.clazz = GPBObjCClass(Logging),
        .number = Service_FieldNumber_Logging,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(Service__storage_, logging),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "monitoring",
        .dataTypeSpecific.clazz = GPBObjCClass(Monitoring),
        .number = Service_FieldNumber_Monitoring,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(Service__storage_, monitoring),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "systemParameters",
        .dataTypeSpecific.clazz = GPBObjCClass(SystemParameters),
        .number = Service_FieldNumber_SystemParameters,
        .hasIndex = 16,
        .offset = (uint32_t)offsetof(Service__storage_, systemParameters),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "id_p",
        .dataTypeSpecific.clazz = Nil,
        .number = Service_FieldNumber_Id_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Service__storage_, id_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Service class]
                                     rootClass:[ServiceRoot class]
                                          file:ServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Service__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\t!!!!\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
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
