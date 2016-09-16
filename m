X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1911" "Friday" "16" "September" "2016" "13:24:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160916172432.9CAC052E020@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc" nil nil nil "9" "2016091617:24:32" "[oss-security] Re: CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc" (number mark "U       cve-assign@m Sep 16   46/1911  " thread-indent "\"[oss-security] Re: CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc\"\n") "<alpine.LFD.2.20.1609161611510.28695@wniryva>" ("<alpine.LFD.2.20.1609161611510.28695@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9542 invoked by uid 550); 16 Sep 2016 17:24:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9519 invoked from network); 16 Sep 2016 17:24:44 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com, zhenhaohong@gmail.com
In-Reply-To: <alpine.LFD.2.20.1609161611510.28695@wniryva>
Message-Id: <20160916172432.9CAC052E020@smtpvbsrv1.mitre.org>
Date: Fri, 16 Sep 2016 13:24:32 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: virtio: null pointer dereference in virtqueu_map_desc

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the virtio framework is vulnerable to a null
> pointer dereference flaw. It could occur if the guest was to set the I/O
> descriptor buffer length to a large value.
> 
> A privileged user inside guest could use this flaw to crash the Qemu instance
> on the host resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03546.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1376755

>> virtio back end uses set of buffers to facilitate I/O operations.
>> If its size is too large, 'cpu_physical_memory_map' could return
>> a null address. This would result in a null dereference
>> while un-mapping descriptors. Add check to avoid it.

Use CVE-2016-7422.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/virtio/virtio.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3CoJAAoJEHb/MwWLVhi22UAP/i8JPCu45VXEBOxfSHFq2RuT
TFTLRJoGrzZSJmk0xJQzLevXfM/u/dP7M4bXXdiGETuXDoytygrZvpQX4TjhRcJa
6B2gCLdlPpcH+m3BW9OzfR3mxMVwGwBMLpDIKo4lRMBkW4Sm9BT5druuJtnYqrpi
28FtGgLimIIjWykf+XOPCSA1/7jOURlpQWp3AXzdJ4bbPekMIbwGjWDpsbxQFnWt
UyutNxjJMXKegxNbgKmqtle6O63HewHzzmkMwFpq9VH6yA84kA3ckc+Kn5o88mAz
4GOVBazW2WLaouT0mcNTSuEzKMVJZTFeMo9LkdOP70ds9ChkMUm4RE55jTTvy1HF
0EE7q9z9dKnO0DWht7/KtBO4o7pPSiSvz3Amc56D4rUzww2w4SkBwwQp40Eyt9K0
SNLEL62COpHMbqz0O+lZV/04ZgTvxwO82ALOOGHKzgFXEVZtr3QImugNKBDFItkF
AzMP9005g6XoXKDNgMDJVz07cDiVU5/tOwTFaFe88CVJR6l9Ez6RSkMUbdloHZD0
LlsaUPUhVLvKCV+RzUF1MH8Z8i4kIfbSkhSu65VqGeN05dUV+ClmUTj0Q10OGXnm
UmsmrsdkTDRvye6giFtkXrnV6aPLNkY+SXIePG1IYChtR8XVrHH+3LNeFmkSUMJr
r6mhE1RiIJ8ZeEkzvS3K
=d+8E
-----END PGP SIGNATURE-----
