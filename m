X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1831" "Wednesday" "3" "June" "2015" "14:01:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150603180125.9E00C6DC002@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage" nil nil nil "6" "2015060318:01:25" "[oss-security] Re: CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage" (number mark "        cve-assign@m Jun  3   41/1831  " thread-indent "\"[oss-security] Re: CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage\"\n") "<alpine.LFD.2.11.1506022332310.14742@wniryva>" ("<alpine.LFD.2.11.1506022332310.14742@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13658 invoked by uid 550); 3 Jun 2015 18:01:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13634 invoked from network); 3 Jun 2015 18:01:37 -0000
In-Reply-To: <alpine.LFD.2.11.1506022332310.14742@wniryva>
Message-Id: <20150603180125.9E00C6DC002@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  3 Jun 2015 14:01:25 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Linux kernel: fs: udf heap overflow in __udf_adinicb_readpage
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel built with the UDF file system(CONFIG_UDF_FS) support is
> vulnerable to a crash. It could occur while reading from a corrupted/malicious
> udf file system image.
> 
> An unprivileged user could use this flaw to crash the kernel resulting in DoS.
> 
> Upstream fixes:
> ---------------
>    -> https://git.kernel.org/linus/e159332b9af4b04d882dbcfe1bb0117f0a6d4b58
>    -> https://git.kernel.org/linus/e237ec37ec154564f8690c5bd1795339955eeef9
>    -> https://git.kernel.org/linus/a1d47b262952a45aae62bd49cfaf33dd76c11a2c

We feel that this is best covered by three CVE IDs, although not with
a one-to-one mapping. The "length can be too long" problems addressed
in all three commits are assigned CVE-2014-9728.
e159332b9af4b04d882dbcfe1bb0117f0a6d4b58 is also about a separate
data-structure consistency issue (the "iinfo->i_lenAlloc !=
inode->i_size" issue): this is assigned CVE-2014-9729. Finally,
e237ec37ec154564f8690c5bd1795339955eeef9 is also about a separate
state-identification issue ("properly ignore component length for
component types that do not use it"): this is assigned CVE-2014-9730.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVb0ALAAoJEKllVAevmvmsOIAIAMI+XxEFI9Kv13jINfdgBMwR
jVgVlsl6ySo75fKDFAraEY6tUcLrm/01nP8iwCidDEt9HfBgToyut7V/1VZU57aK
S68LRGXfhjD8jSNzTP7pmJXY4PPE5R/9gmVQ+Yu4QKNPsrpJHl4O813T3qrYRKtM
hzinIacPhjoWkktra1QMWQBCOCfdP9Sz6fYRc+bTylgIz4sAzm2ftGIo+c1dvT5b
fPS1WqdiUWj9nxjEf/gaLqaYo6Aj2jNicS8vhl2VU/vMOswumf2A+kkM0xUsfS1B
vwoQ6Ebsa5fkPQ/rGg1nCHaT4jYMCF6o/R/SqyMx+4Jgv5euRwVZchOoenUzWTA=
=Glix
-----END PGP SIGNATURE-----
