X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2653" "Wednesday" "3" "August" "2016" "09:05:26" "+0200" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>" "89" "[oss-security] [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" nil nil nil "8" "2016080307:05:26" "[oss-security] [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert" (number mark "U       daniel@haxx. Aug  3   89/2653  " thread-indent "\"[oss-security] [SECURITY VULNERABILITY] curl: Re-using connections with wrong client cert\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7241 invoked by uid 550); 3 Aug 2016 07:05:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6138 invoked from network); 3 Aug 2016 07:05:39 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 3 Aug 2016 09:05:26 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1608030901400.2418@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY VULNERABILITY] curl: Re-using connections with wrong client
 cert

Re-using connections with wrong client cert
===========================================

Project cURL Security Advisory, August 3rd 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20160803B.html)

VULNERABILITY
-------------

libcurl did not consider client certificates when reusing TLS connections.

libcurl supports reuse of established connections for subsequent requests. It
does this by keeping a few previous connections "alive" in a connection pool
so that a subsequent request that can use one of them instead of creating a
new connection will do so.

When using a client certificate for a connection that was then put into the
connection pool, that connection could then wrongly get reused in a subsequent
request to that same server that either didn't use a client certificate at all
or that asked to use a different client certificate thus trying to tell the
user that it is a different entity.

This mistakenly using the wrong connection could of course lead to
applications sending requests to the wrong realms of the server using
authentication that it wasn't supposed to have for those operations.

We are not aware of any exploit of this flaw.

INFO
----

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-5420 to this issue.

AFFECTED VERSIONS
-----------------

This flaw is relevant for all versions of curl and libcurl that support
SSL/TLS and client certificates.

- Affected versions: libcurl 7.1 to and including 7.50.0
- Not affected versions: libcurl >= 7.50.1

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.50.1, curl will check that re-used connections have the correct
client certificate (file name) before used.

A [patch for CVE-2016-5420](https://curl.haxx.se/CVE-2016-5420.patch) is
available. This patch relies on the
[CVE-2016-5419](https://curl.haxx.se/docs/adv_20160803A.html) patch already
having been applied.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.50.1

  B - Apply the patch to your version and rebuild

  C - Do not use client certificates

TIME LINE
---------

This was figured out by curl security team members during our work with the
20160803A flaw during June 2016. We contacted distros@openwall on July 31.

libcurl 7.50.1 was released on August 3 2016, coordinated with the publication
of this advisory.

CREDITS
-------

Found by the curl security team. Patch by Daniel Stenberg.

Thanks a lot!

-- 

  / daniel.haxx.se
