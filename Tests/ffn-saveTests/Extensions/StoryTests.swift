//
//  StoryTests.swift
//  
//
//  Created by Alexis Bourget on 2020-01-06.
//

import XCTest
import ffn_dl
@testable import ffn_save

fileprivate enum MockSite: Site {
  static let name = "Fanfiction.net"
  static let mainURL = URL(string: "https://www.fanfiction.net")!
  static let mobileURL = URL(string: "https://m.fanfiction.net")!
  static let regex = try! NSRegularExpression(pattern: "https://(m|www).fanfiction.net(/.*)?")
}

fileprivate struct MockAuthorBuilder {
  static let url = URL(string: "https://www.fanfiction.net/u/1122504/RuneWitchSakura")!
  static let name = "RuneWitchSakura"

  static let finder = Author.Finder(
    findURL: { _ in url },
    findName: { _ in name }
  )

  static func build() -> Author {
    Author(from: url, withFinder: finder)!
  }
}

fileprivate struct MockUniverseBuilder {
  static let url = URL(string: "https://www.fanfiction.net/book/Harry-Potter/")!
  static let name = "Harry Potter"
  static let isCrossover = false

  static let finder = Universe.Finder(
    findURL: { _ in url },
    findName: { _ in name },
    findCrossover: { _ in isCrossover }
  )

  static func build() -> Universe {
    Universe(from: url, withFinder: finder)!
  }
}

fileprivate struct MockStory: Story {
  static let site: Site.Type = MockSite.self

  let url = URL(string: "https://www.fanfiction.net/s/4951074/1/Harry-s-Little-Army-of-Psychos")!

  let title = "Harry's Little Army of Psychos"
  let summary = "Test summary"
  // Invalid in real code, but testing chapters is not the point here
  let chapters = [Chapter]()

  let author = MockAuthorBuilder.build()
  let universe = MockUniverseBuilder.build()
  let status = Status.complete
  let language = "English"

  let wordCount = 1000
  let tokens = "Test tokens"

  // Always failing, the parsing of a Document is not the point here
  init?(from doc: Document) {
    nil
  }

  // For successful init
  init() {}

  func update(chapters: [Int]) -> Story.UpdateResult {
    (.failure(""), [])
  }
}

final class StoryTests: XCTestCase {
  func testDir() {
    XCTAssertEqual(MockStory().dir, "fanfiction-net/harry-s-little-army-of-psychos")
  }

  func testHTMLInformationsFilename() {
    XCTAssertEqual(MockStory().HTMLInformationsFilename, "harry-s-little-army-of-psychos_infos.html")
  }
}
