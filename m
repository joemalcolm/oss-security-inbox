Received: (qmail 16022 invoked by uid 550); 29 Apr 2026 06:01:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15995 invoked from network); 29 Apr 2026 06:01:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442479; bh=mxbTvLuxMjMudi3k18pqSgS2N9Nq8ApjOG7lEKYHAoU=;
	h=Date:From:To:Subject:From;
	b=ZQmZOlQb8mlBoCzRDWVfKTi4MK4cKdHcC+HkmHJ2JcCXqKmRhtfnttGzJUN6hLVeA
	 HZQmzQVDCPOTjCAObnUdr5oZq9b+J41Tc4dshR68qeqGNfWTSmrRr/HKS3o8Z8PBgG
	 gWulhev0RM0omaC0mD0T3x78uoMRLJxBFYxDXuTDit2+Y/hjSArEHcyXjrliQnBEPJ
	 8Z0U1OAAyzowP1YesBKUt7oaOs/ubCjk96FerxrTaelBL2kM8yzcGF1idw4hdBXTiA
	 +iMHSB+PKkwkPpMkYESTlSffhISiSdBxxL7aIgdXc8STY+ozFmWF9w697HLyCNKHIv
	 k/2rYRTkKqpHQ==
Date: Wed, 29 Apr 2026 08:01:19 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <685315s4-3r44-sn64-5qsq-q62100341506@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-6429: netrc credential leak with reused
 proxy connection

netrc credential leak with reused proxy connection
==================================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-6429.html)

VULNERABILITY
-------------

When asked to both use a `.netrc` file for credentials and to follow HTTP
redirects, libcurl could leak the password used for the first host to the
followed-to host under certain circumstances.

INFO
----

To trigger, this flaw requires that both the original URL and the redirect URL
are using clear text `http://` URLs, that both are performed over the same
HTTP proxy and that the same connection is reused.

Similar to [CVE-2024-11053](https://curl.se/docs/CVE-2024-11053.html)

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-6429 to this issue.

CWE-200: Exposure of Sensitive Information to an Unauthorized Actor

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: from curl 7.14.0 to and including 8.19.0
- Not affected versions: curl < 7.14.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/01165e08e0d131b399fb

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw does **not** affect the curl command line tool.

SOLUTION
--------

- Fixed-in: https://github.com/curl/curl/commit/b4024bf808bd558026fdc6

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using the combination netrc, HTTP and HTTP proxy

TIMELINE
---------

It was reported to the curl project on April 16th 2026. We contacted
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
