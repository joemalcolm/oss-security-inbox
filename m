X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1904" "Wednesday" "6" "February" "2019" "08:12:37" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1902060809320.28483@tvnag.unkk.fr>" "77" "[oss-security] [SECURITY ADVISORY] curl: SMTP end-of-response out-of-bounds read" "^Date:" nil nil "2" "2019020607:12:37" "[oss-security] [SECURITY ADVISORY] curl: SMTP end-of-response out-of-bounds read" (number mark "U       daniel@haxx. Feb  6   77/1904  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: SMTP end-of-response out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20092 invoked by uid 550); 6 Feb 2019 07:12:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20020 invoked from network); 6 Feb 2019 07:12:50 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1902060809320.28483@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Wed, 6 Feb 2019 08:12:37 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: SMTP end-of-response out-of-bounds read
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

SMTP end-of-response out-of-bounds read
=======================================

Project curl Security Advisory, February 6th 2019 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-3823.html)

VULNERABILITY
-------------

libcurl contains a heap out-of-bounds read in the code handling the
end-of-response for SMTP.

If the buffer passed to `smtp_endofresp()` isn't NUL terminated and contains
no character ending the parsed number, and `len` is set to 5, then the
`strtol()` call reads beyond the allocated buffer. The read contents will not
be returned to the caller.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in October 2013 in
[commit 2766262a68](https://github.com/curl/curl/commit/2766262a68).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-3823 to this issue.

CWE-125: Out-of-bounds Read

Severity: 3.7 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.34.0 to and including 7.63.0
- Not affected versions: libcurl < 7.34.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [patch for CVE-2019-3823](https://github.com/curl/curl/commit/39df4073e5413fcdbb5a38da0c1ce6f1c0ceb484) is available.

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.64.0

  B - Apply the patch to your version and rebuild

  C - Turn off SMTP

TIMELINE
--------

The issue was reported to the curl project on January 18, 2019. A patch was
communicated to the reporter on January 19, 2019. We contacted distros@openwall
on January 28.

curl 7.64.0 was released on February 6 2019, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Brian Carpenter, Geeknik Labs. Patch by Daniel Gustafsson

Thanks a lot!

-- 

  / daniel.haxx.se
