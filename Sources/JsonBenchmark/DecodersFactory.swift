import Foundation
import ZippyJSON
import IkigaJSON

class DecoderFactory {
    static func defaultJSONSwiftDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601withFractionalSeconds
        return decoder
    }

    static func zippyJSONDecoder() -> ZippyJSONDecoder {
        let decoder = ZippyJSONDecoder()
        decoder.dateDecodingStrategy = .formatted(ISO8601withFractionalSeconds())
        return decoder
    }
    
    static func ikigaJSONDecoder() -> IkigaJSONDecoder {
        let decoder = IkigaJSONDecoder()
        decoder.settings.dateDecodingStrategy =
            .formatted(ISO8601withFractionalSeconds())
        decoder.settings.nilValueDecodingStrategy = .decodeNilForKeyNotFound
        return decoder
    }
    
    class ISO8601withFractionalSeconds: DateFormatter {
        override func date(from string: String) -> Date? {
            Formatter.iso8601withFractionalSeconds.date(from: string)
        }
    }
}
