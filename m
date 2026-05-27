Received: (qmail 14284 invoked by uid 550); 27 May 2026 05:38:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23980 invoked from network); 27 May 2026 04:39:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catalyst.net.nz;
	s=default; t=1779856747;
	bh=4Xs+w32A5Ko+MCLtPOagf7ahs4h7I2bbrHU9bPuXSIU=;
	h=Date:Subject:References:To:From:In-Reply-To:From;
	b=PGmIUIVBSbxjOzh1IsxwphmPLqKW37lUSegOMM+Lk0YCFeoRM74c4bHLWdelVg5pE
	 5iiB6gX3Koe1emlWYMqczoj2qZ9Zj9aNh1izrLBBA2p0SN0wP44tmQFgSfhUT2KkQl
	 3YsABPUEgVZ/2TKvc6ha/kucLHVNgoGLxpq08qa5nC9+Bd/DN7dLfO4WOliyvoFs+o
	 7AEkriQwBZcOYUZ98RB6P0tk1QQtdxCO13jIl6V7uVy5f2VjnGf51VhHYkYR/6if6R
	 lL9khnkkv9sqGiuKeYCAUSjad+gyCkblGFYoY1/YlsBiqii/F3A3I4GL7DRq4QnS3h
	 hrjhhYQNZQmQw==
Message-ID: <f591083f-b117-4829-a7dc-f8214cb5848e@catalyst.net.nz>
Date: Wed, 27 May 2026 16:39:06 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
References: <ahWSPqvIsy3zT7nq@SERNOX25>
Content-Language: en-NZ
To: oss-security@lists.openwall.com
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Autocrypt: addr=douglas.bagnall@catalyst.net.nz; keydata=
 xsBNBFTZNuABCACnBtS+eLzGts68jAJrZstbH5vM0d/4+OsGcvFkrXGPE9D6PsRdVM+jPT1Z
 fASzsarvWkx0b7p6/XTwTo2Al3KRRVLq3FQFPOLyKzSXK8u+vUi/py7Cv133t4Uea7+Pp+YM
 tWjXGwB/y3s5TBwJkYShSTBpAhDnkKjxRSQXIr7gIE0fIPIS1uy19g1q/BuXuj1sfcISRMpp
 z8qs9cAsk45tG1JItaLjO7+K47Q3LEfskChGPbhwh7tWCquDzreQC7q+h3dK6A1AOrorskON
 +Wy3aucRoOw6scNfV2H1y6lDza2lwZxCDRs6zkn7SQVjX62j9kVczShyi5udgqfWsW2jABEB
 AAHNMURvdWdsYXMgQmFnbmFsbCA8ZG91Z2xhcy5iYWduYWxsQGNhdGFseXN0Lm5ldC5uej7C
 wHgEEwECACIFAlTZNuACGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHcqM0mxsX5t
 XIoH/jiHvUuw4xrBKuk9KzAE5JNd5rcTQdaRgiIvM/6C6X/uobzO2CDKFEUOmTpYSSXkq0/3
 YmwCRqWMja/5N1886qFrkcrIkTMRb0imxkNVwd7JIPdryK6dFCzCRUC1hByqeI8EwO41ROX+
 qw6DT+H/o6QkPWAB1P8ODVtq0F3TUZ0/Xpe3xYK1QF6Ud0BKWVcKBMAdS7CWTsVRD6m9it80
 Mp4N3y6Ka0vrgZ6IEskBHGVJ/Mm6ONrHIjl4OAbAKK4PuFha5PjPx1YYYOnsp4JvhrSJQDag
 A9vDdm7mbJpxxVY0Rx4t7xRvh+jsZ1f6yVGx5UTpdtvSbriZ2SZ3F29hBGfOwE0EVNk24AEI
 ANSG9xaPHGxr7l1Wcz8J51IDT0EE7ozS3TSYRE80OSH8oB26w5StLbQkC+iWj0GsTveJL9x6
 Vp/dfsPGfG9CP9J0C4ZOwY7+V9ex1d10xzr32zetKiUt7ZEimzIiCnmnR9K54jVbGDvVfJie
 uTOGruqRLIUAO69ZyhplRywyee6MRtgmfLpJlnOySgvihR4kHmq03zHe6whhJ0RmbKSIwb/F
 Ri/ZmpujNZ7PTYcmw7sp/5HpE4taYA0f3QvK9/DTjuoITdugrxhOwBdv6jLAAzI8d0quOFf+
 5IeGizYTa6HPmBtIUyyzVajjiUpXiB8WuhgTL5pP0BT5j6BtW8Li/YEAEQEAAcLAXwQYAQIA
 CQUCVNk24AIbDAAKCRB3KjNJsbF+bYRnB/94DaFuxGVA65kkr5iubWbwKnaiTWlZLIFQp0RH
 QRk/jgdpuQj3E4D660QdfoMqhTeozOPTBH3cJOCjgN/klI7xrkvdq8sLTMWyM5Bbu+XhDaSr
 8hnjvdhZM7bHQdaH3FI5zdm2rMbP8nB6IH8wYSxHzywjR9vks6PTsqxqeCoupqdVO/kZ3jsU
 F0LOxxnMTlT8YZIn8lFVptsz5HMOKFnUdR3fYpcO+CTc9vXqcLWqnMwchdSQPp1cjZ5eUl+G
 jmq9xwOWLG/0u5b9stC3cEiCNSZn8Nyy7KaY8fQeKn//sBeyu3htjZ2wZ+oRVuc/XR/+/hl6
 QCGP/4UC6mJGdmU0
In-Reply-To: <110d1661-716f-48d2-84c6-fbc9959b7c39@catalyst.net.nz>
X-Forwarded-Message-Id: <ahWSPqvIsy3zT7nq@SERNOX25>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Samba 4.24.3, 4.23.8 and 4.22.10 Security Releases are available for
 Download




-------- Forwarded Message --------
Subject: [Announce] Samba 4.24.3, 4.23.8 and 4.22.10 Security Releases 
are available for Download
Date: Tue, 26 May 2026 14:29:50 +0200
From: Stefan Metzmacher via samba-technical 
<samba-technical@lists.samba.org>
Reply-To: Stefan Metzmacher <metze@samba.org>
To: samba-announce@lists.samba.org, samba@lists.samba.org, 
samba-technical@lists.samba.org

Release Announcements
---------------------

This is a security release in order to address the following defects:

o CVE-2026-1933:   Missing access checks on reparse point operations

                    On a share marked "read only = yes" and
                    on file handles opened R/O users can set
                    or delete the reparse point xattrs on files
                    that the user has write-access in the file
                    system for.

                    https://www.samba.org/samba/security/CVE-2026-1933.html


o CVE-2026-2340:   WORM vfs module does not block overwrites

                    The WORM (Write-Once, Read Many) vfs module
                    is supposed to lock write access to shared
                    files, so they cannot be altered after initial
                    writes. It was allowing files to be overwritten
                    by renaming a newly created file over a protected
                    file.

                    https://www.samba.org/samba/security/CVE-2026-2340.html


o CVE-2026-3012:   auto-enrolment GPO installing CA certificate over http
                    without verification

                    To bootstrap a certificate chain a domain member must
                    fetch a certificate without TLS. It was trusting HTTP
                    for this when a more secure encrypted LDAP channel
                    was also available.

                    https://www.samba.org/samba/security/CVE-2026-3012.html


o CVE-2026-3238:   Denial of service against AD DC WINS server

                    The WINS server component of the Active
                    Directory Domain controller code in Samba
                    is vulnerable to a NULL pointer dereference
                    and crash caused by a unauthenticated UDP
                    packet.

                    https://www.samba.org/samba/security/CVE-2026-3238.html


o CVE-2026-4408:   Unauthenticated Remote Code Execution in Samba 
DCE/RPC SAMR
                    server

                    Samba file servers and classic (non-AD) domain 
controllers
                    with samba-dcerpcd started as a system service and 
with a
                    "check password script" that has the %u substitution
                    character are vulnerable to a remote code execution.

                    https://www.samba.org/samba/security/CVE-2026-4408.html


o CVE-2026-4480:   Unauthenticated Remote Code Execution in Samba printing
                    subsystem

                    Samba print servers with a "print command"
                    that has the %J substitution character
                    are vulnerable to a Remote Code Execution.

                    https://www.samba.org/samba/security/CVE-2026-4480.html


Changes
-------

o  Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
    * BUG 15997: CVE-2026-2340
    * BUG 16003: CVE-2026-3012
    * BUG 16033: CVE-2026-4480
    * BUG 16034: CVE-2026-4408

o  Pavel Kohout <pavel@aisle.com>
    * BUG 15997: CVE-2026-2340

o  Volker Lendecke <vl@samba.org>
    * BUG 15992: CVE-2026-1933
    * BUG 16012: CVE-2026-3238

o  Stefan Metzmacher <metze@samba.org>
    * BUG 15992: CVE-2026-1933
    * BUG 16033: CVE-2026-4480
    * BUG 16034: CVE-2026-4408
    * BUG 16059: (4.23-only) CVE-2026-40170: thirdparty ngtcp2 needs to 
be updated
    * BUG 16073: (4.22/23-only) Winbind can change Ownership Of / To A 
User Who
      has Homedir / In passwd

#######################################
Reporting bugs & Development Discussion
#######################################

Please discuss this release on the samba-technical mailing list or by
joining the #samba-technical:matrix.org matrix room, or
#samba-technical IRC channel on irc.libera.chat.

If you do report problems then please try to send high quality
feedback. If you don't provide vital information to help us track down
the problem then you will probably be ignored.  All bug reports should
be filed under the Samba 4.1 and newer product in the project's Bugzilla
database (https://bugzilla.samba.org/).


======================================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
======================================================================



================
Download Details
================

The uncompressed tarballs and patch files have been signed
using GnuPG (ID AA99442FB680B620).  The source code can be downloaded
from:

         https://download.samba.org/pub/samba/stable/

The release notes are available online at:

         https://www.samba.org/samba/history/samba-4.24.3.html
         https://www.samba.org/samba/history/samba-4.23.8.html
         https://www.samba.org/samba/history/samba-4.22.10.html

Our Code, Our Bugs, Our Responsibility.
(https://bugzilla.samba.org/)

                         --Enjoy
                         The Samba Team

