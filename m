X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2171" "Monday" "20" "April" "2015" "12:34:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request - illumos" nil nil nil "4" "2015042016:34:23" "[oss-security] Re: CVE request - illumos" (number mark "        cve-assign@m Apr 20   48/2171  " thread-indent "\"[oss-security] Re: CVE request - illumos\"\n") "<93B50930-3327-4BCA-86C1-3768F27C7490@omniti.com>" ("<93B50930-3327-4BCA-86C1-3768F27C7490@omniti.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21991 invoked by uid 550); 20 Apr 2015 16:34:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21973 invoked from network); 20 Apr 2015 16:34:34 -0000
In-Reply-To: <93B50930-3327-4BCA-86C1-3768F27C7490@omniti.com>
Message-Id: <20150420163423.0823A6C4020@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Apr 2015 12:34:23 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - illumos
To: danmcd@omniti.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Illumos bug #5853 (https://www.illumos.org/issues/5853), now fixed, can
> be exploited to escalate privilege. It's not easy to do so, but it is
> enough to cause concern and ask for a CVE number.
> 
> At least two distros already have this fix in place. I'd appreciate a
> CVE number (and if possible a way to request these on a non-public
> list... sorry if I missed the FAQ).

Yes, there can be a CVE mapping for this. However, because there's
additional information in https://www.illumos.org/issues/5853 that's
not discussed in your message, we don't know whether one or two CVE
IDs is the correct number.

If each of the two observations of "default error is negative one.
However, callers are expecting errnos or zero." and "we're supposed to
be checking the alignment of two different offsets, pfr_loff and
pfr_ioff, but end up checking pfr_loff twice" could be independently
exploitable, then there will be two CVE IDs. If only one is
exploitable, or if exploitation requires both, then there will be one
CVE ID.

The cve-assign@mitre.org address can be used for non-public requests
for illumos CVEs. There may be other options for the open-source
parts, but we think that not all of illumos is open source.
http://wiki.illumos.org/display/illumos/illumos+FAQs says "There still
remain some binary-only, closed source components that we inherited
from Oracle." If the component also affects an Oracle product, then
Oracle could assign the CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNSoVAAoJEKllVAevmvmsdNUH/i2pmI4pWlW/hREqWhMt15HG
tjkozI17nMUh3RRGp0eYcc0lHUVMlvSTcEZI/4XNhtSh5RaUlHSEYEolvE767WY8
odgLDuQK8yvDTpXA0rxvmnYiBy4ZR+kZrmx2ejtJfSeR7df7UwjpMwSJYyoirffa
wbfqxv1Pniww9tN1GfZyPIg9Hf6+9ib+QB/CZhzW5nF/7XLlvcttRzPeO5lxEN5V
y/0b5i73N0KD1QfF7ubNG4hIa3foXkz4v2UplAy5XYt/Zw6la4v9XNKNReP+bLRj
MxTuluANPV5U62wSy5h27QpzfZaHKoJjCoYNurl3BYfribv6hoNa7Wle4ZCJKsg=
=d2+H
-----END PGP SIGNATURE-----
