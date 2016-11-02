X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2162" "Wednesday" "2" "November" "2016" "08:12:14" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020811430.375@tvnag.unkk.fr>" "78" "[oss-security] [SECURITY ADVISORY] curl use-after-free via shared cookies" nil nil nil "11" "2016110207:12:14" "[oss-security] [SECURITY ADVISORY] curl use-after-free via shared cookies" (number mark "U       daniel@haxx. Nov  2   78/2162  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl use-after-free via shared cookies\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21836 invoked by uid 550); 2 Nov 2016 07:12:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21617 invoked from network); 2 Nov 2016 07:12:28 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:12:14 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020811430.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl use-after-free via shared cookies

Use-after-free via shared cookies
=================================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102I.html)

VULNERABILITY
-------------

libcurl explicitly allows users to share cookies between multiple easy handles
that are concurrently employed by different threads.

When cookies to be sent to a server are collected, the matching function
collects all cookies to send and the cookie lock is released immediately
afterwards. That funcion however only returns a list with *references* back to
the original strings for name, value, path and so on. Therefore, if another
thread quickly takes the lock and frees one of the original cookie structs
together with its strings, a use-after-free can occur and lead to information
disclosure. Another thread can also replace the contents of the cookies from
separate HTTP responses or API calls.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8623 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions:

- Affected versions: curl 7.10.7 to and including 7.50.3
- Not affected versions: curl < 7.10.7 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the function returning the cookies make deep copies.

A [patch for CVE-2016-8623](https://curl.haxx.se/CVE-2016-8623.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Do not share cookies between threads

TIME LINE
---------

It was first reported to the curl project on September 23 by Cure53.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

his vulnerability was found during a Secure Open Source audit performed by
Cure53.

-- 

  / daniel.haxx.se
