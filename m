X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1896" "Thursday" "24" "December" "2015" "11:32:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151224163230.DA9476C00A6@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: CVE request Qemu: acpi: heap based buffer overrun during VM migration" nil nil nil "12" "2015122416:32:30" "[oss-security] Re: CVE request Qemu: acpi: heap based buffer overrun during VM migration" (number mark "U       cve-assign@m Dec 24   49/1896  " thread-indent "\"[oss-security] Re: CVE request Qemu: acpi: heap based buffer overrun during VM migration\"\n") "<alpine.LFD.2.20.1512241145360.17815@wniryva>" ("<alpine.LFD.2.20.1512241145360.17815@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27819 invoked by uid 550); 24 Dec 2015 16:32:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27801 invoked from network); 24 Dec 2015 16:32:43 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.LFD.2.20.1512241145360.17815@wniryva>
Message-Id: <20151224163230.DA9476C00A6@smtpvmsrv1.mitre.org>
Date: Thu, 24 Dec 2015 11:32:30 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: acpi: heap based buffer overrun during VM migration

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Q35 chipset based pc system emulator is
> vulnerable to a heap based buffer overflow. It occurs during VM guest
> migration, as more(16 bytes) data is moved into allocated(8 bytes) memory
> area.
> 
> A privileged guest user could use this issue to corrupt the VM guest image,
> potentially leading to a DoS. This issue affects q35 machine types.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=d9a3b33d2c9f996537b7f1d0246dee2d0120cefb
> https://bugzilla.redhat.com/show_bug.cgi?id=1283722

>> acpi: fix buffer overrun on migration
>> 
>> ich calls acpi_gpe_init with length ICH9_PMIO_GPE0_LEN so
>> ICH9_PMIO_GPE0_LEN/2 bytes are allocated, but then the full
>> ICH9_PMIO_GPE0_LEN bytes are migrated.
>> 
>> As a quick work-around, allocate twice the memory.

>> hw/acpi/core.c
>> acpi_gpe_init

Use CVE-2015-8666.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWfB2rAAoJEL54rhJi8gl5/J0P/3CqoLcu92grUe81eRh8zES6
tRXOHEjXrnfA79WBMkhi+7c125T94okEN5BbMuIt0aa4hfKNXs4PLXxJs0eG8Wi9
WvknYU1WY3oGRWqqkngyo53wXt82gW5vMK5hw2EuDFUYKFKqWfEJynsZLfjVwxUS
5MNSXN5hJB3i20I6PxCi3doK5CT52kIuAdZOXpLupWo2MJn3SlXXpFQqFUtjs8jg
Nxrvtt1M2WQdBUF+2XJ/pGrLqkIs7Id8DUIztuGr4KcsW1/m/8T5GyqeVHwGOx43
nOz9TqDJJAWFExuDPPrUVbqCTBfv8sDlBbnm2vEE0y/Gc7/MRKthGDHVsJ/cz0rQ
uTpmjLUkH4HXO/xwQckIdJFabHQAqspchW8zNFPbD0Ac9QKRy8P7YrnnGlLDttGN
ZcDvWsptm+vCpoiRS735k5nGz+5t/7yAXbyi88QZGnmij9zCm6UkiqKNMvORRqF0
Pe/3CLjLM3bArI+XqSSBIU6B+EJM8yF+ojxyLyJnt2CJMt6qU1LIAKIVgnowqYNo
d+Qc7w6p1CDwyn11nnX1k0YyQJCYpi5rpFGaAQxDN/a8AMc90O01rUeGPYqolpiN
A8Mk9cxe8ZFVo398vNxwtNYZnCYpZ9//1vvwP+ic70yHJlgQQ71in1rZpF1G6FAU
PmbQEbUM+SmgETo5TDn7
=2knV
-----END PGP SIGNATURE-----
