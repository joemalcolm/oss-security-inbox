Received: (qmail 17935 invoked by uid 550); 29 Apr 2026 06:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17895 invoked from network); 29 Apr 2026 06:01:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442475; bh=0I7tIOo0Cv62SXiY1umvEvWlYZ279IVAC0A5u1+NpM4=;
	h=Date:From:To:Subject:From;
	b=ftRQwvpu/G3fVpEMeT4s07nQPdLYPHpFJgiUhjLfz37JAbDgsMh0NCNgjKwDgTRRt
	 62MVBLtXl/On0mqnPKarHzq1VxMjXpoIulNSwv4WgaVj/oAdHI6Tf0MLflnAp67CYG
	 xLhCoq3AOjnO9u91Yk92Y5xmHtvdKrTF2Og2Y7Sd3NmCks+NiV4BaPHf1zz8CKbTIo
	 5pOj2ka/xXhaA17E3MCDg0VXZqHaXiStBI2RBDHDTDkCjua8GUSMFoMiToMxheP1eD
	 xp53QohCNvTMuKu6yiKTS5i0nQ1Et5FxXdaywSGTEJVQJtLSHx8QKvFkp5Dnq7sJd+
	 EWKA/FFVY6Hgg==
Date: Wed, 29 Apr 2026 08:01:15 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <4r17o2o6-6np7-non8-0on5-0q68n3r38nn3@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-6276: stale custom cookie host causes
 cookie leak

stale custom cookie host causes cookie leak
===========================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-6276.html)

VULNERABILITY
-------------

Using libcurl, when a custom `Host:` header is first set for a HTTP request
and a second request is subsequently done using the same *easy handle* but
without the custom `Host:` header set, the second request would use stale
information and pass on cookies meant for the first host in the second
request. Leak them.

INFO
----

Setting a custom `Host:` header is mostly done for debugging purposes when
doing clear text HTTP transfers. When using HTTPS, setting a custom hostname
like this is not enough for asking for a specific virtual host since then the
SNI also needs to be correct. This condition reduces the impact of this flaw,
and is probably a contributing factor why no one else found it before this.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-6276 to this issue.

CWE-346: Origin Validation Error

Severity: Low

AFFECTED VERSIONS
-----------------

- Affected versions: from curl 7.71.0 to and including 8.19.0
- Not affected versions: curl < 7.71.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/e15e51384a423be3131

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw does **not** affect the curl command line tool.

SOLUTION
--------

- Fixed-in: https://github.com/curl/curl/commit/3a19987a87f393d9394fe5ac

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using custom `Host:` headers

TIMELINE
---------

It was reported to the curl project on April 14th 2026. We contacted
distros@openwall on April 23.

libcurl 8.20.0 was released on April 29th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Muhamad Arga Reksapati
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
