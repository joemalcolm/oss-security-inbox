X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2084" "Wednesday" "2" "November" "2016" "08:09:59" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1611020809190.375@tvnag.unkk.fr>" "80" "[oss-security] [SECURITY ADVISORY] curl double-free in krb5 code" nil nil nil "11" "2016110207:09:59" "[oss-security] [SECURITY ADVISORY] curl double-free in krb5 code" (number mark "U       daniel@haxx. Nov  2   80/2084  " thread-indent "\"[oss-security] [SECURITY ADVISORY] curl double-free in krb5 code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7608 invoked by uid 550); 2 Nov 2016 07:10:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7436 invoked from network); 2 Nov 2016 07:10:12 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 2 Nov 2016 08:09:59 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>,
        oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1611020809190.375@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl double-free in krb5 code

double-free in krb5 code
========================

Project cURL Security Advisory, November 2, 2016 -
[Permalink](https://curl.haxx.se/docs/adv_20161102E.html)

VULNERABILITY
-------------

In curl's implementation of the Kerberos authentication mechanism, the
function `read_data()` in security.c is used to fill the necessary krb5
structures. When reading one of the length fields from the socket, it fails to
ensure that the length parameter passed to realloc() is not set to 0.

This would lead to realloc() getting called with a zero size and when doing so
realloc() returns NULL *and* frees the memory - in contrary to normal
realloc() fails where it only returns NULL - causing libcurl to free the
memory *again* in the error path.

This flaw could be triggered by a malicious or just otherwise ill-behaving
server.

We are not aware of any exploit of this flaw.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-8619 to this issue.

AFFECTED VERSIONS
-----------------

This flaw exists in the following curl versions

- Affected versions: curl 7.3 to and including 7.50.3
- Not affected versions: curl < 7.3 and curl >= 7.51.0

libcurl is used by many applications, but not always advertised as such!

THE SOLUTION
------------

In version 7.51.0, the function reading data will consider reading a zero size
to be an error and bail out.

A [patch for CVE-2016-8619](https://curl.haxx.se/CVE-2016-8619.patch) is
available.

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 7.51.0

  B - Apply the patch to your version and rebuild

  C - Do not use KRB5

TIME LINE
---------

It was first reported to the curl project on September 23 by Cure53.

We contacted distros@openwall on October 19.

curl 7.51.0 was released on November 2 2016, coordinated with the publication
of this advisory.

CREDITS
-------

This vulnerability was found during a Secure Open Source audit performed by
Cure53.

-- 

  / daniel.haxx.se
