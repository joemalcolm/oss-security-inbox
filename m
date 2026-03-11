Received: (qmail 9609 invoked by uid 550); 11 Mar 2026 06:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9567 invoked from network); 11 Mar 2026 06:54:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1773212084; bh=KaG1rwl5/p9OEpoyc0I9g1sI04gOFShh/nMWJh9yIQc=;
	h=Date:From:To:Subject:From;
	b=G15FBw/Yqfn8Inotch61v9brpK4+SdvNrHL3iotHetNSdu1M8dNERQ++YlMnIsCfT
	 6QyUSS4OzyBb2CywRcen2JBRsy2bQlbmfP4XbOrnVV4cwScVDDc+sR/gHRWADAO+Cj
	 rfFw3hmTblTF8EmahbVlw6WkUfXmbdZFmStfRFZXAkdgY1IROU6ftcObNHplveXziN
	 OhRZE7LjNtgoLHyQ9NPJy5nemRuT1lycw5ggwuWb16nuyvMm3aZ2i+zYTPG6pDvvE/
	 E1yhzChxpF61PuIpGLXGXcGK064LMLqWzg34NTNp3zaS9By1IhBJAVBI54NFx20DJZ
	 tf9peJHCqb1IQ==
Date: Wed, 11 Mar 2026 07:54:44 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <sqq7s042-807n-7199-p793-rq60s2n88302@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-3783: token leak with redirect and netrc

token leak with redirect and netrc
==================================

Project curl Security Advisory, March 11th 2026
[Permalink](https://curl.se/docs/CVE-2026-3783.html)

VULNERABILITY
-------------

When an OAuth2 bearer token is used for an HTTP(S) transfer, and that transfer
performs a redirect to a second URL, curl could leak that token to the second
hostname under some circumstances.

If the hostname that the first request is redirected to has information in the
used .netrc file, with either of the `machine` or `default` keywords, curl
would pass on the bearer token set for the first host also to the second one.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-3783 to this issue.

CWE-522: Insufficiently Protected Credentials

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.33.0 to and including 8.18.0
- Not affected versions: curl < 7.33.0 and >= 8.19.0
- Introduced-in: https://github.com/curl/curl/commit/06c1bea72faabb6fad4b7ef8

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw also affects the curl command line tool.

SOLUTION
--------

curl 8.19.0 fixes this flaw

- Fixed-in: https://github.com/curl/curl/commit/e3d7401a32a46516c9e5ee877

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.19.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using Bearer tokens with redirects

TIMELINE
---------

It was reported to the curl project on March 3rd 2026. We contacted
distros@openwall on March 8.

libcurl 8.19.0 was released on March 11th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: spectreglobalsec on hackerone
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
