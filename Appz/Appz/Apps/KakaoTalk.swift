//
//  KakaoTalk.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct KakaoTalk: ExternalApplication {
        
        public typealias ActionType = Applications.KakaoTalk.Action
        
        public let scheme = "kakaotalk:"
        public let fallbackURL = "http://www.kakao.com/talk"
        public let appStoreId = "362057947"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.KakaoTalk {
    
    public enum Action {
        case Open
    }
}

extension Applications.KakaoTalk.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
