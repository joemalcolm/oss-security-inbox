Received: (qmail 32505 invoked by uid 550); 30 Nov 2023 16:43:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7854 invoked from network); 30 Nov 2023 16:34:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <700bdff0-d154-6b42-7c7e-ae22ef0ace6f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 16:34:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49735: Apache Tiles: Unvalidated input may lead to path
 traversal and XXE 

Severity: low

Affected versions:

- Apache Tiles 2.0.0 before *

Description:

** UNSUPPORTED WHEN ASSIGNED **

The value set as the DefaultLocaleResolver.LOCALE_KEY attribute on the sess=
ion was not validated while resolving XML definition files, leading to poss=
ible path traversal and eventually SSRF/XXE when passing user-controlled da=
ta to this key. Passing user-controlled data to this key may be relatively =
common, as it was also used like that to set the language in the 'tiles-tes=
t' application shipped with Tiles.

This issue affects Apache Tiles from version 2 onwards.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Joseph Beeton of Contrast Security (finder)

References:

https://attic.apache.org/projects/tiles.html
https://www.cve.org/CVERecord?id=3DCVE-2023-49735

