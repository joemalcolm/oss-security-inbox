Received: (qmail 17685 invoked by uid 550); 7 Jun 2026 12:40:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26467 invoked from network); 7 Jun 2026 08:58:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Niklas Merz <niklasmerz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <25c447a3-ec28-37a6-472f-155cda0f452c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 Jun 2026 08:57:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-47430: Cordova Plugin InAppBrowser: iOS: Arbitrary
 Cordova callback IDs can be dispatched without validation from
 InAppBrowser WebViews 

Severity: important=20

Affected versions:

- Cordova Plugin InAppBrowser (cordova-plugin-inappbrowser) 3.1.0 through 6=
.0.0

Description:

## Summary

The iOS implementation of `cordova-plugin-inappbrowser` passes the `id` fie=
ld from a `WKScriptMessage` body to `commandDelegate sendPluginResult:callb=
ackId:` with no format validation (`CDVWKInAppBrowser.m:560=E2=80=93574`). =
Any web content loaded inside the InAppBrowser can fire any pending Cordova=
 callback in the host app by posting a message whose `id` field is a guessa=
ble or enumerated callback identifier. An attack abusing this weakness must=
 be tailored to the specific plugins and callback IDs the host app uses. Th=
ough an attacker with knowledge of common Cordova plugin configurations cou=
ld craft reusable payloads targeting widely-adopted plugins.


## Impact

An unauthenticated remote attacker who controls content displayed in the In=
AppBrowser =E2=80=94 via a URL the app opens (OAuth redirect, marketing lin=
k, deep-link target) or a network interception =E2=80=94 can call `window.w=
ebkit.messageHandlers.cordova_iab.postMessage({id: '<victim-callback-id>', =
d: '...'})` to fire callbacks belonging to any other installed Cordova plug=
in (Camera, Contacts, File, Geolocation). Cordova callback IDs follow the p=
redictable format `<PluginName><sequential-integer>`, making enumeration fe=
asible. Successful exploitation allows the attacker to spoof plugin results=
 across trust boundaries =E2=80=94 for example, injecting a forged camera a=
pproval, a fabricated contacts list, or a crafted file-read response.

This issue affects Cordova Plugin InAppBrowser: from 3.1.0 through 6.0.0.

Users are recommended to upgrade to version 6.0.1, which fixes the issue.

This issue is being tracked as #1152=20

Credit:

Niklas Merz (finder)

References:

https://cordova.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-47430
https://issues.apache.org/jira/browse/#1152

