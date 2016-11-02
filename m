X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2360" "Wednesday" "2" "November" "2016" "08:11:10" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020810390.375@tvnag.unkk.fr>" "82" "[oss-security] [SECURITY ADVISORY] curl_getdate read out of bounds" nil nil nil "11" "2016110207:11:10" "[oss-security] [SECURITY ADVISORY] curl_getdate read out of bounds" (number mark "U       daniel@haxx. Nov  2   82/2360  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl_getdate read out of bounds\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15406 invoked by uid 550); 2 Nov 2016 07:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14135 invoked from network); 2 Nov 2016 07:11:23 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:11:10 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020810390.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-454175242-1478070670=:375"
Subject: [oss-security] [SECURITY ADVISORY] curl_getdate read out of bounds

--1129329158-454175242-1478070670=:375
Content-Type: text/plain; format=flowed; charset=VISCII
Content-Transfer-Encoding: 8BIT

curl_getdate read out of bounds
===============================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102G.html)

VULNERABILITY
-------------

The `curl_getdate` converts a given date string into a numerical timestamp and
it supports a range of different formats and possibilites to express a date
and time. The underlying date parsing function is also used internally when
parsing for example HTTP cookies (possibly received from remote servers) and
it can be used when doing conditional HTTP requests.

The date parser function uses the libc sscanf() function at two places, with
the parsing strings "%02d:%02d" and ""%02d:%02d:%02d". The intent being that
it would parse either a string with HH:MM (two digits colon two digits) or
HH:MM:SS (two digits colon two digits colon two digits). If instead the piece
of time that was sent in had the final digit cut off, thus ending with a
single-digit, the date parser code would advance its read pointer one byte too
much and end up reading out of bounds.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8621 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.12.2 to and including 7.50.3
- Not affected versions: curl < 7.12.2 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the parser function is fixed.

A [patch for CVE-2016-8621](https://curl.haxx.se/CVE-2016-8621.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was first reported to the curl project on October 3 by Lu§t Nguy­n.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Thanks to Lu§t Nguy­n.

-- 

  / daniel.haxx.se
--1129329158-454175242-1478070670=:375--
