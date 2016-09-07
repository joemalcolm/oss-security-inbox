X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1958" "Tuesday" "6" "September" "2016" "20:53:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160907005320.3015233E005@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings" nil nil nil "9" "2016090700:53:20" "[oss-security] Re: CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings" (number mark "U       cve-assign@m Sep  6   47/1958  " thread-indent "\"[oss-security] Re: CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings\"\n") "<alpine.LFD.2.20.1609061630270.20681@wniryva>" ("<alpine.LFD.2.20.1609061630270.20681@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21755 invoked by uid 550); 7 Sep 2016 00:53:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21732 invoked from network); 7 Sep 2016 00:53:32 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn, vv474172261@gmail.com
In-Reply-To: <alpine.LFD.2.20.1609061630270.20681@wniryva>
Message-Id: <20160907005320.3015233E005@smtpvbsrv1.mitre.org>
Date: Tue,  6 Sep 2016 20:53:20 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Qemu: scsi: pvscsi: OOB read and infinite loop while setting descriptor rings

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus
> emulation support is vulnerable to an OOB access and/or infinite loop issue.
> It could occur while processing SCSI commands 'PVSCSI_CMD_SETUP_RINGS'.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg00050.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1373462

>> Vmware Paravirtual SCSI emulation uses command descriptors to
>> process SCSI commands. These descriptors come with their ring
>> buffers. A guest could set the page count for these rings to
>> an arbitrary value, leading to infinite loop or OOB access.
>> Add check to avoid it.

Use CVE-2016-7155.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/vmw_pvscsi.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXz2K3AAoJEHb/MwWLVhi2gXcP/iZr4mBbZqMJU/QngSo6pixg
17eBrvWqWoFxB+h1Fh+etk5EXS8LB6L8vPz0BpyGjhixdF0z9N8rMKEu14nVZmY3
R3IejY1e25gDuOZnX7pyR/4qTTE+ebYFg6DEU+vPiQslBrhMNj0ZB5VzF9uZD1kD
6bnJkQIUJ51ZcnxQsu0V/Zk9Q+cJX2ctKQLa4GHubaKI0wKRRS0PB64XCxKGxPca
r0oKV5CbSLU+0rXvG54GfzXwNFrVlQIssuYYMPMpGgMhIJRi/uq9g0hKvVC9BgX3
HEwRbkDtp0I3pNlQsbJMO5JkTb78DQWfW+bZMgFAjFtFhbitVKwpOrEu/Afx/VID
PrHITep4kYsALpJ3enfgJ1XpkpY9lKz3Y498ZRnfwQhMmGldiTO3mAAPDsrtOsLi
Bn1A/Y86wWK1qnDjr6bsrxTu7x2dSV+W1As0ILfH+RA9FwjKI8mGUDk55u9b2g1o
Nc4ow2jMj+YFvCS1p0auYKKGMI66weX3NFsPmw0HmeNRLcspr7p7Y/0VwgHeAUwf
C5YSdNx2uhTlH4d6bxP0RlO2IeyBIkHCmsb69kNd10N7uaMmEsT9+xZHKB/z9QV9
QaDqBu6mwyulj0UKycyafSmbk2p9BDHWYpCXGP3UpiSUkcxi/7v9YZYKSN4jQR0P
geRSHxzwQBMdDP3RVrgX
=Dx9R
-----END PGP SIGNATURE-----
