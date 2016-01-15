X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1823" "Friday" "15" "January" "2016" "12:19:28" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160115171928.D50296C01EB@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: Security issues in GOsa" "^Cc:" nil nil "1" "2016011517:19:28" "[oss-security] Re: Security issues in GOsa" (number mark "        cve-assign@m Jan 15   46/1823  " thread-indent "\"[oss-security] Re: Security issues in GOsa\"\n") "<20160115102631.Horde.lTAFZQ18vwx6AyvDNnMXTR9@mail.das-netzwerkteam.de>" ("<20160115102631.Horde.lTAFZQ18vwx6AyvDNnMXTR9@mail.das-netzwerkteam.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3315 invoked by uid 550); 15 Jan 2016 17:19:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3273 invoked from network); 15 Jan 2016 17:19:40 -0000
In-Reply-To: <20160115102631.Horde.lTAFZQ18vwx6AyvDNnMXTR9@mail.das-netzwerkteam.de>
Message-Id: <20160115171928.D50296C01EB@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 15 Jan 2016 12:19:28 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Security issues in GOsa
To: mike.gabriel@das-netzwerkteam.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Possibility of code injection when setting passwords for Samba.
> https://github.com/gosa-project/gosa-core/commit/a67a047cba2cdae8bccb0f0e2bc6d3eb45cfcbc8

>> command line parameter will be passed base64 encoded to avoid 
>> complex escaping sequences

Use CVE-2015-8771.


> XSS vulnerability during session log on.
> https://github.com/gosa-project/gosa-core/commit/e35b990464a2c2cf64d6833a217ed944876e7732

>> escape html entities to fix xss at the login screen
>> 
>> - $smarty->assign ('username', $username);
>> + $smarty->assign ('username', set_post($username));

Use CVE-2014-9760. The MITRE CVE team has not done any independent
investigation of whether this crosses a privilege boundary. (For some
products, a login-screen attack is always a self-XSS attack.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmSiiAAoJEL54rhJi8gl50fsQAM9lhwPuciW828UBaqzxUUlj
bhxKnz7G9vhu6K9uzJBs8JmYK9r7q8sUWmCHNdpM3l2Bz3Rg804JZGrdeE/zi3yV
n9XStP4rBQvS2B6TRpfr4o5KIDg1g6eEfV96dNEZbq99h4mc23RlrtKCJ0w8/RWj
1ZKrDC2HJKJF4IIfZoobw4CfMbJn6iky/wrIRoozPkx984DIDM5w/13UWGKrChuS
mop4sGxJcDHDmVHKRCCDsIFp7BVPy2tFhtNi2xx6Eni2fKeiJKDbs+u0I/o6rV+P
dGIZ1VHLbIn0JOl9Pkm5fOxcqaja7mvuYfikMeG6cmKqIe+aWrHqYnczdeWVP4i/
17mIWDhih03S/z1Irw3xjaXFRTvDZONBp31bfoiNoh8NoCE4YDL3WkBHSG4mOR+1
cuWuOuYJs/6HNYonPOedamTGYLIG7C2jCcMSVAlzg81nU6oV8coHikLcRHjCeI/L
FfpvJ6Yb+XWwMg/DjJqAc5hkJQFicoM0AFIiCOYROovu8B3EYXXiBbTxOJRCb4V7
POIi4lwRaFTLs3uPkzIg9LX5K7JumyvB+uK2yrz4Hd+jkqUs1c11Fw12u6FYTaMT
Sq1NULUw19+RmWkx5GWs3JNM7O5wiyj8PMsebtqLsrmcDJfSzziCJzfDKG6c8emn
MenkHGUnsuUegd8UFil5
=mw6w
-----END PGP SIGNATURE-----
