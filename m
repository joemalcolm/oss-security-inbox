X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1570" "Tuesday" "28" "June" "2016" "18:53:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160628225329.CD59CB2E08C@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request - python-docx 0.8.5 - XXE" nil nil nil "6" "2016062822:53:29" "[oss-security] Re: CVE request - python-docx 0.8.5 - XXE" (number mark "U       cve-assign@m Jun 28   42/1570  " thread-indent "\"[oss-security] Re: CVE request - python-docx 0.8.5 - XXE\"\n") "<CAO8=cJ9uNJNtPb-GVqq168h4ODCkaxS6W+bX2DFMtpty-MJh2g@mail.gmail.com>" ("<CAO8=cJ9uNJNtPb-GVqq168h4ODCkaxS6W+bX2DFMtpty-MJh2g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7842 invoked by uid 550); 28 Jun 2016 22:53:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7824 invoked from network); 28 Jun 2016 22:53:42 -0000
From: cve-assign@mitre.org
To: pernst@salesforce.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAO8=cJ9uNJNtPb-GVqq168h4ODCkaxS6W+bX2DFMtpty-MJh2g@mail.gmail.com>
Message-Id: <20160628225329.CD59CB2E08C@smtpvbsrv1.mitre.org>
Date: Tue, 28 Jun 2016 18:53:29 -0400 (EDT)
Subject: [oss-security] Re: CVE request - python-docx 0.8.5 - XXE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The python-docx package
> (https://github.com/python-openxml/python-docx) is vulnerable to XML
> External Entity attacks (XXE).
> 
> Version 0.8.6 (https://github.com/python-openxml/python-docx/releases/tag/v0.8.6)
> contains a fix.

> xml_string = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
> <!DOCTYPE w:document [
>   <!ENTITY xxe SYSTEM "file:///etc/passwd" >
> ...
> updateZip('whatever.docx', 'word/document.xml', xml_string)
> ...
> document = docx.Document('whatever.docx')

Use CVE-2016-5851.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXcv+EAAoJEHb/MwWLVhi2iGIP/iS3BoqMNj+DVhTwEE9w+BQJ
O6RXn8MsUBUQT8eo5HR+2gecYDP3vuj4I7BrAhFesXAkabTxsxFRHZqOOqmvG0ij
8f+m/heZFBl9CQywSJLOT+K9eQ4442Bs01c0Ex/e+Y0RfmMP50azlIQMZaNeNQS8
+2AsgU7V2nIscTKRF39ciP2fGywsrkH+zlTbA1HSct9ZrFnPog6f4Exkoaru06lg
lFzUJoG/JRLW8SuAZ2uNeuFEKlvhE8bfhy/TBva5IwjnBUfIAp0nQ9EjyCywTGOq
cmMrVpq8fzhACzE8Nq+BKKFTZ07YSXFB8fYJ8U3p6ztG7iCfZ/neIiuXm8JVsJB2
gytmOWgqjenUO/IpLgHLxAvOQ+rrRhYAC39XZT6cRrXvoyVnm8TLRmIzkNoItwrQ
JAMtPzkEKWJurtvUuPFZ3DhpdPYXdOzczK2zS54XUONiMfw67fb/Rmx5mez6k7tr
B/9fOB3ai+kMg1okYojgENJJhXxOtbtekPMkMY8pQJM1CvYW32So3FIn7TfrD6hX
wJWqHfok1k5/+vki7XO7wxoNuYGObRq2IGLlz1JpZs6iR5QIIRxE4l8Lx2c43lwr
OeEfZMClCsAo16VYRJMBOIT15hgpfmXMIekk63nhtx7NOzoCzAUTgRvv6fjQ4yNG
x8/OUsWj1ULmPDDqpiUt
=X9jU
-----END PGP SIGNATURE-----
