//
// InternalErrorMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public struct InternalErrorMessage: Codable {


    public var code: Int?

    /** Details */
    public var message: String?
    public init(code: Int?, message: String?) { 
        self.code = code
        self.message = message
    }

}