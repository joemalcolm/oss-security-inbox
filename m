X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/30/6
Message-ID: <700bdff0-d154-6b42-7c7e-ae22ef0ace6f@apache.org>
Date: Thu, 30 Nov 2023 16:34:09 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-49735: Apache Tiles: Unvalidated input may lead to path traversal and XXE 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tiles 2.0.0 before *

Description:

** UNSUPPORTED WHEN ASSIGNED **

The value set as the DefaultLocaleResolver.LOCALE_KEY attribute on the session was not validated while resolving XML definition files, leading to possible path traversal and eventually SSRF/XXE when passing user-controlled data to this key. Passing user-controlled data to this key may be relatively common, as it was also used like that to set the language in the 'tiles-test' application shipped with Tiles.

This issue affects Apache Tiles from version 2 onwards.

NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Joseph Beeton of Contrast Security (finder)

References:

https://attic.apache.org/projects/tiles.html
https://www.cve.org/CVERecord?id=CVE-2023-49735

