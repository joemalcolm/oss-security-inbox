Received: (qmail 15741 invoked by uid 550); 30 Mar 2023 21:15:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3542 invoked from network); 30 Mar 2023 20:59:57 -0000
X-Virus-Scanned: amavisd-new at devio.us
Message-ID: <ccf285d54b65fe5e34852f73ce2aa6f1130ffd6a.camel@devio.us>
From: Ailin Nemui <ailin@devio.us>
To: oss-security@lists.openwall.com
Date: Fri, 31 Mar 2023 04:59:30 +0800
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.0 
MIME-Version: 1.0
Subject: [oss-security] Irssi SA-2023-03 / Use after free in printing routine

Hi,

The issue has been reported to us by ednash, who were experiencing
frequent crashes of their Irssi. With the release of GLib 2.77, the
slice memory allocator that was previously obscuring this memory issue
was removed, thus making it much easier to trip.

When Irssi prints a message while another message is being printed, the
list that keeps track of Irssi variables for use in statusbar/message
patterns is not correctly cleaned up, leading to the use after free
condition.

A CVE has been requested.

official message: https://irssi.org/security/irssi_sa_2023_03.txt

IRSSI-SA-2023-03 Irssi Security Advisory [1]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[ CVE will be added here ]

Description
-----------

(a) Use after free while using a stale special collector reference
    found by ednash. (CWE-416)


Impact
------

May affect the stability of Irssi.


Affected versions
-----------------

(a) Irssi 1.3.0 and later


Fixed in
--------

Irssi 1.4.4


Recommended action
------------------

Upgrade to Irssi 1.4.4.

After installing the updated packages, one can issue the /upgrade
command to load the new binary.


Mitigating facts
----------------

The precondition for this issue is printing a non-formatted line during
the printing of a formatted line. This is unlikely to happen without
scripts, and is obscured by the slice allocator when using GLib before
version 2.77.



References
----------

[1] https://irssi.org/security/irssi_sa_2023_03.txt


