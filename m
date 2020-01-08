X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2600" "Wednesday" "8" "January" "2020" "07:46:22" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.2001080744190.29816@tvnag.unkk.fr>" "90" "[oss-security] [SECURITY ADVISORY] curl: SMB access smuggling via FILE URL on Windows (CVE-2019-15601)" "^Date:" nil nil "1" "2020010806:46:22" "[oss-security] [SECURITY ADVISORY] curl: SMB access smuggling via FILE URL on Windows (CVE-2019-15601)" (number mark "U       daniel@haxx. Jan  8   90/2600  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: SMB access smuggling via FILE URL on Windows (CVE-2019-15601)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: SMB access smuggling via FILE URL on Windows (CVE-2019-15601)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18071 invoked by uid 550); 8 Jan 2020 06:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18039 invoked from network); 8 Jan 2020 06:46:35 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.2001080744190.29816@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="1129329158-1829500054-1578465935=:29816"
Content-ID: <alpine.DEB.2.20.2001080745540.29816@tvnag.unkk.fr>
Date: Wed, 8 Jan 2020 07:46:22 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY ADVISORY] curl: SMB access smuggling via FILE URL on
 Windows (CVE-2019-15601)
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com

--1129329158-1829500054-1578465935=:29816
Content-Type: text/plain; FORMAT=flowed; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.2001080745541.29816@tvnag.unkk.fr>

SMB access smuggling via FILE URL on Windows
============================================

Project curl Security Advisory, January 8th 2020 -
[Permalink](https://curl.haxx.se/docs/CVE-2019-15601.html)

VULNERABILITY
-------------

libcurl can be told to load a file from a `FILE://` URL. It will then load the
file from the path specified in the URL from the local file system.

If you craft the given path so that it starts with two slashes (or
backslashes) followed by a host name, Windows systems will automatically treat
that as a request to access the host name using SMB instead of reading a local
file with that name. This is not expected nor documented libcurl behavior.

Applications allowing users to provide URLs or parts of URLs could be
vulnerable to this flaw. Both the curl tool and library.

Example URL exploiting this: `file://localhost//hostname/home/secret.txt`.

We are not aware of any exploit of this flaw.

INFO
----

This bug only exists when libcurl runs on a Microsoft Windows operating
system.

This bug exists in the first code import we have, from 1999.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2019-15601 to this issue.

CWE-20: Improper Input Validation

Severity: 3.0 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: all versions to and including 7.67.0
- Not affected versions: libcurl >= 7.68.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [fix for CVE-2019-15601](https://github.com/curl/curl/commit/1b71bc532bde8621fd3260843f8197182a467ff2)

RECOMMENDATIONS
--------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.68.0

  B - Apply the patch to your version and rebuild

  C - do not use `FILE://` URLs

TIMELINE
--------

The issue was reported to the curl project on October 31, 2019. The initial
fix was done, verified and communicated with the reporter on November 7, 2019.

This advisory was posted on January 8th 2020.

CREDITS
-------

Reported by Fernando Muñoz. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se | Get the best commercial curl support there is - from me
                   | Private help, bug fixes, support, ports, new features
                   | https://www.wolfssl.com/contact/
--1129329158-1829500054-1578465935=:29816--
