X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Sunday" "30" "August" "2015" "08:58:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150830125854.D2A876C0065@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE request: vorbis-tools: buffer overflow in aiff_open()" nil nil nil "8" "2015083012:58:54" "[oss-security] Re: CVE request: vorbis-tools: buffer overflow in aiff_open()" (number mark "        cve-assign@m Aug 30   41/1505  " thread-indent "\"[oss-security] Re: CVE request: vorbis-tools: buffer overflow in aiff_open()\"\n") "<trinity-116f3199-3a24-4fd2-926b-9e59b39c2a36-1440819846798@3capp-mailcom-lxa14>" ("<trinity-116f3199-3a24-4fd2-926b-9e59b39c2a36-1440819846798@3capp-mailcom-lxa14>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5269 invoked by uid 550); 30 Aug 2015 12:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5241 invoked from network); 30 Aug 2015 12:59:06 -0000
In-Reply-To: <trinity-116f3199-3a24-4fd2-926b-9e59b39c2a36-1440819846798@3capp-mailcom-lxa14>
Message-Id: <20150830125854.D2A876C0065@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 30 Aug 2015 08:58:54 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: vorbis-tools: buffer overflow in aiff_open()
To: pcheng@gmx.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Affected Version: <= Revision 19495
> I was testing with vorbis-tools-1.4.0
> https://wiki.xiph.org/Vorbis-tools

> An issue was found in oggenc/audio.c when it tries to open invalid AIFF file.
> 
> 274    if(fread(buffer,1,len,in) < len)
> The input buffer and length can be controlled by user indirectly via:
> 
> 260    if(!find_aiff_chunk(in, "COMM", &len))

> oggenc aiff_open buffer overflow
> https://trac.xiph.org/ticket/2212

Use CVE-2015-6749.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV4v0DAAoJEL54rhJi8gl5ITkQALDXlsXi993gR0THhgevCT7K
SS9FX+eZBGyO3u/6X+XztB+kyQOKpRAKxW1t9zKsOuB96RU6zdD4F1mSUd0Ex8GC
10BjDCHuRnmzTOaKLrVWcMKGneXBnQkGklDzKk0nd3VRUyQ0Nso9WPqrblq9qocu
RLZUWlgE8W6ObwrFAFxu9aNMEWJZqoi0hIsQg7mdYbQNnE30PHw9raifIPIMze2V
Kd61d6F2RxSr61DJ5A21EDHTyEKUdhQE8VRWMx+UegzFzVjIc1yK8eHRz2SgJkag
YtP2Cx9STH/sd/6ygswu36iGop1Y6ECRM0N7GzNkpqMaHa1Og202e30NR+P8dcgg
u5DoXNS1+Q7bn3xc9C1807O5+QkUsnCtXbT37XTAkTI9EzRoNpEaOzyptKXc5dGp
Id9hOuJHRfYZGliPlCrAzmoS3Tyb77JWePpDoVoB96zRUMVhPZZ+1Vble54aFM33
cvALFULGBJC9B+a8zZwaH/ppls8nsmbntStvx1CfF3SgYlG8QqlcZEYKvGXOUXaP
nTkHD/J8Bf4QRdMjQbSQDCFpjWoLXkwd8MkJHWxE65NKBqm4Wq5yQSlHSPF7QnYH
Mvhj1DhISRceHZ29gfIykAP1Q2o3ScctN3XN+NPk0x+iMomDQNoUQ72TDasLX5sG
UvkC0Up58HST8GoUqQw7
=ZACh
-----END PGP SIGNATURE-----
