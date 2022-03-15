// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: core/contract/storage_contract.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - StorageContractRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface StorageContractRoot : GPBRootObject
@end

#pragma mark - BuyStorageBytesContract

typedef GPB_ENUM(BuyStorageBytesContract_FieldNumber) {
  BuyStorageBytesContract_FieldNumber_OwnerAddress = 1,
  BuyStorageBytesContract_FieldNumber_Bytes = 2,
};

GPB_FINAL @interface BuyStorageBytesContract : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *ownerAddress;

/** storage bytes for buy */
@property(nonatomic, readwrite) int64_t bytes;

@end

#pragma mark - BuyStorageContract

typedef GPB_ENUM(BuyStorageContract_FieldNumber) {
  BuyStorageContract_FieldNumber_OwnerAddress = 1,
  BuyStorageContract_FieldNumber_Quant = 2,
};

GPB_FINAL @interface BuyStorageContract : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *ownerAddress;

/** vs quantity for buy storage (vdt) */
@property(nonatomic, readwrite) int64_t quant;

@end

#pragma mark - SellStorageContract

typedef GPB_ENUM(SellStorageContract_FieldNumber) {
  SellStorageContract_FieldNumber_OwnerAddress = 1,
  SellStorageContract_FieldNumber_StorageBytes = 2,
};

GPB_FINAL @interface SellStorageContract : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *ownerAddress;

@property(nonatomic, readwrite) int64_t storageBytes;

@end

#pragma mark - UpdateBrokerageContract

typedef GPB_ENUM(UpdateBrokerageContract_FieldNumber) {
  UpdateBrokerageContract_FieldNumber_OwnerAddress = 1,
  UpdateBrokerageContract_FieldNumber_Brokerage = 2,
};

GPB_FINAL @interface UpdateBrokerageContract : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *ownerAddress;

/** 1 mean 1% */
@property(nonatomic, readwrite) int32_t brokerage;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
