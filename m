X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2556" "Wednesday" "31" "October" "2018" "07:55:47" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1810310754160.4385@tvnag.unkk.fr>" "90" "[oss-security] [SECURITY ADVISORY] curl - warning message out-of-buffer read" nil nil nil "10" "2018103106:55:47" "[oss-security] [SECURITY ADVISORY] curl - warning message out-of-buffer read" (number mark "U       daniel@haxx. Oct 31   90/2556  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl - warning message out-of-buffer read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24328 invoked by uid 550); 31 Oct 2018 06:56:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24235 invoked from network); 31 Oct 2018 06:56:02 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 31 Oct 2018 07:55:47 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1810310754160.4385@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl - warning message out-of-buffer read

warning message out-of-buffer read
==================================

Project curl Security Advisory, October 31st 2018 -
[Permalink](https://curl.haxx.se/docs/CVE-2018-16842.html)

VULNERABILITY
-------------

curl contains a heap out of buffer read vulnerability.

The command line tool has a generic function for displaying warning and
informational messages to stderr for various situations. For example if an
unknown command line argument is used, or passed to it in a "config" file.

This display function formats the output to wrap at 80 columns. The wrap logic
is however flawed, so if a single word in the message is itself longer than 80
bytes the buffer arithmetic calculates the remainder wrong and will end up
reading behind the end of the buffer. This could lead to information
disclosure or crash.

This vulnerability could lead to a security issue if used in this or similar
situations:

  1. a server somewhere uses the curl command line to run something
  2. if it fails, it shows stderr to the user
  3. the server takes user input for parts of its command line input
  4. user provides something overly long that triggers this crash
  5. the stderr output may now contain user memory contents that wasn't meant
     to be available

We are not aware of any exploit of this flaw.

INFO
----

This flaw exists in the command line tool only, not in libcurl.

This bug was introduced in [commit
d9ca9154d1](https://github.com/curl/curl/commit/d9ca9154d1), August 2005.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-16842 to this issue.

CWE-125: Out-of-bounds Read

Severity: 3.3 (Low)

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.14.1 to and including 7.61.1
- Not affected versions: curl < 7.14.1 and >= 7.62.0

curl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

A [patch for CVE-2018-16842](https://github.com/curl/curl/commit/d530e92f59ae9bb2d47066c3c460b25d2ffeb211)

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.62.0

  B - Apply the patch to your version and rebuild

TIME LINE
---------

It was reported to the curl project on October 27, 2018.  We contacted
distros@openwall on October 28.

curl 7.62.0 was released on October 31 2018, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Brian Carpenter, Geeknik Labs. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
