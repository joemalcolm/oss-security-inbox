X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1820" "Tuesday" "26" "July" "2016" "21:32:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016072701:32:03" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        cve-assign@m Jul 26   44/1820  " thread-indent "\"[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<20160725133417.43b97c67@pc1>" ("<20160725133417.43b97c67@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13752 invoked by uid 550); 27 Jul 2016 01:32:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13711 invoked from network); 27 Jul 2016 01:32:15 -0000
In-Reply-To: <20160725133417.43b97c67@pc1>
Message-Id: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 26 Jul 2016 21:32:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blog.fuzzing-project.org/50-Use-after-free-in-my_login-function-of-DBDmysql-Perl-module.html
> 
> DBD::mysql versions 4.033 and earlier have a use after free bug in the
> my_login() function. DBD::mysql is a Perl module providing bindings to
> the mysql database. The issue was fixed in version 4.034.
> 
> https://github.com/perl5-dbi/DBD-mysql/pull/45

>> When my_login fails the code tries to call mysql_errno on the mysql
>> connection. However my_login has already free'd that connection
>> variable, therefore causing a use-after-free error.
>> 
>> This patch changes that so that the free happens after the call to the
>> error functions.
>> 
>> https://github.com/perl5-dbi/DBD-mysql/commit/cf0aa7751f6ef8445e9310a64b14dc81460ca156

Use CVE-2015-8949.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmA3NAAoJEHb/MwWLVhi2T50P/2JWP75tgnyR/hKJzXM3Tunj
W2mE0M2ELKLJj3e+CDn97LgOl2jsv2CcpIo3VGuTYMeHZ/99wP2HRp7da0WSYMBI
CILmexHgb4bLWCbUg5H1P+Af2CCHGWcGz9ZlW5epwBD/bNaWw8ESDI46ua9j/QYj
9qpXfVZdzKGlfnO891gnwwmjzWQXPOw0YGCNs9xCPD5FNcM6S+pnUEPc8GU6G1QW
EdhzJnoCFCBAZRSrgHsU6h5nSpoLALMm/0f/h5Z3JWLUhD+ZRUeB3KVE0h5k4XTI
a2JZT7WYJRA7RBiazy+NSR6eh0zwDz1cBeHrZwuWMZQIP3epyL5VkGBxNZAwjycC
HEGqVOO3LLiWbjStDE0s8vad6b1XUZmQgOTr/gWAnb1R+PJm7rNSzCW2YL3t1jNy
V0xKpt/k2XIcrblTs3yaVw3Z5vUqJ87PjstHyA0aKzO/ID3lhT6DkQiuX4alOp9s
TQRbdX4PBjyzYSl15lNYAEosdZJeL+LTSYVABeD/Psppl8lcOzjDGEshUALEDLYn
LZMHpRxB2L7as+foW4xS9k6ueAfpwZgO/wORVZOHPtZaIDNMB/E+ZUcP3ubMgoro
SClTjv8oW6RWfcaVTjet/+eu0UfojDo17OXlpgoltWfXLCOf+b1hu8K5qsHYb4/s
wmAXCt8jSR66BgFTq8ft
=fO5Z
-----END PGP SIGNATURE-----
