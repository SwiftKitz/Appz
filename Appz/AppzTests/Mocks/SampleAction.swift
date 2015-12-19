//
//  SampleAction.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import Appz


struct SampleAction: ExternalApplicationAction {
    
    var paths = ActionPaths(
        app: Path(
            pathComponents: ["search", "something"],
            queryParameters: ["param": "5"]
        ),
        web: Path(
            pathComponents: ["find", "otherThing"],
            queryParameters: ["param": "1"]
        )
    )
}
