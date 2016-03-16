import XCTest
import Foundation
import Boom

///
///
///
class BoomTest: XCTestCase {
    
    func testBadRequest() {
        let error = Boom.BadRequest()
        XCAssertEqual(error.code, 400)
    }
    
    func testUnauthorized() {
        let error = Boom.BadRequest()
        XCAssertEqual(error.code, 401)
    }
}
