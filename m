X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2410" "Sunday" "18" "August" "2019" "23:58:50" "-0400" "Justin Bull" "me@justinbull.ca" "<CAFB0D2QLM4Dp1_OGd92YwceyZBqfAhYiE07uTVs2V5Si2FRv7A@mail.gmail.com>" "88" "[oss-security] [CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3" nil nil nil "8" "2019081903:58:50" "[oss-security] [CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3" (number mark "U       me@justinbul Aug 18   88/2410  " thread-indent "\"[oss-security] [CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9219 invoked by uid 550); 19 Aug 2019 07:11:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15521 invoked from network); 19 Aug 2019 03:59:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull.ca; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=jLfDmey2zr5MreLUlFrY+iCF6YsOsiJcLY8ZN1Km5Vw=;
        b=F4LXy2NYSYodGC9yt5G6ThOmq4kxSetx3ZURRtdLCVr0t6egN//V9V7bfeC43tpZru
         +uUn3xmFQ+1FdI3UUnN+VPM5Wn8uEaxoT+LSJj294q6+NHsG6/pSTq+8fOp7BI8WsdiE
         6bkJkjYPF8Iv1CADC+pmrsVsTp4yJNAkgJI5jMPMM5L1nIABKvyJDklcgpWuaK2lxVw7
         XKtcwqh8Peu4zbZnNPhLN+whyndk9XuywSj4r2PyJ2EQbwQaBbknSbxpzQM3K/te4DPZ
         wdr3jl2DI5OzgVpS6j1+HQFDac1dKOXfVLVYDftnJP7fCU3rY709B64NAup5FQg+Snps
         t9Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jLfDmey2zr5MreLUlFrY+iCF6YsOsiJcLY8ZN1Km5Vw=;
        b=SRejIM8bi0qtr57ovI4MTH1sJ+ohYBI8aOPciv62JLGngRuZ0baUa9HsKviED224Ub
         ak0WZc7R3ygYHuW//y463LYL15el4r0TSX+x3F/wvaDK5dPZFn5zVdwWJVtmlJ2kVnro
         TIgWQz81QAm144LEBdKAOAU/c5huylnR3oZxMPMKW2DE1a/CB0ZEKg50oEdbKyuUgey6
         Vr3v3/FHjS86j8EWfKbh8BngDclNHfYb+WzftlWcHGdthvdG2Uhv6+6tHiYklkVoc62y
         fiTcFsmBc3eyxBLFVYFnY2axR4L67beFd41GF0UeMbpUa1ClNtbQ+NQcZAriYUZgog86
         r7Zg==
X-Gm-Message-State: APjAAAVe370DZghQr64GMUiDw4HEV3+tjsen4R94hgL6pJ+UCi462QSg
	wySTgMlMRT+QoLtQbvLkkN78vq5EaFNn8uUTPrwG46QnE7JH
X-Google-Smtp-Source: APXvYqzyzBCxsOjJqucqf2Swo/zkxFcqKO7pOhvz7JzRKf9h10ZiRiod+Jz7PskrVB6RgyhVbSG3z9nkiCEuLHdYqr4=
X-Received: by 2002:adf:f641:: with SMTP id x1mr24934610wrp.179.1566187139078;
 Sun, 18 Aug 2019 20:58:59 -0700 (PDT)
MIME-Version: 1.0
From: Justin Bull <me@justinbull.ca>
Date: Sun, 18 Aug 2019 23:58:50 -0400
Message-ID: <CAFB0D2QLM4Dp1_OGd92YwceyZBqfAhYiE07uTVs2V5Si2FRv7A@mail.gmail.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	fulldisclosure@seclists.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3

[CVE-2019-15150] CSRF in MediaWiki extension OAuth2 Client 0.3

Happy Sunday everyone.

A security bulletin for you all.

Software:
--------
MediaWiki OAuth2 Client (https://github.com/Schine/MW-OAuth2Client)

Description:
----------
MediaWiki implementation of the PHP League's OAuth2 Client, to allow MediaWiki
to act as a client to any OAuth2 server.

Not Affeted:
------------
0.2 and earlier.

Affected Versions:
---------------
0.3

Fixed Versions:
-------------
0.4

Problem:
--------

In the OAuth2 Client extension 0.3 for MediaWiki, a CSRF vulnerability
exists due to the OAuth2 state parameter not being checked in the callback
function.

Per OAuth 2.0 spec, the authorization code grant flow is susceptible to CSRF
and clickjacking attacks unless an appropriate "state" parameter is chosen and
verified.[1][2][3]

Although the software correctly generates an unguessable state value and sets
it in the URL to the OAuth 2.0 server, it fails to actually check/validate the
parameter in the callback against what it previously selected.

The regression was introduced when switching underlying vendor code.[4]

Impact:
-------

As described in the OAuth 2.0 RFC spec, this opens the site relying on the
software up to clickjacking and CSRF attacks.[1]

A successful attack can lead to loss of integrity of the user/victim.

Solution:
---------

Update callback function to verify presence and correct `state` value as
previously chosen prior to initiating the OAuth2 flow[5], as done in v0.4
release.[6]

Timeline:
---------

2019-08-17: Bug discovered
2019-08-17: CVE requested, assigned, privately disclosed to maintainer,
            bugfix/patch authored
2019-08-18: Maintainer acknowledged, patched version 0.4 is released

Credit:
-------
Discovery by me.

Thanks to the maintainer Schine GmbH. for a quick acknowledgement and release.

References:
-----------

[1]: https://tools.ietf.org/html/rfc6749#section-10.12
[2]: https://auth0.com/docs/protocols/oauth2/mitigate-csrf-attacks
[3]: https://auth0.com/docs/protocols/oauth2/oauth-state
[4]: https://github.com/Schine/MW-OAuth2Client/commit/7188d6c8d359d41c6974c19b2c0907653bab8f6e
[5]: https://github.com/Schine/MW-OAuth2Client/commit/6a4fe4500ddd72ad4e826d9d63b2d69512bd10d1
[6]: https://github.com/Schine/MW-OAuth2Client/releases/tag/v0.4


-- 
Best Regards,
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C
