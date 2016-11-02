X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2627" "Wednesday" "2" "November" "2016" "08:13:26" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Date:" nil nil "11" "2016110207:13:26" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        daniel@haxx. Nov  2   89/2627  " thread-indent "\"[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29990 invoked by uid 550); 2 Nov 2016 07:13:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29789 invoked from network); 2 Nov 2016 07:13:39 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-1283815874-1478070806=:375"
Date: Wed, 2 Nov 2016 08:13:26 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

--1129329158-1283815874-1478070806=:375
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

IDNA 2003 makes curl use wrong host
===================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102K.html)

VULNERABILITY
-------------

When curl is built with libidn to handle International Domain Names (IDNA), it
translates them to puny code for DNS resolving using the IDNA 2003 standard,
while IDNA 2008 is the modern and up-to-date IDNA standard.

This misalignment causes problems with for example domains using the German ﬂ
character (known as the Unicode Character 'LATIN SMALL LETTER SHARP S') which
is used at times in the .de TLD and is translated differently in the two IDNA
standards, leading to users potentially and unknowingly issuing network
transfer requests to the wrong host.

For example, `straﬂe.de` is translated into `strasse.de` using IDNA 2003 but
is translated into `xn--strae-oqa.de` using IDNA 2008. Needless to say, those
host names could very well resolve to different addresses and be two
completely independent servers. IDNA 2008 is mandatory for .de domains.

curl is not alone with this problem, as there's currently a big flux in the
world of network user-agents about which IDNA version to support and use.

This name problem exists for DNS-using protocols in curl, but only when built
to use libidn.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8625 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions.

- Affected versions: curl 7.12.0 to and including 7.50.3
- Not affected versions: curl < 7.12.0 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the parser function is fixed.

A [patch for CVE-2016-8625](https://curl.haxx.se/CVE-2016-8625.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was first reported to the curl project on October 11 by Christian Heimes.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Thanks to Christian Heimes

-- 

  / daniel.haxx.se
--1129329158-1283815874-1478070806=:375--
