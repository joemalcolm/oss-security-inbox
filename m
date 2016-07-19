X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3487" "Tuesday" "19" "July" "2016" "00:57:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160719045707.047D072E00A@smtpvbsrv1.mitre.org>" "70" "[oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues" nil nil nil "7" "2016071904:57:07" "[oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues" (number mark "U       cve-assign@m Jul 19   70/3487  " thread-indent "\"[oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues\"\n") "<3e7ac139-077b-9d9e-7ad0-ed90083d8937@redhat.com>" ("<3e7ac139-077b-9d9e-7ad0-ed90083d8937@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9225 invoked by uid 550); 19 Jul 2016 04:57:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8181 invoked from network); 19 Jul 2016 04:57:19 -0000
From: cve-assign@mitre.org
To: huzaifas@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3e7ac139-077b-9d9e-7ad0-ed90083d8937@redhat.com>
Message-Id: <20160719045707.047D072E00A@smtpvbsrv1.mitre.org>
Date: Tue, 19 Jul 2016 00:57:07 -0400 (EDT)
Subject: [oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Would it be OK to keep CVE-2016-2052 for
>> 63ef0b41dc48d6112d1918c1b1de9de8ea90adb5 (which is really a "before
>> 1.0.6" issue as stated in that CVE), and assign one new ID for
>> f96664974774bfeb237a7274f512f64aaafb201e (the "before 1.0.5" issue)?

> Sure, i dont mind as long as its communicated well etc!

f96664974774bfeb237a7274f512f64aaafb201e is now CVE-2015-8947. We
will also communicate this at
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-8947 within
about a day or two.

> This means that, if you dont have motivation for investigating the
> individual issues, it is ok to assign CVEs to multiple unrelated issues?
> 
> It so, that means everyone is free to do the above mentioned.

Not everyone is free to do it: the decision belongs to whoever is
responsible for assigning CVE IDs to that product at that point in
time. Keep in mind that no one is forcing Google to have a public bug
report stating "Update harfbuzz to 1.0.6 ... There are a few security
bugs fixed between 1.0.5 and 1.0.6." Google could have decided to
announce only that "we occasionally update Chrome's components to the
latest upstream version for any reason or no reason." Because that
public bug report existed, it gave MITRE the opportunity to put a
HarfBuzz entry into the CVE corpus. This is presumably of some value
to other vendors that ship HarfBuzz, even though it is not optimal.
The information readily available to us was that the product name was
HarfBuzz, the vulnerable version was 1.0.5, the fixed version was
1.0.6, and the type of problem was denial of service. Going beyond
that requires expensive analysis, given that HarfBuzz issue 139 is
described as "This in an umbrella issue for setting up regular fuzzing
for harfbuzz and fixing the bugs that we find with fuzzing." The
earlier portion of this thread indicates that you contributed
significant analysis effort to report "i realized that there are
atleast 3 issues in here which are CVE worthy," and yet one of the
cited issues was about unreleased code that was corrected during the
development cycle within one day.

This is not solely a question of whether a third party has motivation
to do some analysis: it is also a question of whether it is typically
feasible for third parties to understand everything. Ultimately, it
would work better if the direct developers of the code recognized
value in CVE, and made the CVE requests and/or assignments themselves.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXjbJ0AAoJEHb/MwWLVhi2qQIP/iBE1Xl8MqVUG9qWqHSizoY8
4lZ2DrwitzSNElSZ6xcGVu4iMkyIhwfL2nxm3KRrbaYUPnr/GK3IU/K7heannEHU
3JMLOaJnm2frsZXqXm7FwiFnVFBxWUSMzRZecbw72YyxO4muKSuCv0tOudyatUrJ
BfdmngAkQZl1xSEQFQ4lU5hK9X/nIg5SlORHDvM0GghZqB+6gCMCMDfo9hjZJv3v
32gRj0igA81nG1WMQQkHvR+pDiZ0XpFB/gictZa/q1G4y8iu5Tsp49Ru1yLcnpw3
sUCpYRcENPBI71Y+PjAaooDVOwKjJeyK5qgDfNhbfViuwiotYffBYvmXZ7C0og2K
CsWkgNLgACdPRP5YrOGgkaq5G8mPfW5i1N6NKkRNbyKRu0Vx0EO/V2wT1wcB/8AV
I9fcY0/7Nu1WNg2ZFj+VFLivLH/MVgSSxYltGAx6L6Yzwsb5xScLlmHpFY8vFT25
N55JLwqNk1Xm/+XufshEO4MZWRSelmQLs3Q4WJlXYerQC1QnZB44XFIoXvUNzXRf
JuZoYBFk8/kOr+b7f5xqTO02Dsj/ogboMAQGGJyW3OLW1gaHRMNrGTtFttahSPhC
NJZy4VRSQxgfVUkTaOsB7vpqKuqLQA8FLxQNoGV2KIu3rmCR06EcwpcnSmMpmEo9
LmvoqV0EBi9pkcVuaxCw
=e3xo
-----END PGP SIGNATURE-----
