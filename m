Received: (qmail 20260 invoked by uid 550); 29 Apr 2026 06:01:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20234 invoked from network); 29 Apr 2026 06:01:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442489; bh=c2qo+/dd8CQ0ByHsegHGjxhSMPUT9nXF7Tr5vjGL5Q0=;
	h=Date:From:To:Subject:From;
	b=HlgZHjH9B04s5m8sA1DV+RID0Kj3AODhOwkzeLOoxdJbclX7pMZOCk1qUrxwBhmV7
	 5etK/rHh0qqaZVY9hGQLIKsxsty/4ur8E436RvCDWahjQGR95FbISZ29Sf+fE0x8IV
	 URGu3DDISPjzxy4yHz0TjeY8mYQEssn16q79G2JWV1T+3k7uf8oQqeqBP23+XrAZ6k
	 1ubaqK43ZQ0MTmA26X3cvAXUPvYK+v0Dh1fW2+vitfAbhq6fiFI7lNFkwXTlkttCF9
	 dFJ29fTLd7Jk+8yDTwPWyKgyW6NckcXXqtE8sWO+2p1dF4ZPhbpqICZhpuOI/kpr1c
	 k3KmeSGa3gMAQ==
Date: Wed, 29 Apr 2026 08:01:29 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <or178791-s8s7-8427-3935-on0p07p13477@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-7168: cross-proxy Digest auth state leak

cross-proxy Digest auth state leak
==================================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-7168.html)

VULNERABILITY
-------------

Successfully using libcurl to do a transfer over a specific HTTP proxy
(`proxyA`) with **Digest** authentication and then changing the proxy host to
a second one (`proxyB`) for a second transfer, reusing the same handle, makes
libcurl wrongly pass on the `Proxy-Authorization:` header field meant for
`proxyA`, to `proxyB`.

INFO
----

An evil `proxyB` could use this incoming request header field to impersonate
the client in communicating with `proxyA`, as the header contains the
authenticated state.

There is nothing in the request details passed to `proxyB` that reveal the
name or the address of `proxyA`, which mitigates this problem.

This bug is **not** considered a *C mistake* (likely to have been avoided had
we not been using C).

This flaw does not affect the curl command line tool.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-7168 to this issue.

CWE-294: Authentication Bypass by Capture-replay

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.12.0 to and including 8.19.0
- Not affected versions: curl < 7.12.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/fc6eff13b5414caf6edf

libcurl is used by many applications, but not always advertised as such!

SOLUTION
------------

- Fixed-in: https://github.com/curl/curl/commit/c1cfdf59acbaf9504c45

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade curl and libcurl to version 8.20.0

  B - Apply the patch to your version and rebuild

  C - Avoid reusing handles when changing proxies

TIMELINE
---------

This issue was reported to the curl project on April 27, 2026.

curl 8.20.0 was released on April 29 2026, coordinated with the publication of
this advisory.

CREDITS
-------

- Reported-by: Muhamad Arga Reksapati
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
