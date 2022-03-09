import XCTest
import class Foundation.Bundle
import ZippyJSON
@testable import JsonBenchmark

final class JsonBenchmarkTests: XCTestCase {
    var testsHelper = TestHelpers()
    
    func testDefault() throws {
        let data = testsHelper.loadData("medium")
        let decoder = DecoderFactory.defaultJSONSwiftDecoder()
        
        self.measure {
            guard let decodedData = try? decoder.decode(SampleData.self, from: data!) else {
                XCTFail("error")
                return
            }
            XCTAssert(decodedData.count == 336)
        }
    }
    
    func testZippy() throws {
        let data = testsHelper.loadData("medium")
        let decoder = DecoderFactory.zippyJSONDecoder()
        self.measure {
            guard let decodedData = try? decoder.decode(SampleData.self, from: data!) else {
                XCTFail("error")
                return
            }
            XCTAssert(decodedData.count == 336)
        }
    }
    
    func testIkiga() throws {
        let data = testsHelper.loadData("medium")
        let decoder = DecoderFactory.ikigaJSONDecoder()
        self.measure {
            guard let decodedData = try? decoder.decode(SampleData.self, from: data!) else {
                XCTFail("error")
                return
            }
            XCTAssert(decodedData.count == 336)
        }
    }

}
