X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Friday" "16" "September" "2016" "13:22:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160916172249.12FAB42E003@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests" nil nil nil "9" "2016091617:22:49" "[oss-security] Re: CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests" (number mark "U       cve-assign@m Sep 16   44/1826  " thread-indent "\"[oss-security] Re: CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests\"\n") "<alpine.LFD.2.20.1609161502430.28695@wniryva>" ("<alpine.LFD.2.20.1609161502430.28695@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31770 invoked by uid 550); 16 Sep 2016 17:23:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31752 invoked from network); 16 Sep 2016 17:23:01 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1609161502430.28695@wniryva>
Message-Id: <20160916172249.12FAB42E003@smtpvbsrv1.mitre.org>
Date: Fri, 16 Sep 2016 13:22:49 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Qemu: scsi: pvscsi: infinite loop when processing IO requests

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus
> emulation support is vulnerable to an infinite loop issue. It could occur
> while processing SCSI IO requests.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg03609.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1376731
> http://git.qemu.org/?p=qemu.git;a=commit;h=d251157ac1928191af851d199a9ff255d330bec9

>> scsi: pvscsi: limit process IO loop to ring size
>> 
>> Vmware Paravirtual SCSI emulator while processing IO requests
>> could run into an infinite loop if 'pvscsi_ring_pop_req_descr'
>> always returned positive value. Limit IO loop to the ring size.

Use CVE-2016-7421.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3CoDAAoJEHb/MwWLVhi24c4P/0e14e2CUn0/9Kgusithfj+j
Q1W7xnYwIPhTlgHHMb28a1xU2ORq5Vf8cGVaan1NRZIEIcfdZRHbAgqbzvdWgTGq
RDHsQVpls9wfftF9uQJqA8m/LplqiOf4e9EhWqa7kI47ji9JrsebZgY07lGWP6kY
5wir89tG1sqT56dcyJb1zirWSqcNb74iFXG22Ksm1apXan9ax2HiHWEyAs6QZZXx
kOTo7TnD+mVoJM9OdcQ9PW1JhSnH11715E88wEftKxNseqeDMKbhM7rGJlL6JTAx
hy9o0RTLbPPfRKtpMvA389ivcRpWHpHqryynUd9uGb1p63JLqATspWTdpqHljM4k
asqDs+exTj9cyrGRXDoycdfuEjrxCyb1FgW5on6ThoT2Q/Y4anl4SMOxyL/Lh05k
YIHFnR1hcBkiZJucM8dWuDyzVwrWJiKDRBvcXOX+hpyWcHaD/PeaK6tfBb61wKjP
KWvDkQ3jjGD+qMfRfQ/tN7buZAo3MhZpjXJ/zj002stu20RGjsmfxRgJuZlI/eZM
iJBZ4tZTW7xo2o3i+XOhPokOSQEVhEHJ6TJ6MH3CyJysqoU7N2tjKsmd4/jasPvQ
Zgw+DTRGKHsEdxvcZUXpcPZK+3hC4yk0FTweLw8lRyAiiYcBCle32hHlZ5KK7vft
p6cmljAyzzWwLuN0pDgP
=B4w3
-----END PGP SIGNATURE-----
