X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1493" "Wednesday" "27" "January" "2016" "12:40:44" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160127174044.A4E7C3AE070@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function" "^Cc:" nil nil "1" "2016012717:40:44" "[oss-security] Re: CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function" (number mark "        cve-assign@m Jan 27   39/1493  " thread-indent "\"[oss-security] Re: CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function\"\n") "<20160127154041.GA9254@eldamar.local>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24075 invoked by uid 550); 27 Jan 2016 17:40:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24057 invoked from network); 27 Jan 2016 17:40:56 -0000
In-Reply-To: <20160127154041.GA9254@eldamar.local>
Message-Id: <20160127174044.A4E7C3AE070@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 27 Jan 2016 12:40:44 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux: NULL pointer dereference netfilter/nf_nat_redirect.c in nf_nat_redirect_ipv4 function
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=94f9cd81436c85d8c3a318ba92e236ede73752fc
> netfilter: nf_nat_redirect: add missing NULL pointer check

Use CVE-2015-8787.


>> this was once fixed in 2003.
>> 
>> http://marc.info/?l=netfilter-devel&m=106668497403047&w=2

Use CVE-2003-1604 for this similar issue in the past. The added test
for "indev->ifa_list == NULL" existed in 2.6.0 but did not exist in
2.5.75.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWqP+eAAoJEL54rhJi8gl5hr4P/jr7hZkO6mvdXvUvm2aHc4Xk
9LgjyWsH0mtluEV50n8XiTMjpgCN0Zoyfyp5xKSPmrWDcPU18Va1f+9pdH1q8EW+
V4YqsQPXm67JumFTvfZ0RkzFFtrCdAsHwjg0k1PBnAVj7Xv5P3vXOuEN+zyVUUIF
uYdwzaROhD83abJEtTOP/iIchx8SL1tlj69C5zBSCJZDwkXt/4q4FvI0A3HBoPgx
7DpkibYIVMl7/uPfDly2nc2r/uxWooqtm4CU4MB96hGp3kjM1feKtUDk0V0mj52m
MXaSnjyGEES89ubuUGAnwA3QXOxm2NgBXzATbQXhtoaIiWY1ur+c4Couka2n0owu
BfIhn2auRuMAdbUK9uMPzBPRj4BkGaMaJjbGsQa/Ldb/UiNoQ3O7jRQ3WkKlJPo8
Qt0d3bDp+XUiv1O2j4Az4lr3uUNoc4M3VSEyfkXin0nIe7qmU7L0rPlKPg09zzo9
i+C+jXffMb5tTghS0uKvkqLvtp1SdRmflhX+pq04giIhyJm96ySSHDAwUfwxOyPH
5AZg0QgnfwXFPR/XdWBjlH65hufbDGHjghmMH5ZD/opobjefbx+nKGZaegBvANAW
6aRWoefjVAfJ3ADf8IypDRpqL5dUiuZn8wy3cTY58eidQHz19YwHwZrFrDrygI8b
1l+I4JYQ96Ugm67xWHvM
=yd8J
-----END PGP SIGNATURE-----
