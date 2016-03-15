import Foundation

///
/// boom ErrorType
///
public class BoomError: ErrorType {
    public var code: Int?;
    public var message: String = "";
    
    public let _domain: String;
    public let _code: Int;
    
    ///
    /// if true, indicates this is a swift-boom object instance
    ///
    public var isBoom: Bool = false
    
    ///
    /// convenience bool indicating status code >= 500
    ///
    public var isServer: Bool = false
    
    ///
    /// constructor
    ///
    public init(code: Int, message: String) {
        self._domain = "swift-boom"
        
        self.code = code
        
        self._code = code
        
        if code >= 500 {
            self.isBoom = true
        } else {
            self.isBoom = false
        }
        
        self.message = message;
    }
}
