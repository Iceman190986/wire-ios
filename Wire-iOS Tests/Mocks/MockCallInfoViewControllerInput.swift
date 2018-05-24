//
// Wire
// Copyright (C) 2018 Wire Swiss GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//

import Foundation
@testable import Wire

struct MockCallInfoViewControllerInput: CallInfoViewControllerInput {
    var videoPlaceholderState: CallVideoPlaceholderState
    var permissions: CallPermissionsConfiguration
    var degradationState: CallDegradationState
    var accessoryType: CallInfoViewControllerAccessoryType
    var canToggleMediaType: Bool
    var isMuted: Bool
    var isTerminating: Bool
    var canAccept: Bool
    var mediaState: MediaState
    var state: CallStatusViewState
    var isConstantBitRate: Bool
    var title: String
    var isVideoCall: Bool
    var variant: ColorSchemeVariant
    var disableIdleTimer: Bool
}

extension MockCallInfoViewControllerInput: CustomDebugStringConvertible  {
    var debugDescription: String {
        return """
        <MockCallInfoConfiguration>
        "degradationState: \(degradationState)"
        accessoryType: \(accessoryType.showAvatar ? "avatar" : "participants (\(accessoryType.participants.count)")
        canToggleMediaType: \(canToggleMediaType)
        isMuted: \(isMuted)
        isTerminating: \(isTerminating)
        canAccept \(canAccept)
        mediaState: \(mediaState)
        state: \(state)
        isConstantBitRate: \(isConstantBitRate)
        title: \(title)
        isVideoCall: \(isVideoCall)
        variant: \(variant)
        """
    }
}