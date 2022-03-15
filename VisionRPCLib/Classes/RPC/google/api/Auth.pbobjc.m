// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/auth.proto

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

#import "Auth.pbobjc.h"
#import "Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(AuthProvider);
GPBObjCClassDeclaration(AuthRequirement);
GPBObjCClassDeclaration(AuthenticationRule);
GPBObjCClassDeclaration(OAuthRequirements);

#pragma mark - AuthRoot

@implementation AuthRoot

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

#pragma mark - AuthRoot_FileDescriptor

static GPBFileDescriptor *AuthRoot_FileDescriptor(void) {
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

#pragma mark - Authentication

@implementation Authentication

@dynamic rulesArray, rulesArray_Count;
@dynamic providersArray, providersArray_Count;

typedef struct Authentication__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *rulesArray;
  NSMutableArray *providersArray;
} Authentication__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "rulesArray",
        .dataTypeSpecific.clazz = GPBObjCClass(AuthenticationRule),
        .number = Authentication_FieldNumber_RulesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Authentication__storage_, rulesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "providersArray",
        .dataTypeSpecific.clazz = GPBObjCClass(AuthProvider),
        .number = Authentication_FieldNumber_ProvidersArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Authentication__storage_, providersArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Authentication class]
                                     rootClass:[AuthRoot class]
                                          file:AuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Authentication__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AuthenticationRule

@implementation AuthenticationRule

@dynamic selector;
@dynamic hasOauth, oauth;
@dynamic allowWithoutCredential;
@dynamic requirementsArray, requirementsArray_Count;

typedef struct AuthenticationRule__storage_ {
  uint32_t _has_storage_[1];
  NSString *selector;
  OAuthRequirements *oauth;
  NSMutableArray *requirementsArray;
} AuthenticationRule__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "selector",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthenticationRule_FieldNumber_Selector,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AuthenticationRule__storage_, selector),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "oauth",
        .dataTypeSpecific.clazz = GPBObjCClass(OAuthRequirements),
        .number = AuthenticationRule_FieldNumber_Oauth,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AuthenticationRule__storage_, oauth),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "allowWithoutCredential",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthenticationRule_FieldNumber_AllowWithoutCredential,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "requirementsArray",
        .dataTypeSpecific.clazz = GPBObjCClass(AuthRequirement),
        .number = AuthenticationRule_FieldNumber_RequirementsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AuthenticationRule__storage_, requirementsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AuthenticationRule class]
                                     rootClass:[AuthRoot class]
                                          file:AuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AuthenticationRule__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AuthProvider

@implementation AuthProvider

@dynamic id_p;
@dynamic issuer;
@dynamic jwksUri;

typedef struct AuthProvider__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *issuer;
  NSString *jwksUri;
} AuthProvider__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthProvider_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AuthProvider__storage_, id_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "issuer",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthProvider_FieldNumber_Issuer,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AuthProvider__storage_, issuer),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "jwksUri",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthProvider_FieldNumber_JwksUri,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AuthProvider__storage_, jwksUri),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AuthProvider class]
                                     rootClass:[AuthRoot class]
                                          file:AuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AuthProvider__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - OAuthRequirements

@implementation OAuthRequirements

@dynamic canonicalScopes;

typedef struct OAuthRequirements__storage_ {
  uint32_t _has_storage_[1];
  NSString *canonicalScopes;
} OAuthRequirements__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "canonicalScopes",
        .dataTypeSpecific.clazz = Nil,
        .number = OAuthRequirements_FieldNumber_CanonicalScopes,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(OAuthRequirements__storage_, canonicalScopes),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[OAuthRequirements class]
                                     rootClass:[AuthRoot class]
                                          file:AuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(OAuthRequirements__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AuthRequirement

@implementation AuthRequirement

@dynamic providerId;
@dynamic audiences;

typedef struct AuthRequirement__storage_ {
  uint32_t _has_storage_[1];
  NSString *providerId;
  NSString *audiences;
} AuthRequirement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "providerId",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthRequirement_FieldNumber_ProviderId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AuthRequirement__storage_, providerId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "audiences",
        .dataTypeSpecific.clazz = Nil,
        .number = AuthRequirement_FieldNumber_Audiences,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AuthRequirement__storage_, audiences),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AuthRequirement class]
                                     rootClass:[AuthRoot class]
                                          file:AuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AuthRequirement__storage_)
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
