X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1560" "Thursday" "2" "February" "2017" "01:11:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e20f4834ce7d414aa961627bf0a8b961@imshyb01.MITRE.ORG>" "38" "[oss-security] Re: CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd" nil nil nil "2" "2017020206:11:53" "[oss-security] Re: CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd" (number mark "U       cve-assign@m Feb  2   38/1560  " thread-indent "\"[oss-security] Re: CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd\"\n") "<alpine.LFD.2.20.1702012104590.32078@wniryva>" ("<alpine.LFD.2.20.1702012104590.32078@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5854 invoked by uid 550); 2 Feb 2017 06:12:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5824 invoked from network); 2 Feb 2017 06:12:05 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1702012104590.32078@wniryva>
Message-ID: <e20f4834ce7d414aa961627bf0a8b961@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:11:53 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: scsi: megasas: host memory leakage in megasas_handle_dcmd

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter
> emulation support is vulnerable to a memory leakage issue. It could occur
> while processing MegaRAID Firmware Interface(MFI) command in
> 'megasas_handle_dcmd' routine.
> 
> A privileged user inside guest could use this flaw to leak host memory
> resulting DoS issue.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=765a707000e838c30b18d712fe6cb3dd8e0435f3
> https://bugzilla.redhat.com/show_bug.cgi?id=1418342

Use CVE-2017-5856.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscyAAoJEHb/MwWLVhi2s5oP/jYh93aApBYo3m5bh8kmdha3
EYpRvBBDGgHo/wuvrj3M7x4kS2i5K0ZUZa4BHffNJFaERsQ7/XyEVf0U33HxnSOi
eeWIcz5xE6YY34DZYlfUylfHYlRH0fb90EIWoaBkb0uECnPhQrFdagS6+Ihl482V
xlALnTq3BrL9CLFWPadb8xbdxHuR+dXj2c6XX1jnGojcy+TCUhKY6ombMv7tOBfz
Jq83D5Y9kFHIPf+SB+FSRbVRvywwkceuZRFRIlO+bZVs9OHftr4jNwJBEieivVJg
k181Add+BzE6yFmM2mGwhX24XgyF67uD55lrajULawq5rCiqifm6532XfDozkhuq
+gWAHdz8mPJte8nYVPMXP2HdA3I9q0TW9fk/5cMQnDoga+qxcBo6sLkc/cQHAakb
6HZxXtV3syH+fJGZbuV28oWkavKsOsW5M6ydpNRV2I9zGxvodpyBppO7Qlhcm7tN
NA+Omyqi10GH5uGc/EkdNmnLtzTqbyW8J8UK5LfA52oCBHEValqzkPDTMy2VcZxH
jy8ZCh/XIAQ004ZjGV2MIsFZ5byiJuYN+06WV98IgPjdoh9zjppD0Ky90vlpHf6J
EK7iOaPUyc1TEK5Y/Sr9x/mhvRUOZq8ERBQwqnmwTeIAbL88kWJIXZ7gFk8T87ep
n+xkZYb9YnHTamyViyC2
=Q4be
-----END PGP SIGNATURE-----
