X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/28/1
Message-ID: <CAKP6k2s9g0ALG58ZRsx9AhTppeAL6yJfRDGd7QAvS9SXU3M5LA@mail.gmail.com>
Date: Wed, 27 Nov 2019 23:05:54 -0800
From: Jesse <purplecabbage@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)
Content-Type: text/plain; charset=utf-8

CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)
===

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Cordova Android applications using the InAppBrowser
plugin
( cordova-plugin-inappbrowser version 3.0.0 and below )

Description: A website running in the InAppBrowser webview on Android could
execute
arbitrary JavaScript in the main application's webview using a specially
crafted gap-iab: URI.

Upgrade path: Developers who are concerned about this issue should install
version 3.1.0 or higher of cordova-plugin-inappbrowser

Mitigation Steps: Upgrade plugin to 3.1.0 or higher and rebuild
application, update deployments.

Credit: Sergey Bobrov (Kaspersky Lab)

