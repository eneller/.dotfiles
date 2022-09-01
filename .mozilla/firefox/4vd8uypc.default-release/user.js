// firefox user.js configuration inspired by https://github.com/pyllyukko/user.js/ , https://github.com/arkenfox/user.js/
// PREF: cycle tabs by recently used
user_pref("browser.ctrlTab.sortByRecentlyUsed", true);
// PREF: Display a notification bar when websites offer data for offline use
// http://kb.mozillazine.org/Browser.offline-apps.notify
user_pref("browser.offline-apps.notify", true);
// PREF: Do not check if Firefox is the default browser
user_pref("browser.shell.checkDefaultBrowser", false);
// PREF: Disable the "new tab page" feature and show a blank tab instead
// https://wiki.mozilla.org/Privacy/Reviews/New_Tab
// https://support.mozilla.org/en-US/kb/new-tab-page-show-hide-and-customize-top-sites#w_how-do-i-turn-the-new-tab-page-off
user_pref("browser.newtabpage.enabled",	false);
user_pref("browser.newtab.url", "web.neller.org/dashboard");
// PREF: DNS over HTTPS
user_pref("network.trr.mode", 2);
user_pref("network.trr.uri", "https://mozilla.cloudflare-dns.com/dns-query");
// PREF: disable Ctrl + Q shortcut to close all tabs
user_pref("browser.quitShortcut.disabled", true);
// PREF: dont hide address bar and toolbars in fullscreen mode
user.pref("browser.fullscreen.autohide", false);
// PREF: dont save login information
user_pref("signon.rememberSignons", false);
// PREF: enable userChrome.css for visual adjustments
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
// PREF: dont show sponsored suggestions
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.urlbar.suggest.topsites", false)
user_pref("browser.urlbar.groupLabels.enabled", false);
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts", false ); 
user_pref("browser.partnerlink.campaign.topsites","");
// PREF: dont open suggestions at all when entering URL Bar
user_pref("browser.urlbar.suggest.topsites", false);
// PREF: disable firefox pocket
user_pref("extensions.pocket.enabled", false);
