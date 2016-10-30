X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1581" "Sunday" "30" "October" "2016" "15:45:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<91dfb06a63e541769819a7edbbee1429@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage in v9fs_write" nil nil nil "10" "2016103019:45:30" "[oss-security] Re: CVE request Qemu: 9pfs: memory leakage in v9fs_write" (number mark "U       cve-assign@m Oct 30   39/1581  " thread-indent "\"[oss-security] Re: CVE request Qemu: 9pfs: memory leakage in v9fs_write\"\n") "<alpine.LFD.2.20.1610281523450.17516@wniryva>" ("<alpine.LFD.2.20.1610281523450.17516@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25845 invoked by uid 550); 30 Oct 2016 19:45:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25786 invoked from network); 30 Oct 2016 19:45:42 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1610281523450.17516@wniryva>
Message-ID: <91dfb06a63e541769819a7edbbee1429@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:45:30 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: 9pfs: memory leakage in v9fs_write

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to a memory leakage issue. It could
> occur when calling v9fs_write call.
> 
> A privileged user inside guest could use this flaw to leak the host memory
> bytes resulting in DoS for other services.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02623.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=fdfcc9aeea1492f4b819a24c94dfb678145b1bf9

>> doesn't free an IO vector

Use CVE-2016-9106.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkuQAAoJEHb/MwWLVhi2eq8P/2iZ0CeEPUH8YU5Mz7dSLayz
VLPYWPJWgYviJbAvD7twWyAf2qYYpamLMGY0SiRSaV30xcB+yPbyXKZVwKoB8tt5
DF4k61Rdzfnshrfo3/flhREW7qZSbKo/NA1HZX4PWwAk3PnD0wDV8AcambyzyB/E
Jjwfw3fiaoZMtOZlsnsohvMpoI/PvwQYg8RUrD7zB6mit2D/jtdfXG6vuY4b0c22
1UCitnP2Wsqb2Ex+52jwisTkeLxut6ZYyV77N1BX1WSPeDrESV+9E4mm6rFVYTgY
1COL7WB1H7ZCoxgQ3G4oXN9YtOKzIDS8L1Zdn1XfKhA68FFtPQ9aP4bSDPlzeXDs
Ort3rUCS2Fnk5y9WNR40l7r5E1D1ccr/bFS6+/N8dvBlNNGlJkh3bvaaUJgwmzUw
RL2w7uPLQi+Qpi3AHxxKtY09cRrIa1wfHVVwnJ+x+rGOpFoIQRRK3sAosv3r2AJl
eakEZxN2UJPmbTckOhOoyJ5ISNFQSytwzTG8a6DzO6+KJgqHBsmj9kTxkIHznKKi
arlpGH+E6SzwOpTCst6257Ht3gCs0h1SPL1XPcL6fpmoy6ilkedce5rrSYKD+DBq
f+flLN8q/89q/doPU+lmORuUSzwwzLfKTnJRtX9h2n0jasubBWnVAGyTQqHAmLKE
/FY1TuwKHWAohSxEpMG6
=GBCx
-----END PGP SIGNATURE-----
