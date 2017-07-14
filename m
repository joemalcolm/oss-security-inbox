X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3026" "Friday" "14" "July" "2017" "17:52:01" "-0000" "Javantea" "jvoss@altsci.com" "<20170714175201.7C393138544@mail.altsci.com>" "78" "Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?" "^Date:" nil nil "7" "2017071417:52:01" "[oss-security] Estimate for the total number of exploitable bugs in large linux distro?" (number mark "        jvoss@altsci Jul 14   78/3026  " thread-indent "\"Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?\"\n") "<20170714093401.GB865@sivokote.iziade.m$>" ("<20170714094520.GA1885@kroah.com>" "<20170714093401.GB865@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7218 invoked by uid 550); 14 Jul 2017 17:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3691 invoked from network); 14 Jul 2017 17:50:09 -0000
Content-Type: multipart/signed; micalg="pgp-sha512"; protocol="application/pgp-signature"; boundary="===============3320824639949037296=="
MIME-Version: 1.0
In-Reply-To: <20170714094520.GA1885@kroah.com>
References: <20170714094520.GA1885@kroah.com> <20170714093401.GB865@sivokote.iziade.m$>
Message-Id: <20170714175201.7C393138544@mail.altsci.com>
Date: Fri, 14 Jul 2017 17:52:01 -0000
From: Javantea <jvoss@altsci.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?
To: oss-security@lists.openwall.com

--===============3320824639949037296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 14 Jul 2017 11:45:20 +0200, Greg KH wrote:
> On Fri, Jul 14, 2017 at 12:34:01PM +0300, Georgi Guninski wrote:
>> What is an estimate for the total number of exploitable bugs in large
>> linux distro?
> 
> Define "exploitable" please.
> 
Let's assume exploitable means CVSS exploitability score >= 1.6. Therefore network attacks, and easy local attacks are acceptable.

> Define "large Linux Distro".
> 
Let's say Gentoo, Ubuntu, or Fedora.

>> Also, does the total number decrease, increase or change in other way
>> over time?
> 
> The world changes over time, why would the number not also change?
> 
> What exactly are you trying to determine here, and what kind of research
> have you done to try to answer it yourself?
> 
> thanks,
> 
> greg k-h
> 
> 
First you must accept that the most well-reasoned answer you will get will probably be off by an order of magnitude. One method of answering this question is to take the number of GLSAs, RHSAs, and USNs depending on which distro you want to track. If you multiply that number by 2, you'll have a reasonable guess. There's no guarantee that this number will be accurate because many bugs will last years or decades and many never become CVEs and thus won't become RHSAs, GLSAs, or USNs. Many bugs that are fixed in 2017 were present in 2016. Some fixed in 2017 weren't there in 2016.

https://security.gentoo.org/glsa
https://access.redhat.com/security/
https://www.ubuntu.com/usn/

Here is the code for Gentoo:
for year in 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016; do echo -n "$year "; ls -1 /usr/portage/metadata/glsa/glsa-"$year"* |wc -l; done
2007 264
2008 208
2009 153
2010 43
2011 47
2012 149
2013 98
2014 242
2015 97
2016 162

This shows that GLSAs are neither increasing nor decreasing within the margin of error over the past 10 years.

Regards,
Javantea

--===============3320824639949037296==
Content-Type: application/pgp-signature; name="signature.asc"
MIME-Version: 1.0
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEuYE3Yh0wygXiwc1/PGjI28ung+8FAllpBL4ACgkQPGjI28un
g++avw//c1iHn46bejJ462h9zXp9Fgh5GoNrQZT/ZgXlDrMyl6GtU7ebLfqf/4/B
or4pFKuWFKPVJSHTOSnO5CKTUMgh0xLVP3oNkHG4xKsSb7zgw9s3P8fy83mQkyLc
eCv/XMjEzv678QwdkZbuVz4k3TbAV94czVNVOtQCINSvY70HaEilhsujZm0HH6Lr
pRhkTw237Yiz5OJHgLCGZJM+iFmGZ3n182FKMYXSMuQcfxKlSQO6kBlLl83yyFQH
rBS0rRk69zevasQlxXvCgLbK8uvkrohj1jTdfPeurFE59hZ8n0Luu0gUBQKrcwM7
xVAZqhkNzyZGXzgXfqWw/82PDvsbmPoRFUOEBlRSE2wvDlNLMoY/2osMWw81ikPC
8CoL4qmFKf3Wb7S4OpCHR+66RsbCuA4RnflToLo1/POsYqwZHzrUncHBKz3esrtM
M9DP52tWQUUZRcSH/HnqzNm7CMuSOG49mnMrlEG04g9boxJt0Gq9FgiEf/YULo6+
jC3n5aP1ifjRIgJMM/8cUlClqGaFcVEq/f/wj4GnGlTiE6cHCA2Tvl9EmnNbHq/D
8ELKnfYBHygPP6E8pLeMq/RMMWnImZCsQeA2HKaKDz1kIr4GbIgunIYOFrmyZ8Ps
XTwxeCtGg+C6UipVCMSg9QclP1b/iNky8lCHa4cI+/WbpzjMRnI=
=2ci3
-----END PGP SIGNATURE-----

--===============3320824639949037296==--
