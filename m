X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2122" "Wednesday" "2" "November" "2016" "08:12:49" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020812160.375@tvnag.unkk.fr>" "82" "[oss-security] [SECURITY ADVISORY] curl invalid URL parsing with '#'" nil nil nil "11" "2016110207:12:49" "[oss-security] [SECURITY ADVISORY] curl invalid URL parsing with '#'" (number mark "U       daniel@haxx. Nov  2   82/2122  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl invalid URL parsing with '#'\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25823 invoked by uid 550); 2 Nov 2016 07:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24567 invoked from network); 2 Nov 2016 07:13:02 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:12:49 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020812160.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-1792574968-1478070769=:375"
Subject: [oss-security] [SECURITY ADVISORY] curl invalid URL parsing with '#'

--1129329158-1792574968-1478070769=:375
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

invalid URL parsing with '#'
============================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102J.html)

VULNERABILITY
-------------

curl doesn't parse the authority component of the URL correctly when the host
name part ends with a '#' character, and could instead be tricked into
connecting to a different host. This may have security implications if you for
example use a URL parser that follows the RFC to check for allowed domains
before using curl to request them.

Passing in `http://example.com#@evil.com/x.txt` would wrongly make curl send a
request to evil.com while your browser would connect to example.com given the
same URL.

The problem exists for most protocol schemes.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8624 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.1 to and including 7.50.3
- Not affected versions: curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the parser function is fixed.

A [patch for CVE-2016-8624](https://curl.haxx.se/CVE-2016-8624.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Strip out the parts of the URLs containing '#' before passing them to curl

TIME LINE
---------

It was first reported to the curl project on October 10 by Fernando Muñoz.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Thanks to Fernando Muñoz!

-- 

  / daniel.haxx.se
--1129329158-1792574968-1478070769=:375--
