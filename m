X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1895" "Monday" "23" "May" "2016" "13:33:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160523173303.042486C0718@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines" nil nil nil "5" "2016052317:33:03" "[oss-security] Re: CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines" (number mark "U       cve-assign@m May 23   46/1895  " thread-indent "\"[oss-security] Re: CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines\"\n") "<alpine.LFD.2.20.1605231637460.27295@wniryva>" ("<alpine.LFD.2.20.1605231637460.27295@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19649 invoked by uid 550); 23 May 2016 17:33:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19622 invoked from network); 23 May 2016 17:33:15 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1605231637460.27295@wniryva>
Message-Id: <20160523173303.042486C0718@smtpvmsrv1.mitre.org>
Date: Mon, 23 May 2016 13:33:03 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Qemu: scsi: pvscsi: out-of-bounds access issue in pvsci_ring_init_msg/data routines

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VMWARE PVSCSI paravirtual SCSI bus
> emulation support is vulnerable to an OOB r/w access issue. It could occur
> while processing SCSI commands 'PVSCSI_CMD_SETUP_RINGS' or
> 'PVSCSI_CMD_SETUP_MSG_RING'.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg03774.html

>> Vmware Paravirtual SCSI emulation uses command descriptors to
>> process SCSI commands. These descriptors come with their ring
>> buffers. A guest could set the ring buffer size to an arbitrary
>> value leading to OOB access issue. Add check to avoid it.

Use CVE-2016-4952.

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

iQIcBAEBCAAGBQJXQz5SAAoJEHb/MwWLVhi2csUP/0e0mBl7EgwbVigNAvU8UUWD
MoA509vJm8qAw34v8A7tOnmDxOM89aW7z5RDPEWScw+mjHJEf39bW5Ibrvn56Gy/
IvHcS9At+stv00zqSdhAFD3sCVUqLvU3ybt+3+gu5m/4teCc+llO/72T+xLYIiwE
H8lQnZdxuSRIXeyU4gbAIlPDLLqguTjNVuma1Cu+G6S5ka4h7EUJpPz2UyJotOw/
T9B8jklo0aR3odLiYuZ97I49yky2jAqWznYUAIasriKbG0ahdBvSjEy4aa93FLSM
eWffJVwgxX5YFNMjr0M8AnMP5/1VQZFQz4mbLpAE7rb4/sry2wb7t7/6gBTFnfvD
xEruol3jgBqtIsAqfldkP2u9hPWVzJO+yIpqpUkGUWg2b00jadLIb4CJcSWSeVbo
h9YH3IgX7yCwAorT4YoQ6PEtrgiXHjief1208tVKa25gwyHERLuc1VSmsAimXedI
qdFlK7onHAgKMNoymiGtcuSWUQc06F/SJXcSCUFO3UBnS2Yki65WjS6hdWlaaLyJ
hPowD8PJDZv47h+slMPAjKUUEVHNB5e0Pbsk+ig7LMbq4k8tQsHzWH32oXznwRvL
pk6TmROU3CVQsBmdhfsMSR9pvg6GQQAA7BCoEt9jLjxS76n09JWblQP28qeZSZQ0
oshueEI3i19JNzNIIbc8
=KEBo
-----END PGP SIGNATURE-----
