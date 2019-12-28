//
//  StringExtension.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/6/9.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

extension String {
    
    /// 将原始的url编码为合法的url
    func urlEncode() -> String {
        let encodeUrlString = self.replacingOccurrences(of: "%", with: "%25").addingPercentEncoding(withAllowedCharacters:
            .urlPathAllowed)!.replacingOccurrences(of: "&", with: "%26").replacingOccurrences(of: "=", with: "%3d")
        return encodeUrlString
    }
    
    /// 将编码后的url转换回原始的url
    func urlDecode() -> String {
        return self.removingPercentEncoding ?? ""
    }
    
    /// 字符串编码 Base64
    func base64Encode() -> String {
        return Data(self.utf8).base64EncodedString()
    }
    
    /// Base64 解码字符串
    func base64Decode() -> String {
        guard let data = Data(base64Encoded: self) else {
            return ""
        }
        
        return String(data: data, encoding: .utf8)!
    }
    
    /// MD5 运算字符串
    /* func md5() -> String {
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        // result.deinitialize(count: strLen)
        return String(format: hash as String)
    }
     */
    
    /// 本地化字符串
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
    
}
