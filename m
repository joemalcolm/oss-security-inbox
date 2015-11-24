X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2405" "Tuesday" "24" "November" "2015" "12:16:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151124171655.1DABC6C002B@smtpvmsrv1.mitre.org>" "54" "[oss-security] Re: CVE Request: IPTables-Parse: Use of predictable names for temporary files" nil nil nil "11" "2015112417:16:55" "[oss-security] Re: CVE Request: IPTables-Parse: Use of predictable names for temporary files" (number mark "U       cve-assign@m Nov 24   54/2405  " thread-indent "\"[oss-security] Re: CVE Request: IPTables-Parse: Use of predictable names for temporary files\"\n") "<20151124115711.GA22119@eldamar.local>" ("<20151124115711.GA22119@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18278 invoked by uid 550); 24 Nov 2015 17:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18257 invoked from network); 24 Nov 2015 17:17:07 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20151124115711.GA22119@eldamar.local>
Message-Id: <20151124171655.1DABC6C002B@smtpvmsrv1.mitre.org>
Date: Tue, 24 Nov 2015 12:16:55 -0500 (EST)
Subject: [oss-security] Re: CVE Request: IPTables-Parse: Use of predictable names for temporary files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/mtrmac/IPTables-Parse/commit/b400b976d81140f6971132e94eb7657b5b0a2b87
> https://metacpan.org/source/MRASH/IPTables-Parse-1.6/Changes

> - _iptout => $args{'iptout'} || '/tmp/ipt.out' . $$,
> - _ipterr => $args{'ipterr'} || '/tmp/ipt.err' . $$,
> + _iptout => $args{'iptout'} || mktemp('/tmp/ipt.out.XXXXXX'),
> + _ipterr => $args{'ipterr'} || mktemp('/tmp/ipt.err.XXXXXX'),

Use CVE-2015-8326 for the vulnerability with the above fix.


> If a user manually overrides the temporary file
> locations with the 'iptout' and 'ipterr' hash keys, it is recommended to
> not use predictable names either.

> - 'iptout' => '/tmp/iptables.out',
> - 'ipterr' => '/tmp/iptables.err',

The deletion of the /tmp/iptables.out and /tmp/iptables.err lines is a
documentation change. In some cases, there can be a CVE ID when
documentation indicates an unsafe way to use a product, and a CVE ID
for documentation would typically be separate from a CVE ID for code.
Here, however, there is no CVE ID for the documentation change. We
feel that a reader's most likely interpretation of those lines was
simply that configuration was possible, not that it was a good
configuration for a multi-user system. In general, it seems that a CVE
ID for documentation would be more useful if a documented usage
example were dangerous in an unexpected or subtle way.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWVJsVAAoJEL54rhJi8gl5v4EQAMsL6bSZx9YHmeP1V/Mg1+Bl
+/4JD0hoPGHzpnCWBge9It2yjz0Qyg9VdqLHPQhyuZbO84l56bq4KrznhS9BjvwS
bRi7toqCZ5VUqyCKDR67KU23enz2peNRuUkcTBHcen2YIsbLdUhpbkLgfhxgFWDV
zAeTjpf7QEEiiG/kKchq0kOp5/zC0INy7AuhOOaxrv+qfrqFZhcpA4Jx+aiMHbFh
/I+QkEDoarnV9lLQh0/3LePvfZ4RZm4TrqAT/NMlhJrM762iQ6qMsasgnR3Q3Yf6
y61uYuTZZfRcRPsykQQTNOV8VQYSsR1gRoJqalD2S0pMehQEOcckstUVxcfAqjQc
lXn4lLd7y7OWd4ZYDfHl4UDXXvDt8urxt0OCh1J/skdsQwK6QvrUEJLiqD6++iVC
DQ4j2zyGIAS+Aqtjk0xSZCPZiSdNkF8GtouQVWIrv6hOJiuWG2LiRSoic8sdFeK3
5Kta/FF/bp3YCPHlTnBHxLEzs4UgcmO/bG42v4cySBrmaeqA4hyJUWsKGxFPfPab
8q9eAj+bWJA5fPw/YQ4mpwSkPbs8ut2DoZ1z3gXQBwlTFayJxx36sqh8NH0kZVts
GdL46xuiHlpEnAzFOhI5nDq6uqHPU4Swi+Jj7QWrwHpD2Vb/5qxXccKEH1c5GVwC
yWF6xKDli3IDwDGl+pbr
=Nw8v
-----END PGP SIGNATURE-----
