X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2223" "Wednesday" "2" "November" "2016" "08:06:35" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020805310.375@tvnag.unkk.fr>" "80" "[oss-security] [SECURITY ADVISORY] curl cookie injection for other servers" nil nil nil "11" "2016110207:06:35" "[oss-security] [SECURITY ADVISORY] curl cookie injection for other servers" (number mark "U       daniel@haxx. Nov  2   80/2223  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl cookie injection for other servers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17992 invoked by uid 550); 2 Nov 2016 07:06:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17951 invoked from network); 2 Nov 2016 07:06:49 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:06:35 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020805310.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl cookie injection for other servers

cookie injection for other servers
==================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102A.html)

VULNERABILITY
-------------

If cookie state is written into a cookie jar file that is later read back and
used for subsequent requests, a malicious HTTP server can inject new cookies
for arbitrary domains into said cookie jar.

The issue pertains to the function that loads cookies into memory, which reads
the specified file into a fixed-size buffer in a line-by-line manner using the
`fgets()` function. If an invocation of fgets() cannot read the whole line
into the destination buffer due to it being too small, it truncates the
output. This way, a very long cookie (name + value) sent by a malicious server
would be stored in the file and subsequently that cookie could be read
partially and crafted correctly, it could be treated as a different cookie for
another server.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8615 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.1 to and including 7.50.3
- Not affected versions: curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, these functions will deny negative string lengths from
being used.

A [patch for CVE-2016-8615](https://curl.haxx.se/CVE-2016-8615.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Do not use the `CURLOPT_COOKIEFILE` (or `-b`) option.

TIME LINE
---------

It was first reported to the curl project on September 23 by Cure53.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

This vulnerability was found during a Secure Open Source audit performed by
Cure53.

-- 

  / daniel.haxx.se
