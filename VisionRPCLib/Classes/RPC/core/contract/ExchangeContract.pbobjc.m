// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: core/contract/exchange_contract.proto

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

#import "ExchangeContract.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - ExchangeContractRoot

@implementation ExchangeContractRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - ExchangeContractRoot_FileDescriptor

static GPBFileDescriptor *ExchangeContractRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"protocol"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - ExchangeCreateContract

@implementation ExchangeCreateContract

@dynamic ownerAddress;
@dynamic firstTokenId;
@dynamic firstTokenBalance;
@dynamic secondTokenId;
@dynamic secondTokenBalance;

typedef struct ExchangeCreateContract__storage_ {
  uint32_t _has_storage_[1];
  NSData *ownerAddress;
  NSData *firstTokenId;
  NSData *secondTokenId;
  int64_t firstTokenBalance;
  int64_t secondTokenBalance;
} ExchangeCreateContract__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "ownerAddress",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeCreateContract_FieldNumber_OwnerAddress,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ExchangeCreateContract__storage_, ownerAddress),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "firstTokenId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeCreateContract_FieldNumber_FirstTokenId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ExchangeCreateContract__storage_, firstTokenId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "firstTokenBalance",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeCreateContract_FieldNumber_FirstTokenBalance,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ExchangeCreateContract__storage_, firstTokenBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "secondTokenId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeCreateContract_FieldNumber_SecondTokenId,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ExchangeCreateContract__storage_, secondTokenId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "secondTokenBalance",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeCreateContract_FieldNumber_SecondTokenBalance,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ExchangeCreateContract__storage_, secondTokenBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ExchangeCreateContract class]
                                     rootClass:[ExchangeContractRoot class]
                                          file:ExchangeContractRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ExchangeCreateContract__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ExchangeInjectContract

@implementation ExchangeInjectContract

@dynamic ownerAddress;
@dynamic exchangeId;
@dynamic tokenId;
@dynamic quant;

typedef struct ExchangeInjectContract__storage_ {
  uint32_t _has_storage_[1];
  NSData *ownerAddress;
  NSData *tokenId;
  int64_t exchangeId;
  int64_t quant;
} ExchangeInjectContract__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "ownerAddress",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeInjectContract_FieldNumber_OwnerAddress,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ExchangeInjectContract__storage_, ownerAddress),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "exchangeId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeInjectContract_FieldNumber_ExchangeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ExchangeInjectContract__storage_, exchangeId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "tokenId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeInjectContract_FieldNumber_TokenId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ExchangeInjectContract__storage_, tokenId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "quant",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeInjectContract_FieldNumber_Quant,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ExchangeInjectContract__storage_, quant),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ExchangeInjectContract class]
                                     rootClass:[ExchangeContractRoot class]
                                          file:ExchangeContractRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ExchangeInjectContract__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ExchangeWithdrawContract

@implementation ExchangeWithdrawContract

@dynamic ownerAddress;
@dynamic exchangeId;
@dynamic tokenId;
@dynamic quant;

typedef struct ExchangeWithdrawContract__storage_ {
  uint32_t _has_storage_[1];
  NSData *ownerAddress;
  NSData *tokenId;
  int64_t exchangeId;
  int64_t quant;
} ExchangeWithdrawContract__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "ownerAddress",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeWithdrawContract_FieldNumber_OwnerAddress,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ExchangeWithdrawContract__storage_, ownerAddress),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "exchangeId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeWithdrawContract_FieldNumber_ExchangeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ExchangeWithdrawContract__storage_, exchangeId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "tokenId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeWithdrawContract_FieldNumber_TokenId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ExchangeWithdrawContract__storage_, tokenId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "quant",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeWithdrawContract_FieldNumber_Quant,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ExchangeWithdrawContract__storage_, quant),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ExchangeWithdrawContract class]
                                     rootClass:[ExchangeContractRoot class]
                                          file:ExchangeContractRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ExchangeWithdrawContract__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ExchangeTransactionContract

@implementation ExchangeTransactionContract

@dynamic ownerAddress;
@dynamic exchangeId;
@dynamic tokenId;
@dynamic quant;
@dynamic expected;

typedef struct ExchangeTransactionContract__storage_ {
  uint32_t _has_storage_[1];
  NSData *ownerAddress;
  NSData *tokenId;
  int64_t exchangeId;
  int64_t quant;
  int64_t expected;
} ExchangeTransactionContract__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "ownerAddress",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeTransactionContract_FieldNumber_OwnerAddress,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ExchangeTransactionContract__storage_, ownerAddress),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "exchangeId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeTransactionContract_FieldNumber_ExchangeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ExchangeTransactionContract__storage_, exchangeId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "tokenId",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeTransactionContract_FieldNumber_TokenId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ExchangeTransactionContract__storage_, tokenId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "quant",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeTransactionContract_FieldNumber_Quant,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(ExchangeTransactionContract__storage_, quant),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "expected",
        .dataTypeSpecific.clazz = Nil,
        .number = ExchangeTransactionContract_FieldNumber_Expected,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(ExchangeTransactionContract__storage_, expected),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ExchangeTransactionContract class]
                                     rootClass:[ExchangeContractRoot class]
                                          file:ExchangeContractRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ExchangeTransactionContract__storage_)
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
