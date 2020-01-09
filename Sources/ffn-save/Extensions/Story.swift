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

  /// Name of the HTML file containing the informations about the story.
  var HTMLInformationsFilename: String {
    let filename = title
      .lowercased()
      .replacingOccurrences(of: #"\W+"#, with: "-", options: .regularExpression)
    return "\(filename)_infos.html"
  }
}
