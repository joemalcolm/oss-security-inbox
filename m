X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1971" "Wednesday" "21" "February" "2018" "17:17:13" "-0500" "Justin Bull" "me@justinbull.ca" "<CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>" "72" "[oss-security] [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5" nil nil nil "2" "2018022122:17:13" "[oss-security] [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5" (number mark "U       me@justinbul Feb 21   72/1971  " thread-indent "\"[oss-security] [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9307 invoked by uid 550); 22 Feb 2018 01:46:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28522 invoked from network); 21 Feb 2018 22:17:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull-ca.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=Tz8L4mNFPDr5EewnwLNNaKST7btdj5hmNrJNVpBc/74=;
        b=iUhjXvfCqh3pxLHKIde0+IkmfFS5qEFH7L8pl1qt7eczo3/50DxxsziEdIw1j4a1pL
         wMxK3V58ZfgXhmuQTecfYfZzBBrEgN6XY+96wfRuJVszSQ5gyVhLLsoYThUGlvuI0jk3
         XfIeoI6BnroofBd8/aGctmuq9HUFb3O51ZgaOHGyK9V//yxqG3oAY6/BOLLUyFhEYdK/
         34gvBvT4o+kDbYTvrfsPJOaJ2oD7FNvPpJGeT8IFAIAzuprG4/8lpQHz6Ee8b+kCBnie
         DCh25skzDFQa1/eZlSiv+0NqlUbWPxBktF72IB9T+UM3ADGFWc6scWBZiJH7yBYSCzjv
         3SeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Tz8L4mNFPDr5EewnwLNNaKST7btdj5hmNrJNVpBc/74=;
        b=bbSjseERt/Mf+O/BqtfJSff/P7qs2tIUvuZIZAOqnG2Euehcin3yrk/9kLavDVjyOh
         7eXUYs1ahdxH/fm3gOCykVURmbwyr623f/wiS3sg8101VRtcGtLScOBMvV1Zl7p2WtAs
         LoyoP5r1sflloat+aAsHkP23KaLPNj4exians9yGtfLScV0qJWgcmTRWIlUc2/KZ2fTs
         3DaQoUy1DgKvmaQCRp9GursHzCLc385MQARY5TlguM3pN2WdhScVNmgmlTuhpPai6x8a
         O62UeIjpGMjkY/46HD05Sq6oXMWj8TXzNzjEl8Kyr2Gr030+0GVNLRRtQW+Wnlo6c0K8
         vE5w==
X-Gm-Message-State: APf1xPDPTfnXhvySUge6AY8URA3P5QtFA7Iv9/C7TQMB7+709n5F7DhK
	T4Zc0KAfiOtIH8ZO42LEeY0UZ94rkxOs6Z4RiLohgiWQvA==
X-Google-Smtp-Source: AG47ELvSOlKEFMdeRKClxxm4HGj29HH8F5rAP8onPC4cXW5lEM2Iz6lZ20aI3FbVnrrSvpE9DEDX0A08IUF50ISKGHA=
X-Received: by 10.36.33.131 with SMTP id e125mr5343555ita.33.1519251453429;
 Wed, 21 Feb 2018 14:17:33 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [158.106.108.138]
From: Justin Bull <me@justinbull.ca>
Date: Wed, 21 Feb 2018 17:17:13 -0500
Message-ID: <CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	fulldisclosure@seclists.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0
 - v4.2.5

Hey everyone,

A security bulletin for you.

Software:
---------
Doorkeeper (https://github.com/doorkeeper-gem/doorkeeper)

Description:
------------
Doorkeeper is an OAuth 2 provider for Rails written in Ruby.

Affected Versions:
------------------
2.1.0 - 4.2.5

Fixed Versions:
---------------
4.2.6 or later

Problem:
--------
Stored XSS on the OAuth Client's name will cause users being prompted
for consent via the "implicit" grant type to execute the XSS payload.

The XSS attack could gain access to the user's active session,
resulting in account compromise.

Any user is susceptible if they click the authorization link for the
malicious OAuth client. Because of how the links work, a user cannot
tell if a link is malicious or not without first visiting the page
with the XSS payload.

The requirement for this attack to be dangerous in the wild is the
software using Doorkeeper must allow regular users to create or edit
OAuth client applications.

If 3rd parties are allowed to create OAuth clients in the app using
Doorkeeper, upgrade to the patched versions immediately.

Additionally there is stored XSS in the native_redirect_uri form element.

DWF has assigned CVE-2018-1000088.

Solution:
---------
Upgrade to Doorkeeper v4.2.6 or later

Timeline:
---------
2017-05-25: Discovered by Gauthier Monserand[0]
2017-05:25: Fix prepared by Gauthier Monserand[1]
2017-05-26: Maintainer released patched version
2018-02-17: CVE requested
2018-02-20: CVE assigned via DWF
2018-02-21: Bulletin published[2]

Acknowledgements:
-----------------
Credit to Gauthier Monserand (https://github.com/simkim) for finding
and fixing this vulnerability.

References:
-----------
[0]: https://github.com/doorkeeper-gem/doorkeeper/issues/969
[1]: https://github.com/doorkeeper-gem/doorkeeper/pull/970
[2]: https://blog.justinbull.ca/cve-2018-1000088-stored-xss-in-doorkeeper/

-- 
Best Regards,
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C
