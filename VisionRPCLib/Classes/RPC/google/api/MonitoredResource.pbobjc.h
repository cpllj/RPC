// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/monitored_resource.proto

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

@class LabelDescriptor;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MonitoredResourceRoot

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
GPB_FINAL @interface MonitoredResourceRoot : GPBRootObject
@end

#pragma mark - MonitoredResourceDescriptor

typedef GPB_ENUM(MonitoredResourceDescriptor_FieldNumber) {
  MonitoredResourceDescriptor_FieldNumber_Type = 1,
  MonitoredResourceDescriptor_FieldNumber_DisplayName = 2,
  MonitoredResourceDescriptor_FieldNumber_Description_p = 3,
  MonitoredResourceDescriptor_FieldNumber_LabelsArray = 4,
  MonitoredResourceDescriptor_FieldNumber_Name = 5,
};

/**
 * An object that describes the schema of a [MonitoredResource][google.api.MonitoredResource] object using a
 * type name and a set of labels.  For example, the monitored resource
 * descriptor for Google Compute Engine VM instances has a type of
 * `"gce_instance"` and specifies the use of the labels `"instance_id"` and
 * `"zone"` to identify particular VM instances.
 *
 * Different APIs can support different monitored resource types. APIs generally
 * provide a `list` method that returns the monitored resource descriptors used
 * by the API.
 **/
GPB_FINAL @interface MonitoredResourceDescriptor : GPBMessage

/**
 * Optional. The resource name of the monitored resource descriptor:
 * `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where
 * {type} is the value of the `type` field in this object and
 * {project_id} is a project ID that provides API-specific context for
 * accessing the type.  APIs that do not use project information can use the
 * resource name format `"monitoredResourceDescriptors/{type}"`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * Required. The monitored resource type. For example, the type
 * `"cloudsql_database"` represents databases in Google Cloud SQL.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/**
 * Optional. A concise name for the monitored resource type that might be
 * displayed in user interfaces. For example, `"Google Cloud SQL Database"`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *displayName;

/**
 * Optional. A detailed description of the monitored resource type that might
 * be used in documentation.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

/**
 * Required. A set of labels used to describe instances of this monitored
 * resource type. For example, an individual Google Cloud SQL database is
 * identified by values for the labels `"database_id"` and `"zone"`.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<LabelDescriptor*> *labelsArray;
/** The number of items in @c labelsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger labelsArray_Count;

@end

#pragma mark - MonitoredResource

typedef GPB_ENUM(MonitoredResource_FieldNumber) {
  MonitoredResource_FieldNumber_Type = 1,
  MonitoredResource_FieldNumber_Labels = 2,
};

/**
 * An object representing a resource that can be used for monitoring, logging,
 * billing, or other purposes. Examples include virtual machine instances,
 * databases, and storage devices such as disks. The `type` field identifies a
 * [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] object that describes the resource's
 * schema. Information in the `labels` field identifies the actual resource and
 * its attributes according to the schema. For example, a particular Compute
 * Engine VM instance could be represented by the following object, because the
 * [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] for `"gce_instance"` has labels
 * `"instance_id"` and `"zone"`:
 *
 *     { "type": "gce_instance",
 *       "labels": { "instance_id": "my-instance",
 *                   "zone": "us-central1-a" }}
 **/
GPB_FINAL @interface MonitoredResource : GPBMessage

/**
 * Required. The monitored resource type. This field must match
 * the `type` field of a [MonitoredResourceDescriptor][google.api.MonitoredResourceDescriptor] object. For
 * example, the type of a Cloud SQL database is `"cloudsql_database"`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *type;

/**
 * Required. Values for all of the labels listed in the associated monitored
 * resource descriptor. For example, Cloud SQL databases use the labels
 * `"database_id"` and `"zone"`.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *labels;
/** The number of items in @c labels without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger labels_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
