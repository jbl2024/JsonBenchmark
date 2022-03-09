import Foundation

struct SampleObject: Decodable, CustomStringConvertible {
    let id: String
    let type: String
    
    let data: String
    let dataUrl: String?
    let checksum: String
    
    let createdAt: Date?
    let updatedAt: Date?
    let receivedAt: Date?
    let deletedAt: Date?
    
    var description: String {
        return "\(self.id)"
    }
}

struct SampleData: Decodable, CustomStringConvertible {
    let objects: [SampleObject]
    
    var description: String {
        return "\(self.objects.count)"
    }
    
    var count: Int {
        return self.objects.count
    }
}


