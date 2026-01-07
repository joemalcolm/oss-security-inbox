Received: (qmail 18345 invoked by uid 550); 7 Jan 2026 07:09:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18305 invoked from network); 7 Jan 2026 07:09:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1767769758; bh=lQt78QEuRRlaFyYXDmlssvUKFrI8ctIXaBTOhtI3ZlY=;
	h=Date:From:To:Subject:From;
	b=USET4uIMb+zTIG0vYyZRzShrLUt1YakopXj5ERl/o1fOWlEb5kaiQB7OB0gW7R7wz
	 GGnYH1AXtfLoiuypFQM38pt4ciqkX3ApovfrC1V/3B3WPqx1RqkJWpvHcA9FccTgBX
	 Qlku+4Tz7z/wkAOoDKGJ8XCWCU6kEqr7ds0E9CTpeRei4UZEeNSUReM9cC7EAJzmjK
	 qCQXEsumenuOnmRVpsqvZjyt6Mkye5TLgH3NX4vYmo0EAqzpLb6wvmEVXo3TnfXJpm
	 8T+c1zgbKqR4Xg52FPTXpFrs4ZEtRQEGR5Zy/UrthlwTm55DMT9RA4Km00tyl7p350
	 ydmbeA2DNvD6Q==
Date: Wed, 7 Jan 2026 08:09:18 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: curl security announcements -- curl users <curl-users@lists.haxx.se>, 
    curl-announce@lists.haxx.se, libcurl hacking <curl-library@lists.haxx.se>, 
    oss-security@lists.openwall.com
Message-ID: <454q7462-9587-5185-o484-qs89328q9394@unkk.fr>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ADVISORY] curl CVE-2025-14017: broken TLS options for threaded
 LDAPS

broken TLS options for threaded LDAPS
=====================================

Project curl Security Advisory, January 7 2026 -
[Permalink](https://curl.se/docs/CVE-2025-14017.html)

VULNERABILITY
-------------

When doing multithreaded LDAPS transfers (LDAP over TLS) with libcurl,
changing TLS options in one thread would inadvertently change them globally
and therefore possibly also affect other concurrently setup transfers.

Disabling certificate verification for a specific transfer could
unintentionally disable the feature for other threads as well.

INFO
----

curl contains support for several different LDAP backends. This flaw only
exists when libcurl was built to use the "legacy" non-Windows LDAP support
(the `lib/ldap.c` source code). Notably, builds using OpenLDAP are not
affected.

It does not apply to users of WinLDAP (the flavor of LDAP provided in Windows)
since that API does not offer those TLS related options.

This is only a potential problem when doing LDAP transfers concurrently in
more than one thread. The global state was used for the connection setup
(only), so this vulnerability is highly timing sensitive.

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2025-14017 to this issue.

CWE-567: Unsynchronized Access to Shared Data in a Multithreaded Context

Severity: Medium

AFFECTED VERSIONS
-----------------

- Affected versions: curl 7.17.0 to and including 8.17.0
- Not affected versions: curl < 7.17.0 and >= 8.18.0
- Introduced-in: https://github.com/curl/curl/commit/ccba0d10b6baf5c73ca

libcurl is used by many applications, but not always advertised as such!

This bug is not considered a *C mistake*. It is not likely to have been
avoided had we not been using C.

This flaw **does not** affect the curl command line tool.

SOLUTION
------------

Starting in curl 8.18.0, this mistake is fixed.

- Fixed-in: https://github.com/curl/curl/commit/39d1976b7f709a516e324333

RECOMMENDATIONS
--------------

  A - Upgrade curl to version 8.18.0

  B - Build curl with OpenLDAP

  C - Avoid using LDAP

TIMELINE
--------

This issue was reported to the curl project on December 1, 2025.

curl 8.18.0 was released on January 7 2026 around 07:00 UTC, coordinated
with the publication of this advisory.

The curl security team is not aware of any active exploits using this
vulnerability.

CREDITS
-------

- Reported-by: Stanislav Fort (Aisle Research)
- Patched-by: Daniel Stenberg

Thanks a lot!

-- 

  / daniel.haxx.se || https://rock-solid.curl.dev
