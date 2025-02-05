Received: (qmail 26200 invoked by uid 550); 5 Feb 2025 08:21:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26161 invoked from network); 5 Feb 2025 08:21:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1738743702; bh=nrX57kacBDidDk5c/FbYpq2D8hu0y0Rs/KeZLPgLSXA=;
	h=Date:From:To:Subject:From;
	b=qEQhZrvSGlrPzdhJ5Jxmp60SE8ymjPSOpXmAVwFbalbz3+egryCMEceKgV1E7zqBv
	 icuDxpbNQzGJsMzvC/BxcnkEExx7RSA//oO4TMq34TuzSXQkOFY2CUIdP6BV0mmjsd
	 ZKIcq7nlEB22U/+W1Wk3/dWwUsZRj4DGaojCEF/rgGlB1Vq5EG5LBZM8Ypl8ISNNWR
	 OLyndj6h+/kPl5AgH+MLYDhkxcoIY5PnGb27gUSgWYizD41r5qa5xLDA+LJ2KFVvvU
	 MguCe5EXWDcwZQENEpwPM4/7on5njVNjKw2pslWbBS/YWrvac7u2gKigOPFYBQp/mI
	 uz74kwle3veWA==
Date: Wed, 5 Feb 2025 09:21:42 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <9s413pp0-or33-59o0-pq82-40s270002npp@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0725: gzip integer overflow

gzip integer overflow
=====================

Project curl Security Advisory, February 5th 2025 -
[Permalink](https://curl.se/docs/CVE-2025-0725.html)

VULNERABILITY
-------------

When libcurl is asked to perform automatic gzip decompression of
content-encoded HTTP responses with the `CURLOPT_ACCEPT_ENCODING` option,
**using zlib 1.2.0.3 or older**, an attacker-controlled integer overflow would
make libcurl perform a buffer overflow.

INFO
----

This problem can only trigger when using a run-time zlib version 1.2.0.3 or
older. zlib 1.2.0.4 was relased on August 10, 2003. This means zlib versions
that do not trigger this problem have been available and used for more than
twenty-one years already. A zlib version 1.2.0.3 or earlier still in use is
vulnerable to a wide range of security problems and a user using this is
already in a spectacularly bad position.

libcurl featured code that at run-time takes a different code path for zlib
versions before 1.0.2.4 because of lack of functionality in those old
versions, and this rarely used piece of code contained the vulnerable code
path.

This bug is considered a *C mistake*. It is likely to have been avoided had we
not been using C.

This flaw also affects the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-0725 to this issue.

CWE-680: Integer Overflow to Buffer Overflow

Severity: Low

While the impact of this problem is potentially huge, we struggled with
setting a severity combined with the knowledge that a user vulnerable to this
is using **an over twenty years old and vulnerable zlib** and has practially
"given up" all security. If there actually exist users vulnerable to this flaw
in the world, they most likely already have worse problems than this to deal
with.

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.10.5 to and including 8.11.1
- Not affected versions: curl < 7.10.5 and >= 8.12.0
- Introduced-in: https://github.com/curl/curl/commit/019c4088cfcca0d2b7c5cc4f

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

Starting in version 8.12.0, libcurl no longer supports zlib < 1.2.0.4. Using
such a version will now instead cause a run-time error.

- Fixed-in: https://github.com/curl/curl/commit/76f83f0db23846e254d940ec7

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.12.0

  B - Apply the patch to your version and rebuild

  C - Use a modern zlib

  D - Avoid using the `CURLOPT_ACCEPT_ENCODING` option

TIMELINE
---------

This issue was reported to the curl project on January 23, 2025. We contacted
distros@openwall on January 28, 2025.

curl 8.12.0 was released on February 5 2025 around 08:00 UTC, coordinated with
the publication of this advisory.

CREDITS
-------

- Reported-by: z2_
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se
