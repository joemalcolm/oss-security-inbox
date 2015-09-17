X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1384" "Thursday" "17" "September" "2015" "12:20:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091716:20:46" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        cve-assign@m Sep 17   36/1384  " thread-indent "\"[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<20150917122333.GB23283@suse.de>" ("<20150917122333.GB23283@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23932 invoked by uid 550); 17 Sep 2015 16:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23909 invoked from network); 17 Sep 2015 16:20:58 -0000
In-Reply-To: <20150917122333.GB23283@suse.de>
Message-Id: <20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, steved@redhat.com, oss-security@lists.openwall.com
Date: Thu, 17 Sep 2015 12:20:46 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.spinics.net/lists/linux-nfs/msg53045.html
> https://bugzilla.suse.com/show_bug.cgi?id=946204

> frees the netbuf caller_addr and caller_addr.buf. However, it does not
> clear xp_rtaddr, so xp_rtaddr.buf now refers to memory region A, which
> is free.
> 
> ... It will reuse the buffer inside xp_rtaddr

Use CVE-2015-7236.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV+ufJAAoJEL54rhJi8gl5D/4P/31pBr0+iMIFkWB3Evgbk48P
MrR9qkpkh8/qI5UH5u/53g1/f684gfod4oIFzMG6QcrXYBdoV5RNk/8Z11ShXRCC
ioUuSu6Rs7qTpbjhWgCHORVLoy5xHO0+vam/rp+HV8ou3aOcmxuFewniUVFhcChw
l0CcrprES50BVVtIOEnq32qK0uwfeWAVPejEmDUpVeiZtOIjgSNczzV8RFevZ5bw
60eR72++Qaf5ZbYn/1lI18KCRB5IXJo/Bci9em1VEPonqhJ5TVfNxDmj2TRk3QDK
foLTa2h8QiTn1KYlrZw5WU73gEGOq+QTWeMwXtRUhMAeApljHZccEFy6IZvUN1kA
X9reVz73H4ogS2yeERF5+EY6FIpGn1Q2s64CHynXKYzec4R2MYybFiNffn3YL4U/
I8DwPb7eOH0LVNpPMXs712HgeJBXf+6EXyLY4sFiTjsubJARt/EHwBtfrO+q1o2S
RJc9iu3eP7IeF0JDW+ANR3gxG6Nd9kyDdCXOJRwe8m7sRzpWzuDI1xgTqTD+HPp8
/Y+2OU5Op0BbjpzG+ExtPXImhLL1F7Zrv6J5qAz4hv7nIJEiLAfX5Jzu1FVl5gLb
S7BM9cjlsrRjH49o3Sf9mjwPjUQkP2sJ8K3N/8bWLJX5P2CEV4EGJXRO0/2p6Grv
v3WLb36O/Vsfn6c05Da7
=KQBR
-----END PGP SIGNATURE-----
