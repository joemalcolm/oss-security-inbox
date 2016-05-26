X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1989" "Thursday" "26" "May" "2016" "14:26:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526182609.ED687ABC298@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function" nil nil nil "5" "2016052618:26:09" "[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function" (number mark "U       cve-assign@m May 26   47/1989  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function\"\n") "<alpine.LFD.2.20.1605251802140.15974@wniryva>" ("<alpine.LFD.2.20.1605251802140.15974@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16118 invoked by uid 550); 26 May 2016 18:26:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16081 invoked from network); 26 May 2016 18:26:21 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1605251802140.15974@wniryva>
Message-Id: <20160526182609.ED687ABC298@smtpvmsrv1.mitre.org>
Date: Thu, 26 May 2016 14:26:09 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: megasas: out-of-bounds read in megasas_lookup_frame() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter
> emulation support is vulnerable to an out-of-bounds read access issue. It
> could occur while looking up MegaRAID Firmware Interface(MFI) command frames
> in 'megasas_lookup_frame' routine.
> 
> A privileged user inside guest could use this flaw to read invalid memory
> leading to crash the Qemu process on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04424.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1336461

>> While doing MegaRAID SAS controller command frame lookup, routine
>> 'megasas_lookup_frame' uses 'read_queue_head' value as an index
>> into 'frames[MEGASAS_MAX_FRAMES=2048]' array. Limit its value
>> within array bounds to avoid any OOB access.

Use CVE-2016-5107.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/megasas.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRz1JAAoJEHb/MwWLVhi2IHIP/2H2PSIdn9u6NM0/+piwp64W
uDXllEWxQn/g0GVY411lOtjVAYx61u1V5735Ft0O4GpgygYbpHzZu1DJ1R5dkVcO
iebNKl9R0p5XjOnUXSNkXXMJpElpHu1bsoU/szE+APYjBMFxifmDFQzOXojOvo1u
TYkRxE0JG/SkCWnSChoGEcjOtewqVhI/sYGv+SGRZOClMmKZsv/OQnwhcRYJ9OcE
/zvrOFMNCpJojNo+6szHlqqQsU1/6URrRBEhGbSpj2TH/9KQHMUKrAnCMxgWe06N
D4WDQWGb2MUuS7JEdssRGLnIzhr78GR/F24J5ofYCew48oRtxof8NFyRAcy9NUZM
SKo5POqRX+yfOOcQiHG/zEE2Dg39mYon539jrvx5dhGnrN2nhdY/4jBKl/wEjkR7
dhbADHx5ogTCbKrm4hwB7KOco3JxywF0G1/G88EMSnXTaOpAdjWvlGdOw+qrGWAe
MK1DzPgzd//Z7l2OQVFsfLQ0KQIHkZTS7RSOF1ltCF35d1B7ydvd2m51aoaURuSu
JOL0h8AqaYS2Xo90J9g6nFl48NCFeFvwg5vs4Ag7lQIfh0d+qIZdSaA5AtEBzKbX
gUaMSkRXwMpUuGtPVldwaYoTn934U6Ip/ffRdeDui4klcOrLITIIadvQspfj9ekG
slNT+Dd0uYveHivvS8Z6
=CpLG
-----END PGP SIGNATURE-----
