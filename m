X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2116" "Wednesday" "9" "August" "2017" "08:05:51" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>" "81" "[oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds" nil nil nil "8" "2017080906:05:51" "[oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds" (number mark "U       daniel@haxx. Aug  9   81/2116  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12176 invoked by uid 550); 9 Aug 2017 06:06:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11966 invoked from network); 9 Aug 2017 06:06:04 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 9 Aug 2017 08:05:51 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds

FILE buffer read out of bounds
==============================

Project curl Security Advisory, August 9th 2017 -
[Permalink](https://curl.haxx.se/docs/adv_20170809C.html)

VULNERABILITY
-------------

When asking to get a file from a file:// URL, libcurl provides a feature that
outputs meta-data about the file using HTTP-like headers.

The code doing this would send the wrong buffer to the user (stdout or the
application's provide callback), which could lead to other private data from
the heap to get inadvertently displayed.

The wrong buffer was an uninitialized memory area allocated on the heap and if
it turned out to not contain any zero byte, it would continue and display the
data following that buffer in memory.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2017-1000099 to this issue.

AFFECTED VERSIONS
-----------------

This bug has been was pushed to curl in commit
[7c312f84ea930d8](https://github.com/curl/curl/commit/7c312f84ea930d8), April
2017.

- Affected versions: libcurl 7.54.1
- Not affected versions: libcurl < 7.54.1 and >= 7.55.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

The function now sends the correct buffer to the application.

A [patch for CVE-2017-1000099](https://curl.haxx.se/CVE-2017-1000099.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.55.0

  B - Apply the patch to your version and rebuild

  C - Do not use `CURLOPT_NOBODY` *and* `CURLOPT_HEADER` with file:// URLs

TIME LINE
---------

It was reported to the curl project on July 15, 2017. We contacted
distros@openwall on August 1.

libcurl 7.55.0 was released on August 9 2017, coordinated with the publication
of this advisory.

CREDITS
-------

Reported by Even Rouault. Discovery: credit to OSS-Fuzz. Patch by Even Rouault.

Thanks a lot!

-- 

  / daniel.haxx.se
