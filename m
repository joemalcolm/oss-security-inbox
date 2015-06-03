X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1279" "Wednesday" "3" "June" "2015" "14:02:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603180241.AD6E772E0D5@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request Linux kernel: udf: information leakage when reading symlink" nil nil nil "6" "2015060318:02:41" "[oss-security] Re: CVE request Linux kernel: udf: information leakage when reading symlink" (number mark "        cve-assign@m Jun  3   33/1279  " thread-indent "\"[oss-security] Re: CVE request Linux kernel: udf: information leakage when reading symlink\"\n") "<alpine.LFD.2.11.1506031600540.11488@wniryva>" ("<alpine.LFD.2.11.1506031600540.11488@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21807 invoked by uid 550); 3 Jun 2015 18:02:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21789 invoked from network); 3 Jun 2015 18:02:53 -0000
In-Reply-To: <alpine.LFD.2.11.1506031600540.11488@wniryva>
Message-Id: <20150603180241.AD6E772E0D5@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 14:02:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: udf: information leakage when reading symlink
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel built with the UDF file system(CONFIG_UDF_FS) support is
> vulnerable to an information leakage issue. It could occur while reading
> symlink information from corrupted/malicious udf file system image.
> 
> An unprivileged user could use this flaw to leak kernel memory bytes.
> 
> Upstream fix:
> -------------
>    -> https://git.kernel.org/linus/0e5cc9a40ada6046e6bc3bdfcd0c0d7e4b706b14

This seems to be about constructing a new string without checking
whether there is space for the characters as well as the '\0' at the
end. Use CVE-2014-9731.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVb0ASAAoJEKllVAevmvmsYHIH/Rx6YNQQ8TODavpp1pNvdy9A
OqiKyNZaP/u+B+MhkonVyNJraOBiH5FioZRnXQRktD0iD04p01WiDOJhfggJyuCy
FrITqzjcN2AzOt7MXyk5LWFDoRDtfGoCStL07+LosISrB5Q2MbCGgTz8zQLJh33a
F593qe1zGqqMKB3TLL5nIWKRNszT2+g9bbk9lUI03RSfUJE5KhFaCZ9t8/OA4RwB
gCR4LcFDRtPz31dsJ1isE7oip7QfFf25B56GzyInJPHTSrSw9etlKnOTko7izOWu
FGpcVF0G8q0U+1SMfUmHYrRtkw45PhMEzqxlv0nDQyEdZaIlj30umuOw49NRNRo=
=jrz8
-----END PGP SIGNATURE-----
