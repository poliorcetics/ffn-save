//
//  Story.swift
//  
//
//  Created by Alexis Bourget on 2020-01-06.
//

import Foundation
import ffn_dl

internal extension Story {
  private var transformedTitle: String {
    title.lowercased().replacingOccurrences(of: #"\W+"#, with: "-", options: .regularExpression)
  }

  var dir: String {
    "\(Self.site.dir)/\(transformedTitle)"
  }

  /// Name of the HTML file containing the informations about the story.
  var HTMLInformationsFilename: String {
    "\(transformedTitle)_infos.html"
  }
}
