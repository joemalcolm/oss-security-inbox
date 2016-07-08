X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2516" "Friday" "8" "July" "2016" "10:07:10" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160708140710.C1C3F6FCE57@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: CVE Request: perl: XSLoader: could load shared library from incorrect location" nil nil nil "7" "2016070814:07:10" "[oss-security] Re: CVE Request: perl: XSLoader: could load shared library from incorrect location" (number mark "U       cve-assign@m Jul  8   55/2516  " thread-indent "\"[oss-security] Re: CVE Request: perl: XSLoader: could load shared library from incorrect location\"\n") "<20160707114924.GA15061@eldamar.local>" ("<20160707114924.GA15061@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22177 invoked by uid 550); 8 Jul 2016 14:07:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22151 invoked from network); 8 Jul 2016 14:07:23 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160707114924.GA15061@eldamar.local>
Message-Id: <20160708140710.C1C3F6FCE57@smtpvmsrv1.mitre.org>
Date: Fri,  8 Jul 2016 10:07:10 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: perl: XSLoader: could load shared library from incorrect location

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Jakub Wilk reported in [1] that the Perl module List::MoreUtils tried
> to load code from a subdirectory of the current working directory
> despite explicitly removing the current directory from @INC, which
> could lead to the execution of arbitrary code if cwd is untrusted, as
> demonstrated in the bugreport.
> 
> While analyzing the issue[2], it turns out that the issue is actually in
> XSLoader, which uses caller() information to locate the .so file to
> load. This can be incorrect if XSLoader::load() is called in a string
> eval. The fix commited upstream is [3].
> 
> @MITRE: Could you please assign a CVE for this issue in XSLoader? Do
> you think List::MoreUtils needs a separate CVE as well, despite the
> underlying issue lying in XSLoader[4]?
> 
>  [1] https://bugs.debian.org/829138
>  [2] https://rt.cpan.org/Ticket/Display.html?id=115808
>  [3] http://perl5.git.perl.org/perl.git/commit/08e3451d7b3b714ad63a27f1b9c2a23ee75d15ee
>  [4] https://bugs.debian.org/829578

Use CVE-2016-6185 for the XSLoader vulnerability.

There is not currently a separate CVE for List::MoreUtils. As far as
we can tell, the "Sun Jul 03 14:20:04 2016" section of 115808 gives
possible reasons for List::MoreUtils to be fixed independently, but
doesn't directly argue that List::MoreUtils was responsible for a
vulnerability on its own. Actually, it might imply the opposite, with
the "Even if List::MoreUtils is not at fault, I think this patch is
helpful" wording.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXf7JGAAoJEHb/MwWLVhi2cTEP/3GVbvUCtrt1qhknJqIsOkBk
hM6MiFHbF2Au0x3BoLT982ivdZmzTHSWgFzJhmEqo59Q3tbfvtsBsrqxmjaDhKoM
6JQHbafMtd9HsgPfn6lzd20nWDc8Z+TW+yPigWT9cnXWJ+GGqGtU4shE/Bd0RWqU
SHuO5TVA4veZdcXyUNlmGxar7NtEbjH2/Yfa10hE3CgRyWSKc8xZBP68/qNKSGnU
E+dP4G1nbB/8KTlDXB7JcWGiqWXI704h0PoAbgTD4v/JizZmz4gZWoKgoeXfukOf
SMES/QmVH8sEUIjgwstuf0VPjzQlJ+yLHDzJspODtCeGNvgcmZCA/O0HY0oQjpLA
W8+EWNhkMS6j641owiNwhgok2xpWe39crqK1EzIBWcZijByTB7SZwDcuvzxq8rhH
st3k10lF+VT26t4e8D6wFSi44xld+Qc2ngIUMAyrGmEp01p3jppnnpAMtpSpKRQ4
hJN19AkiIAyMPIEHbuv19yMvWYnfBu34rW3ZleYsl1ZTqPz8wxTdsbthYfhPz1L7
NauVi4xlVKYqNrD8O4hV0OFolYXzn8o5WKVWaSby+nszL/mELzQCPlog5QUnqmSy
5+Pl5a7Ae8eZCAlsI8iuvDBcFeMHzNojHIJEk0m06riTB3uiDug9X5Cgp7QZ6AbN
T5OSd5vKksMXgbMqIKIi
=NaWX
-----END PGP SIGNATURE-----
