import Foundation

///
/// http status code enum
///
public enum HttpStatusCodes: Int {
    case Accpeted = 202
    case BadGateway = 502
    case BadRequest = 400
    case Conflict = 409
    case Continue = 100
    case Created = 201
    case ExpectionFailed = 417
    case FailedDependency = 424
    case Forbidden = 403
    case GatewayTimeout = 504
    case Gone = 410
    case HttpVersionNotSupported = 505
    case InsufficientSpaceOnResource = 419
    case InsufficientStorage = 507
    case InternalServerError = 500
    case LengthRequired = 411
    case MethodFailure = 420
    case MethodNotAllowed = 405
    case MovedPermanently = 301
    case MovedTemporarily = 302
    case MultiStatus = 207
    case MultipleChoices = 300
    case NetworkAuthenticationRequired = 511
    case NoContent = 204
    case NonAuthoritativeInformation = 203
    case NotAcceptible = 406
    case NotFound = 404
    case NotImplemented = 501
    case NotModified = 304
    case OK = 200
    case PartialContent = 206
    case PaymentRequired = 402
    case PreconditionFailed = 412
    case PreconditionRequired = 428
    case ProxyAuthenticationRequired = 407
    case Processing = 102
    case RequestHeaderFieldsTooLarge = 431
    case RequestTimeout = 408
    case RequestTooLong = 413
    case RequestUriTooLong = 414
    case RequestedRangeNotSatisfiable = 416
    case ResetContent = 205
    case SeeOther = 303
    case ServiceUnavailable = 503
    case SwitchingProtocol = 101
    case TemporaryRedirect = 307
    case TooManyRequests = 429
    case Unauthorized = 401
    case UnprocessableEntity = 422
    case UnsupportedMediaType = 415
    case UseProxy = 305
    case Unknown = -1
}
