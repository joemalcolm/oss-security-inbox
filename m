X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1475" "Saturday" "12" "December" "2015" "22:15:25" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151213031525.DA91C42E1B8@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: Remote DoS in Quassel" nil nil nil "12" "2015121303:15:25" "[oss-security] Re: CVE request: Remote DoS in Quassel" (number mark "U       cve-assign@m Dec 12   39/1475  " thread-indent "\"[oss-security] Re: CVE request: Remote DoS in Quassel\"\n") "<566BEEFE.7050302@reactos.org>" ("<566BEEFE.7050302@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30518 invoked by uid 550); 13 Dec 2015 03:15:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30500 invoked from network); 13 Dec 2015 03:15:38 -0000
From: cve-assign@mitre.org
To: pierre@reactos.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <566BEEFE.7050302@reactos.org>
Message-Id: <20151213031525.DA91C42E1B8@smtpvbsrv1.mitre.org>
Date: Sat, 12 Dec 2015 22:15:25 -0500 (EST)
Subject: [oss-security] Re: CVE request: Remote DoS in Quassel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Any client sending the command "/op *" in a query will cause the Quassel
> core to crash.
> 
> https://github.com/quassel/quassel/commit/b8edbda019eeb99da8663193e224efc9d1265dc7

>> src/core/coreuserinputhandler.cpp
>> 
>> CoreUserInputHandler::doMode
>> 
>> - if (nicks == "*") { // All users in channel
>> + if (nicks == "*" && bufferInfo.type() == BufferInfo::ChannelBuffer) { // All users in channel

Use CVE-2015-8547.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbOHTAAoJEL54rhJi8gl5KiYP/0eSHJkLoJoBfBr/ZgnkNfoz
1Uuz+n9AKamkpQvS780X4eABVjsByf0hhz4G/QnZb5u4cQzlCi403q3kBROb/mbz
8hTWYSJKSIwxNT501Go6CPFbL3aP0oIOl1PF6BiV8BCRN7MVTPlkoYH4WfbnhZP9
0mknvcmKFF9XvRuIHfrVb/QhDMTvXo3xeyXs5pDtOqKLulScS5xktpM9y4YixtP4
OimugFmh7/IzYjKOh7D9Z3qnMmzGyteo6aA1Fe+qkbxDFEDVI9cE4qHgM0bA0xlM
jcblzgfkhgXwh5jeqSikeW3xiTs5ixRvDDKtuo6QIknCR6w+EE/3IGhkmfjIWcGP
jRfjGLTgKmLZVpyeTRo9Bo8QhP6n7y/O4iWmxMB9VvBzZUTxmjGb22uM0EPe8IfL
efwa7MiY8ccExmgbAh7rqpWEq5O0rDM8EC3YWOXyz54wZ6Szw3TMdk5Ql7P7rtG0
d70b9iq9TdndyzSCz//ol7d9YPvm3zU+wMLYQuSoLtzCHb74qlp9aJWh/+EK0qKr
w0eNSBfgzp/UfBFN+tmrySu0uzXio9hyOtmIdZTStJ6u7nPry0ZZHFYlHkFDqPZD
IhZYQaJbXwBQ6o+rcdU/dt6y8pL6k2xFjimwRtE+regiCXLI08XpetqO25INRyN2
QAR9gUDfDaKbhCtVBLld
=XTOC
-----END PGP SIGNATURE-----
