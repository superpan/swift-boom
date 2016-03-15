import Foundation

///
/// Boom
///
public class Boom {
    
    ///
    /// statusCodes
    ///
    public static let statusCodes = [
        100: "Continue",
        101: "Switching Protocols",
        102: "Processing",
        200: "OK",
        201: "Created",
        202: "Accepted",
        203: "Non Authoritative Information",
        204: "No Content",
        205: "Reset Content",
        206: "Partial Content",
        207: "Multi-Status",
        300: "Multiple Choices",
        301: "Moved Permanently",
        302: "Moved Temporarily",
        303: "See Other",
        304: "Not Modified",
        305: "Use Proxy",
        307: "Temporary Redirect",
        400: "Bad Request",
        401: "Unauthorized",
        402: "Payment Required",
        403: "Forbidden",
        404: "Not Found",
        405: "Method Not Allowed",
        406: "Not Acceptable",
        407: "Proxy Authentication Required",
        408: "Request Timeout",
        409: "Conflict",
        410: "Gone",
        411: "Length Required",
        412: "Precondition Failed",
        413: "Request Entity Too Large",
        414: "Request-URI Too Long",
        415: "Unsupported Media Type",
        416: "Requested Range Not Satisfiable",
        417: "Expectation Failed",
        419: "Insufficient Space on Resource",
        420: "Method Failure",
        422: "Unprocessable Entity",
        424: "Failed Dependency",
        428: "Precondition Required",
        429: "Too Many Requests",
        431: "Request Header Fields Too Large",
        500: "Server Error",
        501: "Not Implemented",
        502: "Bad Gateway",
        503: "Service Unavailable",
        504: "Gateway Timeout",
        505: "HTTP Version Not Supported",
        507: "Insufficient Storage",
        511: "Network Authentication Required"
    ]
    
    ///
    /// constructor
    ///
    public init() {
        
    }
    
    ///
    /// return an instance of BoomError
    ///
    public static func create(code: Int, message: String?) -> BoomError {
        var messageString: String? = Boom.statusCodes[code]
        if message != nil {
            messageString = message!
        }
        
        return BoomError(code: code, message: messageString!)
    }
    
    ///
    /// return an instance of badRequest error
    ///
    public static func badRequest(message: String?) -> BoomError {
        return Boom.create(400, message: message)
    }
    
    ///
    /// return an instance of unathorized error
    ///
    public static func unauthorized(message: String?) -> BoomError {
        return Boom.create(401, message: message)
    }
    
    ///
    /// return an instance of forbidden error
    ///
    public static func forbidden(message: String?) -> BoomError {
        return Boom.create(403, message: message)
    }
    
    ///
    /// return an instance of notFound error
    ///
    public static func notFound(message: String?) -> BoomError {
        return Boom.create(404, message: message)
    }
    
    ///
    /// return an instance of method not allowed  error
    ///
    public static func methodNotAllowed(message: String?) -> BoomError {
        return Boom.create(405, message: message)
    }
    
    ///
    /// return an instance of not accpetable error
    ///
    public static func notAcceptable(message: String?) -> BoomError {
        return Boom.create(406, message: message)
    }
    
    ///
    /// return an instance of proxy auth required error
    ///
    public static func proxyAuthRequired(message: String?) -> BoomError {
        return Boom.create(407, message: message)
    }
    
    ///
    /// return an instance of client timeout error
    ///
    public static func clientTimeout(message: String?) -> BoomError {
        return Boom.create(408, message: message)
    }
    
    ///
    /// return an instance of conflict error
    ///
    public static func conflict(message: String?) -> BoomError {
        return Boom.create(409, message: message)
    }
    
    ///
    /// return an instance of source gone error
    ///
    public static func resourceGone(message: String?) -> BoomError {
        return Boom.create(410, message: message)
    }
    
    ///
    /// return an instance of internal server error
    ///
    public static func internalError(message: String?) -> BoomError {
        return Boom.create(500, message: message)
    }
}
