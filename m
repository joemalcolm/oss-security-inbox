X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2417" "Wednesday" "29" "November" "2017" "10:34:22" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1711280939500.30591@tvnag.unkk.fr>" "84" "[oss-security] [SECURITY ADVISORY] curl: FTP wildcard out of bounds read" nil nil nil "11" "2017112909:34:22" "[oss-security] [SECURITY ADVISORY] curl: FTP wildcard out of bounds read" (number mark "U       daniel@haxx. Nov 29   84/2417  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: FTP wildcard out of bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32376 invoked by uid 550); 29 Nov 2017 09:34:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32269 invoked from network); 29 Nov 2017 09:34:36 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 29 Nov 2017 10:34:22 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1711280939500.30591@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: FTP wildcard out of bounds read

FTP wildcard out of bounds read
===============================

Project curl Security Advisory, November 29th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_2017-ae72.html)

VULNERABILITY
-------------

libcurl contains a read out of bounds flaw in the FTP wildcard function.

libcurl's FTP wildcard matching feature, which is enabled with the
`CURLOPT_WILDCARDMATCH` option can use a built-in wildcard function or a user
provided one. The built-in wildcard function has a flaw that makes it not
detect the end of the pattern string if it ends with an open bracket (`[`) but
instead it will continue reading the heap beyond the end of the URL buffer
that holds the wildcard.

For applications that use HTTP(S) URLs, allow libcurl to handle redirects and
have FTP wildcards enabled, this flaw can be triggered by malicious servers
that can redirect clients to a URL using such a wildcard pattern.

We are not aware of any exploit of this flaw.

INFO
----

This bug was introduced in commit
[0825cd80a62c](https://github.com/curl/curl/commit/0825cd80a62c), May 2010.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-8817 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: libcurl 7.21.0 to and including 7.56.1
- Not affected versions: libcurl < 7.21.0 and >= 7.57.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In libcurl version 7.57.0, there's a better check for the end of the
string. Additionally, the wildcard feature is turned off if the URL passed to
libcurl is not using FTP(S), so a redirect to an FTP URL cannot trigger
wildcard functionality.

A [patch for CVE-2017-8817](https://curl.haxx.se/CVE-2017-8817.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.57.0

  B - Apply the patch to your version and rebuild

  C - Do not use `CURLOPT_WILDCARDMATCH` without carfully verifying the
      patterns used.

TIME LINE
---------

It was reported to the curl project on November 10, 2017.  We contacted
distros@openwall on November 21.

curl 7.57.10 was released on November 29 2017, coordinated with the
publication of this advisory.

CREDITS
-------

Reported by OSS-Fuzz. Researched by Max Dymond. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
