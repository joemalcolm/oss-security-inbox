X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2563" "Wednesday" "21" "July" "2021" "09:13:38" "+0200" "Daniel Stenberg" "daniel@haxx.se" nil "90" "[oss-security] [SECURITY ADVISORY] curl: Wrong content via metalink not discarded" nil nil nil "7" nil nil (number mark "U       daniel@haxx. Jul 21   90/2563  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: Wrong content via metalink not discarded\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY ADVISORY] curl: Wrong content via metalink not discarded" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7179 invoked by uid 550); 21 Jul 2021 07:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6122 invoked from network); 21 Jul 2021 07:13:50 -0000
Date: Wed, 21 Jul 2021 09:13:38 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@silly
To: curl security announcements -- curl users <curl-users@cool.haxx.se>, 
    curl-announce@cool.haxx.se, libcurl hacking <curl-library@cool.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <nycvar.QRO.7.76.2107210912470.25537@fvyyl>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: Wrong content via metalink not discarded

Wrong content via metalink not discarded
========================================

Project curl Security Advisory, July 21th 2021 -
[Permalink](https://curl.se/docs/CVE-2021-22922.html)

VULNERABILITY
-------------

When curl is instructed to download content using the metalink feature, the
contents is verified against a hash provided in the metalink XML file.

The metalink XML file points out to the client how to get the same content
from a set of different URLs, potentially hosted by different servers and the
client can then download the file from one or several of them. In a serial or
parallel manner.

If one of the servers hosting the contents has been breached and the contents
of the specific file on that server is replaced with a modified payload, curl
should detect this when the hash of the file mismatches after a completed
download. It should remove the contents and instead try getting the contents
from another URL. This is not done, and instead such a hash mismatch is only
mentioned in text and the potentially malicious content is kept in the file on
disk.

There's a risk the user doesn't notice the message and instead assumes the
file is fine.

We are not aware of any exploit of this flaw.

INFO
----

This flaw exists only in the curl tool. libcurl is not affected.

This flaw has existed in curl since commit
[b5fdbe848bc3d](https://github.com/curl/curl/commit/b5fdbe848bc3d) in curl
7.27.0, released on July 27, 2012.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2021-22922 to this issue.

CWE-20: Improper Input Validation

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.27.0 to and including 7.77.0
- Not affected versions: curl < 7.27.0 and curl >= 7.78.0

THE SOLUTION
------------

curl has completely removed the metalink feature as of 7.78.0. No fix for this
flaw will be produced by the curl project.

The fix for earlier versions is to rebuild curl with the metalink support
switched off!

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 7.78.0

  B - Make sure you do not use metalink with curl

  C - Disable metalink in your build

TIMELINE
--------

This issue was reported to the curl project on May 30, 2021.

This advisory was posted on Jul 21, 2021.

CREDITS
-------

This issue was reported by Harry Sintonen. Patched by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
  | Commercial curl support up to 24x7 is available!
  | Private help, bug fixes, support, ports, new features
  | https://www.wolfssl.com/contact/
