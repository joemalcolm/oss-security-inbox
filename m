X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1379" "Monday" "27" "April" "2015" "11:16:06" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<553DFE56.3030102@reactos.org>" "37" "[oss-security] CVE request: incomplete fix for CVE-2013-4422" nil nil nil "4" "2015042709:16:06" "[oss-security] CVE request: incomplete fix for CVE-2013-4422" (number mark "        pierre@react Apr 27   37/1379  " thread-indent "\"[oss-security] CVE request: incomplete fix for CVE-2013-4422\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11624 invoked by uid 550); 27 Apr 2015 09:16:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11606 invoked from network); 27 Apr 2015 09:16:19 -0000
Message-ID: <553DFE56.3030102@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 27 Apr 2015 11:16:06 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: incomplete fix for CVE-2013-4422
To: OSS Security List <oss-security@lists.openwall.com>, 
 cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Dear all,

It's been found that in Quassel, the CVE-2013-4422 was incorrectly
fixed and that core was still vulnerable to SQL injection on reconnection.

This has been fixed with commit:
https://github.com/quassel/quassel/commit/6605882f41331c80f7ac3a6992650a702ec71283

The incomplete bugfix had been released with Quassel 0.9.1:
http://quassel-irc.org/node/120

With my best regards,
- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVPf5WAAoJEHVFVWw9WFsLidQP+QFVN33rAzw1OC7NRF1MW1yW
uKo11iRnjt2F+WRl+0MlJR2ev5b3VirlDs19pfyD/JVJCI13FKnr8LtqKcLFvGQ/
1XjQSKOPzoGttr2wvL84QkixjnsD4S6uVRwJvFyo8GoEbs5FTIGDLS8Jn8JqZaqG
HRX9apwYiKwYzThPAMkbAS8v8VTmNhYiUfjmLBZzncJiRbJCGd3GSe6Znjsx7Zj5
/Ge85szRnDrl/QFoW1G0w+Kcs4eyTtNaWoZftoblUqSNwe2/Wn77DKePOyQzClgh
efuzFZy/8X728AsywI8O0UlxcyBTe0xjXUoxPuflUVzX18ZVrFdkWTqUisSxtl9a
tCsm6TsXH3rSc/+fkgYvGUNADnv8koc5ej0KWHF/8LAkKhE8HwaehDHp2zVdfCnu
czDy62DKJc6AW8X1aqAccXA1CpSzH/s+fBA7SZeS4w8h2cpsLaOIGHmgxvHxApzo
NApdhDiv4LjooDyiAVaptGmT4w6S4XieuCnAz58J7f/hHgx1CPPSrrzCYVAFeIAK
Seeyl45LoqyTkxK0uKs5savmhHHSNiTSo4tbpYoZ6nPwOzJorhWCxB2ozxNNu8V4
jHpgh9gOCDV/ZcMIVSzQlhVZZdpZ9hVevYIPVk/ZQSZ2ZoY0cfxcT6y9KPudaqFY
+fKtOm4enoBnQWsjvJUz
=Xd5Y
-----END PGP SIGNATURE-----
