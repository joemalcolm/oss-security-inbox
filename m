X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1370" "Wednesday" "11" "May" "2016" "11:43:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160511154358.8C88E3AE008@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4" nil nil nil "5" "2016051115:43:58" "[oss-security] Re: CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4" (number mark "U       cve-assign@m May 11   33/1370  " thread-indent "\"[oss-security] Re: CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4\"\n") "<52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>" ("<52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11547 invoked by uid 550); 11 May 2016 15:44:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11525 invoked from network); 11 May 2016 15:44:10 -0000
From: cve-assign@mitre.org
To: astieger@suse.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <52abc457-86a6-6349-aeca-0b0d591c3b3d@suse.com>
Message-Id: <20160511154358.8C88E3AE008@smtpvbsrv1.mitre.org>
Date: Wed, 11 May 2016 11:43:58 -0400 (EDT)
Subject: [oss-security] Re: CVE request: libksba out-of-bouds read remote DOS issue fixed in 1.3.4

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libksba.git;a=commit;h=a7eed17a0b2a1c09ef986f3b4b323cd31cea2b64

> The returned length of the object from _ksba_ber_parse_tl (ti.length)
> was not always checked against the actual buffer length, thus leading
> to a read access after the end of the buffer

Use CVE-2016-4579.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXM1LfAAoJEHb/MwWLVhi2N10P/0+rxmJVD8dNcnKtGuVt4lUc
R3TTBT9/FzmRzBOqe2sn/2GCgiZVuV1tBKvem16qrQI9wM8tndw8q1Osi+sYcN9q
bZetnnk0Upi0ix/Zbyx01D8ENCoUTXShhIf5rU4tSZKSInD79KxyzqKWbxCG5Ecd
5ncqcTApwWdSpmwDJRbZDZ4K38nT8QCAp6DrLUKaMmnOtuYsgdsx/Yc2bZ1gWdIQ
Jgk7dTrIchh7d88igd6nWRewwmh2WX8dh+iSegs9x6xrEJallqCdqBzWs7kU3edJ
04jNhqaJIMZcHJrxLV6ozyEA9PdWyMc3+WDaOEQ+T2aPfrnm3+VQl6xRf3vNjins
eNmYLneyYPAGjJvRL+mzchcb5SOLspNO+GUcN/814RWM90st3U6OTVxl8A6LmAtF
4ARmrKWClz1vBYAZrXDFIZaECWR2GnkAOO0pEPtn1/WCu/Nq+/h0KAFxH9LQObtG
EtrbOs04/66Ny2TR0yw2TWnlqJoI5vzXuSE3ofpOxDX6ComyCypURsqIzO3xP/xg
8WxCuMDaD5ZRqSPavsKXnvPrYvCTr2P+tysqfwc50wiNKBmE7cj3ZmRB3jWQE79w
4T8k6H7h+8SYwHkmfhV0m8yA8slKYXfOK6+TaVf6ZmCIySpb7WcdHa7Xk2mz2ric
0myN/q9o1w35t7c230xx
=UcFl
-----END PGP SIGNATURE-----
