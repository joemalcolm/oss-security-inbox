X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1220" "Tuesday" "22" "December" "2015" "15:36:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request for math/big.Exp" "^Cc:" nil nil "12" "2015122220:36:55" "[oss-security] Re: CVE request for math/big.Exp" (number mark "        cve-assign@m Dec 22   33/1220  " thread-indent "\"[oss-security] Re: CVE request for math/big.Exp\"\n") "<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>" ("<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17414 invoked by uid 550); 22 Dec 2015 20:37:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16369 invoked from network); 22 Dec 2015 20:37:07 -0000
In-Reply-To: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
Message-Id: <20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 22 Dec 2015 15:36:55 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for math/big.Exp
To: jbuberel@google.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The problem that was
> identified is similar to CVE-2015-3193

>> math/big: fix carry propagation in Int.Exp Montgomery code 
>> src/math/big/nat.go

Use CVE-2015-8618.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWebPbAAoJEL54rhJi8gl5LMsP/20/WzubhID16KKW84qnlMAo
F6w3/kPkfTTBr+42W3bNZYSCY0ieVwQsvTN6uz8GrMxJ6H/Vko3H17ltXZAx0nxP
Vc53H2QbAiyCaaUA6+vqAeosjBbBhvXNkw7Dj9utDu1hJ2rbBtf5ujddF48CxjoJ
+Fsrr7TYHX3Su/4r7MNtBtcMjOeWfD3xB+h++Lp5CL/z4tRKXBS02OM+tlVvdGvq
llQQ8dwGIYaJv8v3ZIIdXk1dzurws2B6gvF6uDeaseXtbFpMbRpXxgeFddLowjtZ
th9I7oxQUvFASrraIQrobaKPpEOfDJrMjhVzFHPtEFtTvrR71qYqq58NXaoflGV1
gEtSptbjm5sAwsjxOWhOVO+wA9JHA8upV2ZVxczdeFGlvyko2KBWdMorjEIWLQGI
x2DbkL2+hXlCJfZZUfNy0BjyGpZPGlmT7ZAYguxz6VTT/EC67gJ6pkiv5mZKOeBY
PHtH7UaYVBYwh6h5opdmvhkhTJ/a9lXhIez5s5HhX01P31DHmx6RLUMeTBikjwmz
IFOEulqQhAH0Qtp2XvPAMKeICXpEv7iWmoP8yNAYQ0SzS4awc7ZjK1mcRka1hcY5
Bc5nbQvbZGPag0QeyYPdKyYuNqugj6d3J81kIlcpNfjCT1lSVhxxwjQQzlpi0FCR
YJqwm2p3NhpjW57fGRux
=HP2t
-----END PGP SIGNATURE-----
