Received: (qmail 15809 invoked by uid 550); 29 Apr 2026 06:01:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15779 invoked from network); 29 Apr 2026 06:01:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1777442465; bh=jmvzhzXxGtxeSPal7BqRfjZER+phLll3tMVodjizQvI=;
	h=Date:From:To:Subject:From;
	b=Xv+CyFW8q+ffUm0qRXaDqXO88EPiJ8Y0bLP2/tJgTPHDXrwLuseNYulHle1uqSwTh
	 pY3iEensYmNCyKIPEewBCspv+GhUQq7ZIIJ+pwi/IlW4+9m1e8Vo3gtRlgGIknBlEJ
	 q2KNrlESIiEBSrYKPm26e8U6yZ5LCXQozpkqJgClr0iYer3k9rnC9QOpK6+QYbQivc
	 2gMgq/xta/2GeWOkx2zzCPlWrO/r8SiVevaiSv966JnpbTzcnyqQUQvLTMrpwM7+t6
	 CE+nCyUgrIvKBHIE/cLXIAcaI8r87mFRCgulDuFIoeoFCkaA0D3sXmcVDap9mQoWkb
	 WqhZ4dRYLM55Q==
Date: Wed, 29 Apr 2026 08:01:05 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <qsnpnp7r-5661-q53o-4p6r-209n7q56nos9@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl: CVE-2026-5773: wrong reuse of SMB connection

wrong reuse of SMB connection
=============================

Project curl Security Advisory, April 29 2026
[Permalink](https://curl.se/docs/CVE-2026-5773.html)

VULNERABILITY
-------------

libcurl might in some circumstances reuse the wrong connection for SMB(S)
transfers.

libcurl features a pool of recent connections so that subsequent requests can
reuse an existing connection to avoid overhead.

When reusing a connection a range of criteria must be met. Due to a logical
error in the code, a network transfer operation that was requested by an
application could wrongfully reuse an existing SMB connection to the same
server that was using a different "share" than the new subsequent transfer
should.

This could in unlucky situations lead to the download of the wrong file or the
upload of a file to the wrong place. When this happens, the same credentials
are used and the server name is the same.

INFO
----

curl only supports SMB version 1 and no later version. SMB version 1 is
considered insecure and deprecated and is therefore commonly disabled in
servers. curl is scheduled to drop support for SMB later in 2026. SMB support
is opt-in since 8.20.0.

In this flaw, the code simply erroneously did not consider the share name as a
property to match for connection reuse.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2026-5773 to this issue.

CWE-488: Exposure of Data Element to Wrong Session

Severity: Low

AFFECTED VERSIONS
-----------------

This flaw has existed since curl started to support SMB.

- Affected versions: from curl 7.40.0 to and including 8.19.0
- Not affected versions: curl < 7.40.0 and >= 8.20.0
- Introduced-in: https://github.com/curl/curl/commit/aec2e865f0

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **also** affects the curl command line tool.

SOLUTION
--------

curl 8.20.0 makes sure that connections using SMB never get reused.

- Fixed-in: https://github.com/curl/curl/commit/74a169575d6412d

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

  A - Upgrade to curl and libcurl 8.20.0

  B - Apply the patch and rebuild libcurl

  C - Avoid using SMB

TIMELINE
---------

It was reported to the curl project on April 5th 2026. We contacted
distros@openwall on April 23.

libcurl 8.20.0 was released on April 29th 2026, coordinated with the
publication of this advisory.

CREDITS
-------

- Reported-by: Osama Hamad
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
