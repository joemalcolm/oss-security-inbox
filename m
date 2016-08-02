X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1887" "Tuesday" "2" "August" "2016" "19:48:18" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160802234818.3884B6CC7C9@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD" nil nil nil "8" "2016080223:48:18" "[oss-security] Re: CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD" (number mark "U       cve-assign@m Aug  2   50/1887  " thread-indent "\"[oss-security] Re: CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD\"\n") "<D777B0B9-DB4B-40FD-A5CC-5757458A9B54@nccgroup.trust>" ("<D777B0B9-DB4B-40FD-A5CC-5757458A9B54@nccgroup.trust>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21585 invoked by uid 550); 2 Aug 2016 23:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21561 invoked from network); 2 Aug 2016 23:48:30 -0000
From: cve-assign@mitre.org
To: jesse.hertz@nccgroup.trust
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, Tim.Newsham@nccgroup.trust
In-Reply-To: <D777B0B9-DB4B-40FD-A5CC-5757458A9B54@nccgroup.trust>
Message-Id: <20160802234818.3884B6CC7C9@smtpvmsrv1.mitre.org>
Date: Tue,  2 Aug 2016 19:48:18 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Denial-of-Service / Unexploitable Memory Corruption in mmap() on OpenBSD

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Any user can trigger a panic by requesting a large mapping
> that overlaps with an existing mapping.

> There is a flaw in uvm_map_isavail() when the requested size is very
> large.

> Due to an integer overflow that can occur when computing
> "addr + sz" it is possible for the end_ptr map to be
> computed incorrectly

> eventually call uvm_map_fix_space() which
> performs its own sanity lookup with uvm_mapent_addr_insert(),
> and panics if an overlapping mapping is added

> it does not appear to be possible
> to make a mapping above the stack segment. All wrap-around mappings
> lower than this address overlap with the stack segment and result
> in a panic.

>     pg = mmap(NULL, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

>     p = mmap(pg+4096, 0xffffff0000000000, 0, 0, fd, 0);

Use CVE-2016-6522.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXoS62AAoJEHb/MwWLVhi2NtgP/RH6AK7RrZqwEUIPfFv7Mxrr
bTD80zaFxPgPUVe+I6ZyUMUVbvzcbzzE0ltZNPAu0i1kgKVlFTJD975jQU1P+8Qq
BacOj2pCd7uPGFrkZiYzi8TaRF1guAulQ2RJTmwmGYwULDknm5MeOyDVQLIRor/d
FrF5wLzQbi1SOOBeIvD9TLRVgyrBxTZVsYgi+933PATIU/PhntH5q4wsH0TTxWnB
q418AtW36B4iatxKMMRPG9L7IHh6ZGp4gfxcmunG3G0CFynX9kh1uW+hMBP+5sM8
OR6PKNSPL9Fol8UN8PesEhgvhfWiRG4ZICHd6WI4ZGHqC4Lm5ndBu+2DH+ccoFFj
nl8z1f6yQ1mpCy2aUCTnyrCSOJvIvuAKiyUJPpzVxh/ISrfrWt7Yqx9kZ7fIEUHq
l1EESiuB1glkDfjSQ7x0mSv30rRTzEUerP+qpyK9zrp2C8JCSrJyd/KKaEEdZefw
JKLC55qbhC9h/JKOsswowMhzd+brb81Ew6gcvKphoJa55WH3sxtFHaFg2t6cgq1Y
INHzhIiKnNq01htGDlRtJH2Ox2+KhscEPeBXlVX4bSVigVy5nJ1RDHZpE6J1jL6Y
sy/novadV8MyOTUZOSqUeqEf2DJQdZ2aw0WrMPhJeDRhV32VUnbVo8RXoSp9VzsM
9GxgVB48+E3J2PXvBkOF
=Ajrp
-----END PGP SIGNATURE-----
