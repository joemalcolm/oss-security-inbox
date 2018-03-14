X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2058" "Wednesday" "14" "March" "2018" "07:55:08" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1803132312370.29869@tvnag.unkk.fr>" "81" "[oss-security] [SECURITY ADVISORY] curl: LDAP NULL pointer dereference" nil nil nil "3" "2018031406:55:08" "[oss-security] [SECURITY ADVISORY] curl: LDAP NULL pointer dereference" (number mark "U       daniel@haxx. Mar 14   81/2058  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl: LDAP NULL pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1543 invoked by uid 550); 14 Mar 2018 06:55:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1356 invoked from network); 14 Mar 2018 06:55:21 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 14 Mar 2018 07:55:08 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1803132312370.29869@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: LDAP NULL pointer dereference

LDAP NULL pointer dereference
=============================

Project curl Security Advisory, March 14th 2018 -
[Permalink](https://curl.haxx.se/docs/adv_2018-97a2.html)

VULNERABILITY
-------------

curl might dereference a near-NULL address when getting an LDAP URL.

The function `ldap_get_attribute_ber()` is called to get attributes, but it
turns out that it can return `LDAP_SUCCESS` and still return a `NULL` pointer
in the result pointer when getting a particularly crafted response. This was a
surprise to us and to the code.

libcurl-using applications that allow LDAP URLs, or that allow redirects to
LDAP URLs could be made to crash by a malicious server.

We are not aware of any exploit of this flaw.

INFO
----

The bug is only present in curl versions built to use OpenLDAP.

This bug was introduced in May 2010 in [this
commit](https://github.com/curl/curl/commit/2e056353b00d09).

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2018-1000121 to this issue.

CWE-476: NULL Pointer Dereference

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.21.0 to and including curl 7.58.0
- Not affected versions: curl < 7.21.0 and curl >= 7.59.0

libcurl is used by many applications, but not always advertised as such.

THE SOLUTION
------------

In curl version 7.59.0, curl checks the pointer properly before using it.

A [patch for CVE-2018-1000121](https://curl.haxx.se/CVE-2018-1000121.patch) is available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl to version 7.59.0

  B - Apply the patch to your version and rebuild

  C - Make sure you disable LDAP in your transfers

TIME LINE
---------

It was reported to the curl project on March 6, 2018

We contacted distros@openwall on March 7, 2018.

curl 7.59.0 was released on March 14 2018, coordinated with the publication of
this advisory.

CREDITS
-------

Reported by Dario Weisser. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
