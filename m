X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1348" "Saturday" "10" "October" "2015" "11:31:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151010153131.BF9B76C003E@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: Buffer overflow in global memory affecting optipng 0.7.5" nil nil nil "10" "2015101015:31:31" "[oss-security] Re: CVE Request: Buffer overflow in global memory affecting optipng 0.7.5" (number mark "U       cve-assign@m Oct 10   34/1348  " thread-indent "\"[oss-security] Re: CVE Request: Buffer overflow in global memory affecting optipng 0.7.5\"\n") "<CACn5sdQ+sMDwN2CwzSzAXnjFvHjHOx1aAbfADeJTgrxt0W-1BQ@mail.gmail.com>" ("<CACn5sdQ+sMDwN2CwzSzAXnjFvHjHOx1aAbfADeJTgrxt0W-1BQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9493 invoked by uid 550); 10 Oct 2015 15:31:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9449 invoked from network); 10 Oct 2015 15:31:43 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQ+sMDwN2CwzSzAXnjFvHjHOx1aAbfADeJTgrxt0W-1BQ@mail.gmail.com>
Message-Id: <20151010153131.BF9B76C003E@smtpvmsrv1.mitre.org>
Date: Sat, 10 Oct 2015 11:31:31 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Buffer overflow in global memory affecting optipng 0.7.5

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a buffer overflow in global memory affecting optipng 0.7.5 using a
> gif file.

> ==11221== ERROR: AddressSanitizer: global-buffer-overflow on address
> 0x00000069541e at pc 0x46d24b bp 0x7fffffffaee0 sp 0x7fffffffaed8
> READ of size 1

Use CVE-2015-7802 for this buffer over-read issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWGS6GAAoJEL54rhJi8gl5UwoP/AgottMcRVtXVhreCFrX8rIl
Vk+bRtZpwzHbla52LucI062z54u1xCp9AoaXrwzuLO2PsUXD5OVv1TedVrILdaOb
AXHgdQuu4m0i6MeiiSdqyt/qiWiwpjmOuTIwe/8wvmv8J+J1/7io/bM5O7PhlRQY
ScjkqqFnl7pHMv2R6JwAHarL0WkJIG7LFb44PsK0HzwEz2q30mZFcJd90IX4/mZQ
te3CSCqRhfaXfaQVRaSbDpPogz8quPYVS3haAeayi9Wq9iZQggpxkD72XQ0i96jK
IXGEpIx51NztV5BMvcM1IEbwQJqd61vJqfV4H4PE60zJlhpnZWQQiAahwJKZ/hqw
tN5GVAqq/hfPviHTY4ct2EKJVUnVdRsI1YU0yMZ/Hz57mqXGT3M4dPXHEkBBZuXS
DXd5/ZWiHbiL1ziIz8xOPxTQ9kGro9+C0Vi2YTCZwxQshAdIoSf2em+QMLWenwdC
Js/DSBF8f1QNr45jhSZoZ7ogB8EgmcruNm5PQHVqm7YLqImSJHm8ZOjfEg23WJNs
KyPTEf7cSoRi/LtSVt7iLo5IiJv1jN2mqASSBND72L2Py7Ww0D6NWtOfKc0ze8er
zdrRmPgweFphgBfl+YM9eYNYFopRuhRW7y8+lXZRpQaPKXmCWjzxbyNIA7HhR7yl
nXXSajrnL8xL2gw+CPnp
=G+VU
-----END PGP SIGNATURE-----
