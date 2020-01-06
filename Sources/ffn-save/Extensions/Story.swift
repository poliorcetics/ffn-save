//
//  Story.swift
//  
//
//  Created by Alexis Bourget on 2020-01-06.
//

import Foundation
import ffn_dl

internal extension Story {
  var dir: String {
    "\(Self.site.dir)/\(title.lowercased().replacingOccurrences(of: #"\W+"#, with: "-", options: .regularExpression))"
  }
}
