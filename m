X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2777" "Monday" "21" "December" "2015" "21:31:18" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151222023118.E01086C412F@smtpvmsrv1.mitre.org>" "69" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" "^Cc:" nil nil "12" "2015122202:31:18" "[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" (number mark "        cve-assign@m Dec 21   69/2777  " thread-indent "\"[oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?\"\n") "<CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>" ("<CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25749 invoked by uid 550); 22 Dec 2015 02:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25731 invoked from network); 22 Dec 2015 02:31:30 -0000
In-Reply-To: <CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>
Message-Id: <20151222023118.E01086C412F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 21 Dec 2015 21:31:18 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.gentoo.org/show_bug.cgi?id=569010

> http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3557

>> So in codeconv.c there is a function for japanese character set
>> conversion called conv_jistoeuc(). There is no bounds checking on the
>> output buffer, which is created on the stack with alloca().

>> http://git.claws-mail.org/?p=claws.git;a=commit;h=d390fa07f5548f3173dd9cc13b233db5ce934c82
>>
>> conv_jistoeuc
>> conv_euctojis
>> conv_sjistoeuc

The original discoverer found a conv_jistoeuc issue, and then the
vendor apparently also found conv_euctojis and conv_sjistoeuc issues.
However, we don't see an indication that these issues arose in
independent ways. (Also, there is no vendor statement that
conv_euctojis or conv_sjistoeuc is exploitable.) It seems best to
assign CVE-2015-8614 to the combination of the conv_jistoeuc,
conv_euctojis, and conv_sjistoeuc issues.


> This version also fixes two oob errors I reported, I don't think
> they're security risks

There are currently no CVE IDs for these:

  http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3559

  We think this might mean that there is a bug in code supporting
  the UI, triggerable with UI interaction and not triggerable with
  any untrusted input.


  http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3563

  There isn't a statement of a security impact. If there is data loss
  in a realistic scenario, then a CVE ID can be assigned. For example,
  the user is in the middle of composition of a long outbound message
  and pauses to read a new inbound message containing a
  "List-Archive: <" line, and then there is a crash causing the entire
  composition to be irretrievably lost.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWeLVXAAoJEL54rhJi8gl5OKcP/2Wht3iy1rvLGBP1c49DfvMb
elsgsowxPnNHDuY3eNbY7VuKvfK+LR4aLafK/puq/x9f8RW5RAN4iPEgYwuoZ36I
2Jlfr9phP4F/s3AElMlLlnw2a0VsK7q77qiQCpSIORSxettjaaSMe0ANnA0aIm9B
zwQDjGtR+g/c6BHmCgNtWy/xtx31v76Cueu2h2kI6ChiXXD9ogpo/QsPJESyk8Cm
B7fXXfgpj0fz/3naVobU4tnCoJe8fLrI1iwkyfpWIf8zk/JLX6SlbulK8RkwyJgM
mxZAHlmNNyb3N2/DGO6vj5BXxoAuOaJ13FVIOlTngIcbdv6jijfcrZ4h9YP3V3h7
2bxp8kh/PL9us6XrlH5H70yFNXUvgHXK5VYEtd3uQZPE/Sn9e7YlAbOSriyvZSZ0
P85BSDFUZgTwvI/G/iP6moMeclpDJ85I853IGKiDMvamLK8/6X8x75zzZTqIJHIs
pxZsrnbBDW+E9574KHuHtO5IohdNKpAVx2cP7ooVTvs4F//rxIGta0UUV+eW7Pxi
XVHAi358cFE33C8ZDldJTygIkaZz3pRfoK0WYKKV0RrlpxOoRnLwDBZW4qeru+VM
Cdcl/I627zbOcNu7gHE1HOX9CVzeDAFZxg6duqRsBHbECimJyI+hyVoAQGYj8Ard
GvKWDNciI/GdMgvBe3hc
=C4ff
-----END PGP SIGNATURE-----
