X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1918" "Friday" "16" "September" "2016" "13:26:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160916172601.892E23AE010@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object" nil nil nil "9" "2016091617:26:01" "[oss-security] Re: CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object" (number mark "U       cve-assign@m Sep 16   45/1918  " thread-indent "\"[oss-security] Re: CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object\"\n") "<alpine.LFD.2.20.1609161709040.28695@wniryva>" ("<alpine.LFD.2.20.1609161709040.28695@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19692 invoked by uid 550); 16 Sep 2016 17:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19665 invoked from network); 16 Sep 2016 17:26:13 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1609161709040.28695@wniryva>
Message-Id: <20160916172601.892E23AE010@smtpvbsrv1.mitre.org>
Date: Fri, 16 Sep 2016 13:26:01 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: scsi: mptsas: OOB access when freeing MPTSASRequest object

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the LSI SAS1068 Host Bus emulation support, is
> vulnerable to an invalid memory access issue. It could occur while processing
> scsi io requests in mptsas_process_scsi_io_request.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> instance on the host resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03604.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1376776
> http://git.qemu.org/?p=qemu.git;a=commit;h=670e56d3ed2918b3861d9216f2c0540d9e9ae0d5

>> scsi: mptsas: use g_new0 to allocate MPTSASRequest object
>> 
>> When processing IO request in mptsas, it uses g_new to allocate
>> a 'req' object. If an error occurs before 'req->sreq' is
>> allocated, It could lead to an OOB write in mptsas_free_request
>> function. Use g_new0 to avoid it.

Use CVE-2016-7423.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3CoQAAoJEHb/MwWLVhi2jDcP+wbIpI1ey0NwiBCdBhQhtIcM
OinhQ7vBTP7wqOZqMEnJoWRdK3A56/JxfXs5chnHEUxiiC5sy59sMoDa/wJ9M2yL
WDCzYZLVpTevTW/fbeMnXel3Xc5IFB80yaAuDqXP48f3s1H6bo2ai0giyWdcbdXY
UebsZpm9MHxeqN6DYEGnsYe8audTizfe9swwLeWSUXyttzFLGOrL3pJQE6WBORbu
cbpazz4ylYJcDyY+Th3CNZpFAZGqIcw++DMZKZG00nlgXJ4gWn9raLmfWYVKRumd
JHczsDj36PqKC5kXsrwyd62YV7TCZFzDHGEQN3ZeGIhIbLaKhc9OSif48V3Xu5pH
4SzvmEFiSiRCD5HGgikkzyt+lbNy7rbvry8NWYek/pgeXIYkYdywgKB54fs0jNjv
wVf82M/8QDqFmegkRiEIyF8WsTe6WpwBgRQm7PdNJlyR54gH38/uTCefhPZj9elT
RdgGkqtinff92C12s+A8nH4GIe8uQnGUt2cv39m02htT5NaSZBTAXPQuoVUJTIjM
+xsymnuJSSMzyy351XG+8T+Cc2er7G+dYdf2aZUMItFlPSaK3Ewp5rFkgAYNClJz
D6MWKJeXonSrx4j/+z5tTHma64FEgNfKSupEaf5en0od7lR7zB215xFbv6g6P/3d
8arhpqQkwLxtRAm2n/Ad
=7sOJ
-----END PGP SIGNATURE-----
