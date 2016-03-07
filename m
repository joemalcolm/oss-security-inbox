X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1581" "Sunday" "6" "March" "2016" "22:02:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160307030233.A4BCC52E014@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption" nil nil nil "3" "2016030703:02:33" "[oss-security] Re: CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption" (number mark "U       cve-assign@m Mar  6   38/1581  " thread-indent "\"[oss-security] Re: CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption\"\n") "<alpine.LFD.2.20.1603041532360.19054@wniryva>" ("<alpine.LFD.2.20.1603041532360.19054@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15545 invoked by uid 550); 7 Mar 2016 03:02:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15524 invoked from network); 7 Mar 2016 03:02:45 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.LFD.2.20.1603041532360.19054@wniryva>
Message-Id: <20160307030233.A4BCC52E014@smtpvbsrv1.mitre.org>
Date: Sun,  6 Mar 2016 22:02:33 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Pseudo Random Number Generator(PRNG) back-end
> support is vulnerable to an arbitrary stack based allocation and memory
> corruption via random bytes issue. It could occur when a guest requests for
> entropy for random number generation.
> 
> A user/process inside guest could use this flaw to crash the Qemu process
> resulting in DoS.
> 
> http://git.qemu.org/?p=qemu.git;a=commit;h=60253ed1e6ec6d8e5ef2efe7bf755f475dce9956
> https://bugzilla.redhat.com/show_bug.cgi?id=1314676

Use CVE-2016-2858.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW3O35AAoJEL54rhJi8gl5acsQAMefBsEuYvfXohM+VMnzH9/9
qzD/KVyihYS9iqwifB/oETNIBWV/A4ltyC4nMBy//ImoJCEzZJIvr7hB17vQj19e
V2DuIu2/nV9UZssqcZnZegWaaVE65/gNcT7h7rHu7EUXWChgB0ZowLTRUlq37QWs
Sx5lAc131dWrxeioz9QY7e3DFYCquNGHvE/sYmNgtIZcr7mROkTeHk83p33DVgbG
dqB6Hu5wyXoiD8+jBNrwgaSYwhg7C6/qNEisWyZmLODSN/8J8+di+9zcgT8KFpX8
TEvj/NvansVZcR3bJfm6QYeFiDi/r7lSPJNO3siPO6HgD6yR/qYhIDILqb2o7/MI
lmd5toI6FGC4ZZgumXsIrTjkvDt1yHrgmJZFYQs2dMVdNdsWMB9jXNmC9wqV2Oq7
1gltAcv1WxlgC7OqZYwFUbux3FvFWKuJXwtLP9OnkA/ki8r7SQAE5en7to8y5SLZ
dMA6CsymQi3Sz4y6M8k0bckKBDmPbFHOQfrSI6MWbgWYv0ye5+9d/3dRzVUZivNO
pLV8VAUtIJ5oKFR5hGKrRLCqKBpRHnns26/M8eqw31vURCtTJ8NogVspYWW44xPL
hdeUJg/OBwvHi1XxKzLbMW6+PFdq4iXtYlagu/oaAGG3uFwJXp0S1vobpXtbhKBu
MiU4kIAeWzk3hS1cb2GM
=qXaI
-----END PGP SIGNATURE-----
