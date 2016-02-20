//
//  post.swift
//  my-hood-test-app
//
//  Created by Eric Klose on 2/20/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import Foundation

class Post {

    private var _imagePath: String
    private var _title: String
    private var _postDesc: String
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, postDesc: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = postDesc
    }
    
}