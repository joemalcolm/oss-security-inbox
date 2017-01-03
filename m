X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1919" "Tuesday" "3" "January" "2017" "10:39:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4b60f1b1e20142f484425629f4fef86b@imshyb02.MITRE.ORG>" "43" "[oss-security] Re: CVE Request: pcsc-lite use-after-free and double-free" nil nil nil "1" "2017010315:39:40" "[oss-security] Re: CVE Request: pcsc-lite use-after-free and double-free" (number mark "U       cve-assign@m Jan  3   43/1919  " thread-indent "\"[oss-security] Re: CVE Request: pcsc-lite use-after-free and double-free\"\n") "<20170103120642.GA7083@al>" ("<20170103120642.GA7083@al>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20325 invoked by uid 550); 3 Jan 2017 15:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20292 invoked from network); 3 Jan 2017 15:39:54 -0000
From: <cve-assign@mitre.org>
To: <peter@lekensteyn.nl>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<ludovic.rousseau@free.fr>
In-Reply-To: <20170103120642.GA7083@al>
Message-ID: <4b60f1b1e20142f484425629f4fef86b@imshyb02.MITRE.ORG>
Date: Tue, 3 Jan 2017 10:39:40 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: pcsc-lite use-after-free and double-free

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The SCardReleaseContext function normally releases resources associated with the
> given handle (including "cardsList") and clients should cease using this handle.
> A malicious client can however make the daemon invoke SCardReleaseContext and
> continue issuing other commands that use "cardsList", resulting in a
> use-after-free.  When SCardReleaseContext is invoked multiple times, it
> additionally results in a double-free of "cardsList".
> 
> http://lists.alioth.debian.org/pipermail/pcsclite-muscle/Week-of-Mon-20161226/000779.html
> https://anonscm.debian.org/cgit/pcsclite/PCSC.git/commit/?id=697fe05967af7ea215bcd5d5774be587780c9e22

>> 2016-12-30
>> To avoid this problem, destroy the list only when the client connection is terminated.

Use CVE-2016-10109.

(The double-free is not sufficiently independent of the use-after-free to
require two CVE IDs.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYa8TbAAoJEHb/MwWLVhi2T6gP/jW4DFCfQJPZLhy5ydgqwOqC
XdrMCVUAVJ+sil8+Tx+v5ylnEDg9WitiUpbuRLILSD/h5XD0I9hYbGjeuNR1DGk/
ZhHRyzLMK+njgmemtMCLS+mAjnu3WVvXs97hL1V4UE/9IVw2jW5fms3zL/DoEBHm
XBXu0rnTRs/0LCM+uIwh7xTOXnnfATROi/eDZCsM32ufSFVfrqeha4uH42MIJa7H
umBp7Gp4iRRMUOdH9mn7AvRni8E9U1JqMpnriz/BZkY9LBy7iCuIqlIV+s4Pnfz4
bFv4QkGrI0MIa//Qe2hkXQ4qkK6kD3PdAZRp75t+o7QJcTiwZT3MdDhRsReuu+bu
qqf2QHa/cnUd7jutDo+CB7rZbdZCt/zi2Vhubo4DwWoOA0InGzXH3UpYs0nd2EBL
cyVclqmTelo3ylMZUwJvZ5WSSjI2dORoe5f4WmvC6AC5Hdgoj8pPpY5E+lXQDTLN
hB2thbSgeMqhCchdVVn1ydqC4YuyrHfaVY9pA2lfJ4NwWy0/ggVKIGZ/qm1A9GCH
IBXolytm4Va9GZ1hi0/R06lpwwsqJrPQpmDjgt7FIsEyleDAA1kf0Y+wcQGszTg6
5CVxbci9e83OjFxdvZv+ITliarobUOHvnu/7AX04ZbIuiSoi7ce2HR6MwmhEy+YI
GWjm/aDGodtMWYtZzI+Q
=9VvD
-----END PGP SIGNATURE-----
