//
//  SpellingState.swift
//  SwiftyAttributes
//
//  Created by Eddie Kaiger on 11/16/16.
//  Copyright © 2016 Eddie Kaiger. All rights reserved.
//

#if os(macOS)
import AppKit

/**
     This enum controls the display of the spelling and grammar indicators on text,
     highlighting portions of the text that are flagged for spelling or grammar issues. 
     This should be used with `Attribute.spellingState`.
 */
public enum SpellingState: RawRepresentable {

    /// No spelling or grammar indicator.
    case none

    /// The spelling error indicator.
    case spellingFlag

    /// The grammar error indicator.
    case grammarFlag

    public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .none
        // FIXME: Xcode 9 beta does not recognize NSSpellingStateGrammarFlag and NSSpellingStateSpellingFlag, check back in later betas
        case 1: self = .spellingFlag
        case 2: self = .grammarFlag
        default: return nil
        }
    }

    public var rawValue: Int {
        switch self {
        case .none: return 0
        // FIXME: Xcode 9 beta does not recognize NSSpellingStateGrammarFlag and NSSpellingStateSpellingFlag, check back in later betas
        case .spellingFlag: return 1
        case .grammarFlag: return 2
        }
    }
}
#endif
