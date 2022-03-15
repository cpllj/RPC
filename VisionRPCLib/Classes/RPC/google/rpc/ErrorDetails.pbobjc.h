// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: rpc/error_details.proto

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

@class BadRequest_FieldViolation;
@class GPBDuration;
@class Help_Link;
@class QuotaFailure_Violation;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ErrorDetailsRoot

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
GPB_FINAL @interface ErrorDetailsRoot : GPBRootObject
@end

#pragma mark - RetryInfo

typedef GPB_ENUM(RetryInfo_FieldNumber) {
  RetryInfo_FieldNumber_RetryDelay = 1,
};

/**
 * Describes when the clients can retry a failed request. Clients could ignore
 * the recommendation here or retry when this information is missing from error
 * responses.
 *
 * It's always recommended that clients should use exponential backoff when
 * retrying.
 *
 * Clients should wait until `retry_delay` amount of time has passed since
 * receiving the error response before retrying.  If retrying requests also
 * fail, clients should use an exponential backoff scheme to gradually increase
 * the delay between retries based on `retry_delay`, until either a maximum
 * number of retires have been reached or a maximum retry delay cap has been
 * reached.
 **/
GPB_FINAL @interface RetryInfo : GPBMessage

/** Clients should wait at least this long between retrying the same request. */
@property(nonatomic, readwrite, strong, null_resettable) GPBDuration *retryDelay;
/** Test to see if @c retryDelay has been set. */
@property(nonatomic, readwrite) BOOL hasRetryDelay;

@end

#pragma mark - DebugInfo

typedef GPB_ENUM(DebugInfo_FieldNumber) {
  DebugInfo_FieldNumber_StackEntriesArray = 1,
  DebugInfo_FieldNumber_Detail = 2,
};

/**
 * Describes additional debugging info.
 **/
GPB_FINAL @interface DebugInfo : GPBMessage

/** The stack trace entries indicating where the error occurred. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *stackEntriesArray;
/** The number of items in @c stackEntriesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger stackEntriesArray_Count;

/** Additional debugging information provided by the server. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *detail;

@end

#pragma mark - QuotaFailure

typedef GPB_ENUM(QuotaFailure_FieldNumber) {
  QuotaFailure_FieldNumber_ViolationsArray = 1,
};

/**
 * Describes how a quota check failed.
 *
 * For example if a daily limit was exceeded for the calling project,
 * a service could respond with a QuotaFailure detail containing the project
 * id and the description of the quota limit that was exceeded.  If the
 * calling project hasn't enabled the service in the developer console, then
 * a service could respond with the project id and set `service_disabled`
 * to true.
 *
 * Also see RetryDetail and Help types for other details about handling a
 * quota failure.
 **/
GPB_FINAL @interface QuotaFailure : GPBMessage

/** Describes all quota violations. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<QuotaFailure_Violation*> *violationsArray;
/** The number of items in @c violationsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger violationsArray_Count;

@end

#pragma mark - QuotaFailure_Violation

typedef GPB_ENUM(QuotaFailure_Violation_FieldNumber) {
  QuotaFailure_Violation_FieldNumber_Subject = 1,
  QuotaFailure_Violation_FieldNumber_Description_p = 2,
};

/**
 * A message type used to describe a single quota violation.  For example, a
 * daily quota or a custom quota that was exceeded.
 **/
GPB_FINAL @interface QuotaFailure_Violation : GPBMessage

/**
 * The subject on which the quota check failed.
 * For example, "clientip:<ip address of client>" or "project:<Google
 * developer project id>".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *subject;

/**
 * A description of how the quota check failed. Clients can use this
 * description to find more about the quota configuration in the service's
 * public documentation, or find the relevant quota limit to adjust through
 * developer console.
 *
 * For example: "Service disabled" or "Daily Limit for read operations
 * exceeded".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@end

#pragma mark - BadRequest

typedef GPB_ENUM(BadRequest_FieldNumber) {
  BadRequest_FieldNumber_FieldViolationsArray = 1,
};

/**
 * Describes violations in a client request. This error type focuses on the
 * syntactic aspects of the request.
 **/
GPB_FINAL @interface BadRequest : GPBMessage

/** Describes all violations in a client request. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<BadRequest_FieldViolation*> *fieldViolationsArray;
/** The number of items in @c fieldViolationsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger fieldViolationsArray_Count;

@end

#pragma mark - BadRequest_FieldViolation

typedef GPB_ENUM(BadRequest_FieldViolation_FieldNumber) {
  BadRequest_FieldViolation_FieldNumber_Field = 1,
  BadRequest_FieldViolation_FieldNumber_Description_p = 2,
};

/**
 * A message type used to describe a single bad request field.
 **/
GPB_FINAL @interface BadRequest_FieldViolation : GPBMessage

/**
 * A path leading to a field in the request body. The value will be a
 * sequence of dot-separated identifiers that identify a protocol buffer
 * field. E.g., "violations.field" would identify this field.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *field;

/** A description of why the request element is bad. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@end

#pragma mark - RequestInfo

typedef GPB_ENUM(RequestInfo_FieldNumber) {
  RequestInfo_FieldNumber_RequestId = 1,
  RequestInfo_FieldNumber_ServingData = 2,
};

/**
 * Contains metadata about the request that clients can attach when filing a bug
 * or providing other forms of feedback.
 **/
GPB_FINAL @interface RequestInfo : GPBMessage

/**
 * An opaque string that should only be interpreted by the service generating
 * it. For example, it can be used to identify requests in the service's logs.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *requestId;

/**
 * Any data that was used to serve this request. For example, an encrypted
 * stack trace that can be sent back to the service provider for debugging.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *servingData;

@end

#pragma mark - ResourceInfo

typedef GPB_ENUM(ResourceInfo_FieldNumber) {
  ResourceInfo_FieldNumber_ResourceType = 1,
  ResourceInfo_FieldNumber_ResourceName = 2,
  ResourceInfo_FieldNumber_Owner = 3,
  ResourceInfo_FieldNumber_Description_p = 4,
};

/**
 * Describes the resource that is being accessed.
 **/
GPB_FINAL @interface ResourceInfo : GPBMessage

/**
 * A name for the type of resource being accessed, e.g. "sql table",
 * "cloud storage bucket", "file", "Google calendar"; or the type URL
 * of the resource: e.g. "type.googleapis.com/google.pubsub.v1.Topic".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *resourceType;

/**
 * The name of the resource being accessed.  For example, a shared calendar
 * name: "example.com_4fghdhgsrgh\@group.calendar.google.com", if the current
 * error is [google.rpc.Code.PERMISSION_DENIED][google.rpc.Code.PERMISSION_DENIED].
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *resourceName;

/**
 * The owner of the resource (optional).
 * For example, "user:<owner email>" or "project:<Google developer project
 * id>".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *owner;

/**
 * Describes what error is encountered when accessing this resource.
 * For example, updating a cloud project may require the `writer` permission
 * on the developer console project.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@end

#pragma mark - Help

typedef GPB_ENUM(Help_FieldNumber) {
  Help_FieldNumber_LinksArray = 1,
};

/**
 * Provides links to documentation or for performing an out of band action.
 *
 * For example, if a quota check failed with an error indicating the calling
 * project hasn't enabled the accessed service, this can contain a URL pointing
 * directly to the right place in the developer console to flip the bit.
 **/
GPB_FINAL @interface Help : GPBMessage

/** URL(s) pointing to additional information on handling the current error. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Help_Link*> *linksArray;
/** The number of items in @c linksArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger linksArray_Count;

@end

#pragma mark - Help_Link

typedef GPB_ENUM(Help_Link_FieldNumber) {
  Help_Link_FieldNumber_Description_p = 1,
  Help_Link_FieldNumber_URL = 2,
};

/**
 * Describes a URL link.
 **/
GPB_FINAL @interface Help_Link : GPBMessage

/** Describes what the link offers. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

/** The URL of the link. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *URL;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
