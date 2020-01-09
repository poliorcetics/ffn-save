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

  /// Directory in which to save the story (relative to an unspecified working directory)
  var dir: String {
    let author = self.author.name.lowercased().replacingOccurrences(of: #"\W+"#, with: "-", options: .regularExpression)
    return "\(Self.site.dir)/\(transformedTitle)_\(author)"
  }

  /// Name of the HTML file containing the informations about the story.
  var HTMLInformationsFilename: String {
    "\(transformedTitle)_infos.html"
  }
}
