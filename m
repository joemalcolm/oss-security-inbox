X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4473" "Wednesday" "10" "November" "2021" "14:32:02" "+0100" "Solar Designer" "solar@openwall.com" nil "138" "[oss-security] Fwd: Samba 4.15.2, 4.14.10, 4.13.14 Security Releases are available for Download" nil nil nil "11" nil nil (number mark "U       solar@openwa Nov 10  138/4473  " thread-indent "\"[oss-security] Fwd: Samba 4.15.2, 4.14.10, 4.13.14 Security Releases are available for Download\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: Samba 4.15.2, 4.14.10, 4.13.14 Security Releases are available for Download" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19747 invoked by uid 550); 10 Nov 2021 13:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19585 invoked from network); 10 Nov 2021 13:32:18 -0000
Date: Wed, 10 Nov 2021 14:32:02 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20211110133202.GA4302@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Fwd: Samba 4.15.2, 4.14.10, 4.13.14 Security Releases are available for Download

----- Forwarded message from Stefan Metzmacher <metze@samba.org> -----

Date: Tue, 9 Nov 2021 19:26:03 +0100
From: Stefan Metzmacher <metze@samba.org>
To: samba-announce@lists.samba.org, samba@lists.samba.org,
	samba-technical@lists.samba.org
Subject: [Announce] Samba 4.15.2, 4.14.10, 4.13.14 Security Releases are
 available for Download

Release Announcements
---------------------

These are security releases in order to address the following defects:

o CVE-2016-2124:  SMB1 client connections can be downgraded to plaintext
                  authentication.
                  https://www.samba.org/samba/security/CVE-2016-2124.html

o CVE-2020-25717: A user on the domain can become root on domain members.
                  https://www.samba.org/samba/security/CVE-2020-25717.html
                  (PLEASE READ! There are important behaviour changes described)

o CVE-2020-25718: Samba AD DC did not correctly sandbox Kerberos tickets issued
                  by an RODC.
                  https://www.samba.org/samba/security/CVE-2020-25718.html

o CVE-2020-25719: Samba AD DC did not always rely on the SID and PAC in Kerberos
                  tickets.
                  https://www.samba.org/samba/security/CVE-2020-25719.html

o CVE-2020-25721: Kerberos acceptors need easy access to stable AD identifiers
                  (eg objectSid).
                  https://www.samba.org/samba/security/CVE-2020-25721.html

o CVE-2020-25722: Samba AD DC did not do suffienct access and conformance
                  checking of data stored.
                  https://www.samba.org/samba/security/CVE-2020-25722.html

o CVE-2021-3738:  Use after free in Samba AD DC RPC server.
                  https://www.samba.org/samba/security/CVE-2021-3738.html

o CVE-2021-23192: Subsequent DCE/RPC fragment injection vulnerability.
                  https://www.samba.org/samba/security/CVE-2021-23192.html

There's sadly a regression that "allow trusted domains = no" prevents winbindd
from starting, we'll try to provide a follow up fix as soon as possible.

Changes:
--------------------

o  Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
   * CVE-2020-25722

o  Andrew Bartlett <abartlet@samba.org>
   * CVE-2020-25718
   * CVE-2020-25719
   * CVE-2020-25721
   * CVE-2020-25722

o  Ralph Boehme <slow@samba.org>
   * CVE-2020-25717

o  Alexander Bokovoy <ab@samba.org>
   * CVE-2020-25717

o  Samuel Cabrero <scabrero@samba.org>
   * CVE-2020-25717

o  Nadezhda Ivanova <nivanova@symas.com>
   * CVE-2020-25722

o  Stefan Metzmacher <metze@samba.org>
   * CVE-2016-2124
   * CVE-2020-25717
   * CVE-2020-25719
   * CVE-2020-25722
   * CVE-2021-23192
   * CVE-2021-3738
   * ldb release 2.3.2 (for Samba 4.14.10)
   * ldb release 2.2.3 (for Samba 4.13.14)

o  Andreas Schneider <asn@samba.org>
   * CVE-2020-25719

o  Joseph Sutton <josephsutton@catalyst.net.nz>
   * CVE-2020-17049
   * CVE-2020-25718
   * CVE-2020-25719
   * CVE-2020-25721
   * CVE-2020-25722
   * MS CVE-2020-17049


#######################################
Reporting bugs & Development Discussion
#######################################

Please discuss this release on the samba-technical mailing list or by
joining the #samba-technical IRC channel on irc.libera.chat or the
#samba-technical:matrix.org matrix channel.

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

        https://www.samba.org/samba/history/samba-4.15.2.html
        https://www.samba.org/samba/history/samba-4.14.10.html
        https://www.samba.org/samba/history/samba-4.13.14.html

Our Code, Our Bugs, Our Responsibility.
(https://bugzilla.samba.org/)

                        --Enjoy
                        The Samba Team

----- End forwarded message -----
