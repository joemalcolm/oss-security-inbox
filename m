X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1864" "Tuesday" "17" "November" "2015" "07:20:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151117122056.7CAD233200E@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: Several reads out-of-bound in mplayer 1.1" "^Cc:" nil nil "11" "2015111712:20:56" "[oss-security] Re: Several reads out-of-bound in mplayer 1.1" (number mark "        cve-assign@m Nov 17   43/1864  " thread-indent "\"[oss-security] Re: Several reads out-of-bound in mplayer 1.1\"\n") "<CACn5sdSp7D-1_qhZzB2Z5D4esN4K4aczp5cc+Vzm4J+ySDReyw@mail.gmail.com>" ("<CACn5sdSp7D-1_qhZzB2Z5D4esN4K4aczp5cc+Vzm4J+ySDReyw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18155 invoked by uid 550); 17 Nov 2015 12:21:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18080 invoked from network); 17 Nov 2015 12:21:08 -0000
In-Reply-To: <CACn5sdSp7D-1_qhZzB2Z5D4esN4K4aczp5cc+Vzm4J+ySDReyw@mail.gmail.com>
Message-Id: <20151117122056.7CAD233200E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 17 Nov 2015 07:20:56 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Several reads out-of-bound in mplayer 1.1
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Some reads out-of-bound in functions asf_mmst_streaming_start and
> http_build_request are present in Mplayer 1.1-4.8

We think this may be similar to the
http://www.openwall.com/lists/oss-security/2015/11/03/11 case in which
the product isn't a library, and typically doesn't need to remain
running after bad input is encountered. A possible exception to the
latter is "mplayer -slave" but, in that situation, it appears that an
attack would not cross privilege boundaries. If the attacker is able
to send slave commands, and wants to kill the mplayer process, they
can send a "quit" command (or, with slightly more complexity, a "run"
command).

> Upstream is notified.

A CVE ID may be available if the upstream response indicates that the
out-of-bounds reads allow the attacker to change the flow of control.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWSxpNAAoJEL54rhJi8gl5/h0P/1RKT9OLw30EIxEoZLbZVC/H
3hKxxSvJ8mCwZ0X0Rb+iSZxB7etSLTXArIxv399HqfHAitBf0EktszI7KZ9A9U8w
s3aVMzU+KsyFjAaOyOTNyBcE5BWnCA170ZZzuOEasZz5r+lQCFsURyQOCFzs3LZo
u2d3s0cYC+uFf5d7SciXlk0rp0FgaC48INTxieNHLCXPzIrnyh/pcCYuDIFRop19
ohtRmPrkRnw68it8tZq43u2psN/0ZPaZqZ+nS2h0j8634QPCwXOsQn4CQ1ikpxoX
z+F5817qR4+Gt9B8r0+9uHs4oASsOsNDRIRbGthu0OdIBmtEsFAdt4vqykbyekMW
q15agE9x5jETQspo45vdFONiIlvddRpSbTp8+f7Br5dtIAVYSulF2aoLMSkr8OEF
9IO9JfAvhlEkqtbiMUnWZwTdazvIoK3dvtDpxIH8PGFQrW5gkTGNpmhOJEG+UQsb
LSzByEYT8GyVskJ41CQVZ5yLW8GCrMWlsI/w3WONm8giUkx7dIDcKxfNwrWyNBrM
uogeQ+vTxIF0fLLz85aDsV9L1QDxFO6nD8Die52WTHeKsm7DiWVll5bgMBDV2km8
WY9gXC3Yio+cNBBW4LQy187mtAjWlMJHg2PnvxkEICpb3kUwJyRQtL7mS19MnXE4
D1v4ARlWY+dZ9wkL5/uP
=xO57
-----END PGP SIGNATURE-----
