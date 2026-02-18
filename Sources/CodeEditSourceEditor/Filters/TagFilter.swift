//
//  TagFilter.swift
//  CodeEditSourceEditor
//
//  Created by Roscoe Rubin-Rottenberg on 5/18/24.
//

import Foundation
import TextFormation
import TextStory
import CodeEditTextView
import CodeEditLanguages
import SwiftTreeSitter

struct TagFilter: Filter {
    enum Error: Swift.Error {
        case invalidLanguage
        case queryStringDataMissing
    }

    var language: CodeLanguage
    var indentOption: IndentOption
    var lineEnding: LineEnding
    var treeSitterClient: TreeSitterClient

    func processMutation(
        _ mutation: TextMutation,
        in interface: TextInterface,
        with whitespaceProvider: WhitespaceProviders
    ) -> FilterAction {
        // Tag auto-closing is only relevant for HTML/JSX/TSX languages,
        // which are not included in this build.
        return .none
    }
}
