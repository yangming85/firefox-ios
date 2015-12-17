/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation
import Shared

public struct UIConstants {
    static let DefaultHomePage = NSURL(string: "\(WebServer.sharedInstance.base)/about/home/#panel=0")!

    static let AppBackgroundColor = UIColor.blackColor()
    static let PrivateModePurple = UIColor(red: 207 / 255, green: 104 / 255, blue: 255 / 255, alpha: 1)
    static let PrivateModeLocationBackgroundColor = UIColor(red: 31 / 255, green: 31 / 255, blue: 31 / 255, alpha: 1)
    static let PrivateModeLocationBorderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.15)
    static let PrivateModeActionButtonTintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.8)
    static let PrivateModeTextHighlightColor = UIColor(red: 120 / 255, green: 120 / 255, blue: 165 / 255, alpha: 1)
    static let PrivateModeReaderModeBackgroundColor = UIColor(red: 89 / 255, green: 89 / 255, blue: 89 / 255, alpha: 1)

    static let ToolbarHeight: CGFloat = 44
    static let DefaultRowHeight: CGFloat = 58
    static let DefaultPadding: CGFloat = 10
    static let SnackbarButtonHeight: CGFloat = 48

    // Static fonts
    static let DefaultChromeSize: CGFloat = 14
    static let DefaultChromeSmallSize: CGFloat = 11
    static let DefaultChromeFont: UIFont = UIFont.systemFontOfSize(DefaultChromeSize, weight: UIFontWeightRegular)
    static let DefaultChromeBoldFont = UIFont.boldSystemFontOfSize(DefaultChromeSize)
    static let DefaultChromeSmallFontBold = UIFont.boldSystemFontOfSize(DefaultChromeSmallSize)

    // These highlight colors are currently only used on Snackbar buttons when they're pressed
    static let HighlightColor = UIColor(red: 205/255, green: 223/255, blue: 243/255, alpha: 0.9)
    static let HighlightText = UIColor(red: 42/255, green: 121/255, blue: 213/255, alpha: 1.0)

    static let PanelBackgroundColor = UIColor.whiteColor()
    static let SeparatorColor = UIColor(rgb: 0xcccccc)
    static let HighlightBlue = UIColor(red:76/255, green:158/255, blue:255/255, alpha:1)
    static let DestructiveRed = UIColor(red: 255/255, green: 64/255, blue: 0/255, alpha: 1.0)
    static let BorderColor = UIColor.blackColor().colorWithAlphaComponent(0.25)
    static let BackgroundColor = UIColor(red: 0.21, green: 0.23, blue: 0.25, alpha: 1)

    // settings
    static let TableViewHeaderBackgroundColor = UIColor(red: 242/255, green: 245/255, blue: 245/255, alpha: 1.0)
    static let TableViewHeaderTextColor = UIColor(red: 130/255, green: 135/255, blue: 153/255, alpha: 1.0)
    static let TableViewRowTextColor = UIColor(red: 53.55/255, green: 53.55/255, blue: 53.55/255, alpha: 1.0)
    static let TableViewSeparatorColor = UIColor(rgb: 0xD1D1D4)

    // Firefox Orange
    static let ControlTintColor = UIColor(red: 240.0 / 255, green: 105.0 / 255, blue: 31.0 / 255, alpha: 1)

    /// JPEG compression quality for persisted screenshots. Must be between 0-1.
    static let ScreenshotQuality: Float = 0.3
}

/// Strings that will be used for features that haven't yet landed.
private struct TempStrings {
    // Bug 1182303 - Checkbox to block alert spam.
    let disableAlerts = NSLocalizedString("Disable additional page dialogs", comment: "Pending feature; currently unused string! Checkbox label shown after multiple alerts are shown")

    // Bug 1186013 - Prompt for going to clipboard URL
    let goToCopiedURL = NSLocalizedString("Go to copied URL?", comment: "Pending feature; currently unused string! Prompt message shown when browser is opened with URL on the clipboard")
    let goToCopiedURLButton = NSLocalizedString("Go", comment: "Pending feature; currently unused string! Button to browse to URL on the clipboard when browser is opened")

    // Bug 1233418 - Login Manager Strings
    let loginsListTitle                 = NSLocalizedString("Logins", tableName: "LoginManager", comment: "Title for Logins List View screen")
    let loginSearchFieldTitle           = NSLocalizedString("Search", tableName: "LoginManager", comment: "Title for the search field at the top of the Logins list screen")
    let clearSearchAccessibilityLabel   = NSLocalizedString("Clear Search", tableName: "LoginManager", comment: "Clears the search input field and exits out of input mode")
    let searchOverlayAccessibilityLabel = NSLocalizedString("Enter Search Mode", tableName: "LoginManager", comment: "Accessibility label for entering search mode for logins")
    let detailUsernameRowTitle          = NSLocalizedString("username", tableName: "LoginManager", comment: "Title for username row in Login Detail View")
    let detailPasswordRowTitle          = NSLocalizedString("password", tableName: "LoginManager", comment: "Title for password row in Login Detail View")
    let detailWebsiteRowTitle           = NSLocalizedString("website", tableName: "LoginManager", comment: "Title for website row in Login Detail View")
    let deleteLoginDetail               = NSLocalizedString("Delete", tableName: "LoginManager", comment: "Button in login detail screen that deletes the current login")
    let lastLoginModified               = NSLocalizedString("Last modified %@", tableName: "LoginManager", comment: "Footer label describing when the login was last modifed")
    let revealPassword                  = NSLocalizedString("Reveal", tableName: "LoginManager", comment: "Reveal password text selection menu item")
    let openAndFill                     = NSLocalizedString("Open & Fill", tableName: "LoginManager", comment: "Open and Fill website text selection menu item")
    let deselectAll                     = NSLocalizedString("Deselect All", tableName: "LoginManager", comment: "Title for deselecting all selected logins")
    let selectAll                       = NSLocalizedString("Select All", tableName: "LoginManager", comment: "Title for selecting all logins")
    let deletePrompt                    = NSLocalizedString("Are you sure you want to delete all your logins?", tableName: "LoginManager", comment: "Prompt message warning user about deleting all of their logins")
    let deleteSelectedPrompt            = NSLocalizedString("Are you sure you want to delete the selected logins?", tableName: "LoginManager", comment: "Prompt message warning user about deleting the selected logins")
    let deleteSinglePrompt              = NSLocalizedString("Are you sure you want to delete this login?", tableName: "LoginManager", comment: "Prompt message warning user about deleting a single login")
    let deleteSyncedDevices             = NSLocalizedString("Deleted logins will be removed from all your connected devices.", tableName: "LoginManager", comment: "Prompt message warning the user that deleted logins will remove logins from all connected devices")
    let noResultsFound                  = NSLocalizedString("No Results Found", tableName: "LoginManager", comment: "Title displayed when no results are found after searching")
}

/// Old strings that will be removed when we kill 1.0. We need to keep them around for now for l10n export.
private struct ObsoleteStrings {
    let introMultiplePages = NSLocalizedString("Browse multiple Web pages at the same time with tabs.", tableName: "Intro", comment: "See http://mzl.la/1T8gxwo")
    let introPersonalize = NSLocalizedString("Personalize your Firefox just the way you like in Settings.", tableName: "Intro", comment: "See http://mzl.la/1T8gxwo")
    let introConnect = NSLocalizedString("Connect Firefox everywhere you use it.", tableName: "Intro", comment: "See http://mzl.la/1T8gxwo")
    let settingsSearchSuggestions = NSLocalizedString("Show search suggestions", comment: "Label for show search suggestions setting.")
    let settingsSignIn = NSLocalizedString("Sign in", comment: "Text message / button in the settings table view")
}
