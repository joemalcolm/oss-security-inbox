X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12195" "Thursday" "6" "April" "2017" "21:26:56" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<27cedcfc-2c7d-ac58-d2e0-f7e2c92beeb7@igalia.com>" "298" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0003" nil nil nil "4" "2017040619:26:56" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0003" (number mark "U       clopez@igali Apr  6  298/12195 " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0003\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1688 invoked by uid 550); 6 Apr 2017 19:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1622 invoked from network); 6 Apr 2017 19:27:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Cc:Subject:From:To; bh=6F60CeIpOnoDw0kbkaTpqoOEAWELRgf79D0kOyhl3mw=;
	b=SbuGbjtMCEVXm2cMB96kgTqngAzBsBUIsvMhmMWeqjFcSjHlNNYx5OZuo5yJ68dffju3i+GoHDvB6friRNF1/VErfUC+cQFwfKYsyxpm9pO9XG6Yu3m7meILiCP1kawVtMFSaf3321L7jAXb/TxmxSU86iJUhTplBtRk9liqBteGPgwTGO6udTOkF8DW84o56Wk1X0D9klPe98hZTw1iBAwYSAdYTy9eh6mhqcuD1tl3gniCMumJPelO8yR4N+wv0IlG/f4qcJlWvTeWdEu06A5InkrGRLlWlMk2MpviditkvyBbsYzNaN5pBx+Edb8XyAKYjhOpGXd5m1czpgWl0Q==;
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Mail-Followup-To: "webkit-gtk@lists.webkit.org"
 <webkit-gtk@lists.webkit.org>, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <27cedcfc-2c7d-ac58-d2e0-f7e2c92beeb7@igalia.com>
Date: Thu, 6 Apr 2017 21:26:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="seID20dN3Vpm9PXww4ckfu6OJII6g9hOB"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0003

--seID20dN3Vpm9PXww4ckfu6OJII6g9hOB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0003
------------------------------------------------------------------------

Date reported      : April 06, 2017
Advisory ID        : WSA-2017-0003
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0003.html
CVE identifiers    : CVE-2016-9642, CVE-2016-9643, CVE-2017-2364,
                     CVE-2017-2367, CVE-2017-2376, CVE-2017-2377,
                     CVE-2017-2386, CVE-2017-2392, CVE-2017-2394,
                     CVE-2017-2395, CVE-2017-2396, CVE-2017-2405,
                     CVE-2017-2415, CVE-2017-2419, CVE-2017-2433,
                     CVE-2017-2442, CVE-2017-2445, CVE-2017-2446,
                     CVE-2017-2447, CVE-2017-2454, CVE-2017-2455,
                     CVE-2017-2457, CVE-2017-2459, CVE-2017-2460,
                     CVE-2017-2464, CVE-2017-2465, CVE-2017-2466,
                     CVE-2017-2468, CVE-2017-2469, CVE-2017-2470,
                     CVE-2017-2471, CVE-2017-2475, CVE-2017-2476,
                     CVE-2017-2481.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2016-9642
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Gustavo Grieco.
    JavaScriptCore in WebKit allows attackers to cause a denial of
    service (out-of-bounds heap read) via a crafted Javascript file.

CVE-2016-9643
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Gustavo Grieco.
    The regex code in WebKit allows remote attackers to cause a denial
    of service (memory consumption) as demonstrated in a large number of
    ($ (open parenthesis and dollar) followed by {-2,16} and a large
    number of +) (plus close parenthesis).

CVE-2017-2364
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to bypass the Same Origin Policy
    and obtain sensitive information via a crafted web site.

CVE-2017-2367
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to bypass the Same Origin Policy
    and obtain sensitive information via a crafted web site.

CVE-2017-2376
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to an anonymous researcher, Chris Hlady of Google Inc, Yuyang
    Zhou of Tencent Security Platform Department (security.tencent.com),
    Muneaki Nishimura (nishimunea) of Recruit Technologies Co., Ltd.,
    Michal Zalewski of Google Inc, an anonymous researcher.
    This issue allows remote attackers to spoof the address bar by
    leveraging text input during the loading of a page.

CVE-2017-2377
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Vicki Pfau.
    This issue involves the "WebKit Web Inspector" component. It allows
    attackers to cause a denial of service (memory corruption and
    application crash) by leveraging a window-close action during a
    debugger-pause state.

CVE-2017-2386
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Andr=C3=A9 Bargull.
    This issue allows remote attackers to bypass the Same Origin Policy
    and obtain sensitive information via a crafted web site.

CVE-2017-2392
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Max Bazaliy of Lookout.
    This issue allows attackers to execute arbitrary code or cause a
    denial of service (memory corruption) via a crafted app.

CVE-2017-2394
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Apple.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2395
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Apple.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2396
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Apple.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2405
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Apple.
    This issue involves the "WebKit Web Inspector" component. It allows
    remote attackers to execute arbitrary code or cause a denial of
    service (memory corruption and application crash) via a crafted web
    site.

CVE-2017-2415
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Kai Kang of Tencent's Xuanwu Lab (tentcent.com).
    This issue allows remote attackers to execute arbitrary code by
    leveraging an unspecified "type confusion.".

CVE-2017-2419
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Nicolai Gr=C3=B8dum of Cisco Systems.
    This issue allows remote attackers to bypass a Content Security
    Policy protection mechanism via unspecified vectors.

CVE-2017-2433
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Apple.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2442
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue involves the "WebKit JavaScript Bindings" component. It
    allows remote attackers to bypass the Same Origin Policy and obtain
    sensitive information via a crafted web site.

CVE-2017-2445
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to conduct Universal XSS (UXSS)
    attacks via crafted frame objects.

CVE-2017-2446
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Natalie Silvanovich of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code via a
    crafted web site that leverages the mishandling of strict mode
    functions.

CVE-2017-2447
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Natalie Silvanovich of Google Project Zero.
    This issue allows remote attackers to obtain sensitive information
    or cause a denial of service (memory corruption) via a crafted web
    site.

CVE-2017-2454
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption and application
    crash) via a crafted web site.

CVE-2017-2455
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2457
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    This issue allows allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption and application
    crash) via a crafted web site.

CVE-2017-2459
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2460
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2464
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Jeonghoon Shin, Natalie Silvanovich of Google Project
    Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2465
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Zheng Huang and Wei Yuan of Baidu Security Lab.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2466
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2468
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2469
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2470
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2471
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    A use-after-free vulnerability allows remote attackers to execute
    arbitrary code via a crafted web site.

CVE-2017-2475
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to lokihardt of Google Project Zero.
    This issue allows remote attackers to conduct Universal XSS (UXSS)
    attacks via crafted use of frames on a web site.

CVE-2017-2476
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to Ivan Fratric of Google Project Zero.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.

CVE-2017-2481
    Versions affected: WebKitGTK+ before 2.14.6.
    Credit to 0011 working with Trend Micro's Zero Day Initiative.
    This issue allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption and application crash)
    via a crafted web site.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
April 06, 2017


--seID20dN3Vpm9PXww4ckfu6OJII6g9hOB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJY5paAAAoJEJZQic5rlfiClc8P/26TJ2fYjxPLUsCVKN3Tmsis
b20n/98393NKZfDqV6QF8m3/unQ1zWxsT3rJfH7Lnhw8NjU2VGBV95jjT/CN7qyB
IQm7Cwirczf+tH4Xkq7+4G0RX2BdxDbGeAaYQPhn9iovm2iwsXIo1FTmPbtCnH+o
8SMT//WRg5nXNza2fmNyNpO9ySbBniYKdsR8sNk8ip/XN4FqD+zX2Zbi0g1uh7Kp
eHFxAN7r9oURz8ynkXIBlR1gt6zEBd7flv4JcRKIJFd2/gBZK5jKuK6VFoB/ZcJa
VwM/MX0lbQz2yfCSvTg0wu6YHCuwLiSLt4RUaCc/Vr8TeYuBBIqUAOUznRMAfKDn
XUhlcHnNGl4G6sUgMJ4x/7KaiVn30dKlkV2OvM/RYFg0u9k1EGPrkxktBhxGlWMs
joEUaxzPMLER5DgyFhIkOif0Bo9zuDOvDW8BMMJVx/cMTG+vo2Qh5gRrzDWmdgD4
kXp6HwAcCJCYI1RPbmg12Jwxf+Dxw7OmVqcHnytifIwUnWbDI1n5hkD1GKr6M85H
4G9TLz66/6N3zQK8hQtK7nyMlH5P29ZC7tUwKu4NYFjSoPZgftjxFz+QyQ/Q4M5s
uasc4kDVbiPZmmvs2rSlLWUzVlpHMTS3gFiiJBrR6Bj3XY0QW54VXcQPQO9ie7jf
y6qmkSkb3JSPtE3n3v8g
=hQ8p
-----END PGP SIGNATURE-----

--seID20dN3Vpm9PXww4ckfu6OJII6g9hOB--
