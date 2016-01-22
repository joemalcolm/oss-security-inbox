X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Friday" "22" "January" "2016" "09:33:19" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160122143319.A768273C204@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" "^Cc:" nil nil "1" "2016012214:33:19" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" (number mark "        cve-assign@m Jan 22   34/1202  " thread-indent "\"[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11\"\n") "<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1632 invoked by uid 550); 22 Jan 2016 14:33:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1599 invoked from network); 22 Jan 2016 14:33:31 -0000
In-Reply-To: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
Message-Id: <20160122143319.A768273C204@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 22 Jan 2016 09:33:19 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> in the parsing of cpio files
> 
> AddressSanitizer: heap-buffer-overflow
> WRITE of size 2
> 
> util.c:1392 cpio_safer_name_suffix

Use CVE-2016-2037.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWoj0bAAoJEL54rhJi8gl5AHUP/RkKp+uneF867005iGi48jaF
VpkwLC6mGHB/xFRvMCi1JQIHbtWY2sjaCxhNeBtLrQ2T6rp+ob+L2OORnbT3lyJe
5qPSgp5mxFhlyWOJESoT8Hvla3AYpbkzb2vN1IrHvFgyFstRUjwvTdFv/Pup7En7
B8jbbLNUsgFlAO7orTd9jLi4CrZTVyy1qOb9E7cs7hwPyyvWRaxQWOmR27gjr9Vx
1MWh5L7v8VFvE4zP9AvVH+o3jId3LKoQyiwPc9+mHJcEDk6a1O+me/bXaDufcMN1
k5orCuAq1GJ71MAbCFYbO7A/xZic8gUZ6nOzeLcSAWZALP9XJrX93ZF74ldcl165
MrX6js5WXAE81jXCCWDlBj+ee7A5OazgCRTrSxSIjYfQU94oSKBch56fXwC1yS+M
htjPXgs2ILv/HmFDWgxZpipdFuFSBqboHc8kjq0dA+6a3C7iRqsXzLHU9MGJsGiH
lfBfDYMcBbb7rE9ryBAomV7jq9BD6xoaKTYXIjQ4ynrJxOY1jfn0mITPltikEF8/
iOkgg3s9oZbY5DPwVfae7n6gPvpcQPJl9guEpGdmRrgW85NNUf6goDrgTIokwdoZ
HCnTSwjv8i1Wg3tqvt6kvy0ssWAe0GwGCbgJyBmp/sq/LXb2TZ/XTG/a94scX40D
p67V2HPHK+2GL8/v32B/
=Vsja
-----END PGP SIGNATURE-----
