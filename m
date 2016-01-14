X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2206" "Thursday" "14" "January" "2016" "02:59:05" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160114075905.A27A213A60D@smtpvmsrv1.mitre.org>" "51" "[oss-security] Re: Fwd: FFmpeg: stealing local files with HLS+concat" nil nil nil "1" "2016011407:59:05" "[oss-security] Re: Fwd: FFmpeg: stealing local files with HLS+concat" (number mark "U       cve-assign@m Jan 14   51/2206  " thread-indent "\"[oss-security] Re: Fwd: FFmpeg: stealing local files with HLS+concat\"\n") "<569640E3.3080009@openwall.com>" ("<569640E3.3080009@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22413 invoked by uid 550); 14 Jan 2016 07:59:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22351 invoked from network); 14 Jan 2016 07:59:18 -0000
From: cve-assign@mitre.org
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
In-Reply-To: <569640E3.3080009@openwall.com>
Message-Id: <20160114075905.A27A213A60D@smtpvmsrv1.mitre.org>
Date: Thu, 14 Jan 2016 02:59:05 -0500 (EST)
Subject: [oss-security] Re: Fwd: FFmpeg: stealing local files with HLS+concat

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://habrahabr.ru/company/mailru/blog/274855

As far as we can tell, there are two distinct cross-origin issues
within FFmpeg's URL processing. Use CVE-2016-1897 for the concat issue
(which is fully described in the blog/274855 reference) and
CVE-2016-1898 for the subfile issue (which is mentioned but not
described in the blog/274855 reference).

The essential problem is that a crafted file forces the victim to
visit an arbitrary external URL, but this URL is constructed using
data from the victim's local filesystem.


> https://github.com/ctfs/write-ups-2015/tree/master/9447-ctf-2015/web/super-turbo-atomic-gif-converter

This might describe a vulnerability, but we aren't sure whether the
access to file:///home/ctf/flag.txt is really unintended FFmpeg
behavior. This might be better modeled as a site-specific
vulnerability in the web service, because it should have arranged for
the file:///home/ctf/flag.txt URL to be interpreted within an
appropriately safe sandbox context.

Similarly, the reports of FFmpeg SSRF in blog/274855 might be better
modeled as site-specific vulnerabilities within the "online video
conversion" web application.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWl1TnAAoJEL54rhJi8gl57hIP/jkD+Hfa2TlpnCMaub2I4Nv7
w8Ij6n1DxQcHIEikSpzGzVjzFF5bM08+cnprML2T9mvv8LfIf9LTKhLA6eGA6o0Y
Fdx2Plk1gsz/8xG2+bQD/WWwAd0DU+UEPyg9gQ3uq8aCrQU5+umY3/k27FSnBoEw
/012zKOC/kA7bc3lvMVnEGXjkht48Pjbme4xi/7g8iKJ7Xgp0BJJMITsfUjGQ4wZ
qWXo1is5g6okqmxxCsxBi6z+HiD4rBYGPKLoykFhZKjbKKZVryu5o9IFmqV0Gcx3
Yr2qXq55X9VMfUYfwOEbr0khmNvOTWaCeVGRqNKicMrnQ2AuBln0xw0GSx/IC54a
x871TKEe1K5htx4rgA8yiyeg+HADKBnkBGBsxo9WIen/Jt12JuDQPSEjoWkelUsO
YHIOj4Bvg44aP0GLkPxDIFW4xSNc2SGUg22WJVsTaTxi07U0eUnMZLqxL0UbLJw2
NNIkGj0zCY/74helTqH6O+ZQ7pcePLA07DNiRNKjFp8V4do+MglXG63oVgNMRi5D
Ec89tB57B7ADRqv0k/+HQxa+K4Tur4s4U6ROCBuUxlbg4N/qzzePnJxB8g3ecKr0
rx791hkbmVqI27gtKdMEIK5GJwPQKsvx48wM3zq1aCiELnqzfuOReQihXs98+KwM
iVCG+PH+hIf4wO2Wq06i
=rHFW
-----END PGP SIGNATURE-----
