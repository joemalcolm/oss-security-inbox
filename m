X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/12/2
Message-ID: <20130912021950.GA8527@hunt>
Date: Wed, 11 Sep 2013 19:19:50 -0700
From: Seth Arnold <seth.arnold@...onical.com>
To: oss-security@...ts.openwall.com
Subject: [seth.arnold@...onical.com: CVE Requests openjpeg]
Content-Type: text/plain; charset=utf-8

Please find attached three mails relating to the openjpeg
(http://www.openjpeg.org/) libopenjpeg library (Debian/Ubuntu source
package name openjpeg) JPEG 2000 image processing library.

CVE-2013-4289 has been assigned for heap-based buffer overflows.
CVE-2013-4290 has been assigned for stack-based buffer overflows.

When I reviewed our packages, I followed several of the memory-allocation
multiplications far enough to convince myself that integer wraparound
was possible, though perhaps the example I selected for the CVE request
is not an actual problem.

I have also attached an email I sent directly to the openjpeg developers
with suggestions for further enhancements that did not feel worty of a CVE
request. I'm including it here in the hopes that it is useful to someone.

I did not receive any replies from the openjpeg developers; as far as I
know, no patches are available, and I personally will not be taking the
time to prepare patches.

If someone does take the time to prepare patches, I'd like to suggest
writing several wrappers around malloc() to handle the common memory
allocation cases so the size validation can be performed in a handful of
routines rather than scattered through the codebase.

Thanks to Huzaifa Sidhpurwala for his assistence deciphering my request.

Thanks,
Seth

Return-Path: <seth.arnold@...onical.com>
X-Original-To: sarnold@...l.canonical.com
Delivered-To: sarnold@...l.canonical.com
Received: from fiordland.canonical.com (fiordland.canonical.com [91.189.94.145])
	by grenadilla.canonical.com (Postfix) with ESMTP id CC81F14723E1;
	Thu, 29 Aug 2013 04:25:02 +0000 (UTC)
Received: from cluster-e.mailcontrol.com (cluster-e.mailcontrol.com [85.115.58.190])
	by fiordland.canonical.com (Postfix) with ESMTP id 3DABDA18B3F;
	Thu, 29 Aug 2013 04:25:02 +0000 (UTC)
Received: from arctowski.canonical.com (arctowski.canonical.com [91.189.94.158])
	by rly67e.srv.mailcontrol.com (MailControl) with ESMTP id r7T4P1qW015754;
	Thu, 29 Aug 2013 05:25:01 +0100
Received: from fiordland.canonical.com ([91.189.94.145])
	by arctowski.canonical.com with esmtp (Exim 4.71)
	(envelope-from <seth.arnold@...onical.com>)
	id 1VEtn3-00013W-09; Thu, 29 Aug 2013 04:25:01 +0000
Received: from youngberry.canonical.com (youngberry.canonical.com [91.189.89.112])
	by fiordland.canonical.com (Postfix) with ESMTP id D6B01A18377
	for <security@...ntu.com>; Thu, 29 Aug 2013 04:25:00 +0000 (UTC)
Received: from c-67-189-125-34.hsd1.or.comcast.net ([67.189.125.34] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.71)
	(envelope-from <seth.arnold@...onical.com>)
	id 1VEtmx-0003JH-L2; Thu, 29 Aug 2013 04:24:56 +0000
Date: Wed, 28 Aug 2013 21:24:53 -0700
From: Seth Arnold <seth.arnold@...onical.com>
To: distros@...openwall.org, info@...njpeg.org, secalert@...hat.com
Cc: security@...ntu.com
Subject: CVE Requests openjpeg
Message-ID: <20130829042453.GB20543@...t>
Mail-Followup-To: distros@...openwall.org, info@...njpeg.org,
	secalert@...hat.com, security@...ntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CUfgB8w4ZwR/yMy5"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailcontrol-Inbound: WBq!ucXEz80wFmxD6S7f3nyjenN!phNbIQWiyBG44+lo3FL0yiLKb3yjenN!phNbh+9WRKrdgbE=
X-Spam-Score: 0.8
X-Scanned-By: MailControl 17434.0 (www.mailcontrol.com) on 10.69.0.177


--CUfgB8w4ZwR/yMy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I performed a very quick audit of openjpeg recently and discovered
multiple flaws that I believe require CVE numbers.

Please keep linux-distros@...openwall.org[1] CC'd for any updates on
this issue.

This issue is embargoed and has not been disclosed publicly. We are
requesting a coordinated release date (CRD) of 2013-09-09 16:00 UTC.
We ask that you keep this issue embargoed until the CRD[2]. If you or
members of linux-distros@...openwall.org do not request another date,
Ubuntu will make this bug public on the CRD.

I'm asking secalert@...hat.com to assign several CVE numbers for these
issues. Please include these CVE numbers in any changelogs.

Thanks in advance for your cooperation in coordinating a fix for this
issue,


- Many instances of malloc() and opj_malloc() using integers multiplied
  together or added together without any overflow checks:
  e.g.
  http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/jp=
3d.c#1825
  http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/jp=
3d.c#487

- Several incorrect uses of strncpy() with data that may not have a NUL
  terminating byte within the indicated space:
  e.g.
  http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/opj_jp=
3d_compress.c#260
  http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/opj_jp=
3d_compress.c#279

- Several incorect uses of strcpy() with data that may be longer than
  expected:
  e.g.
  http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/conver=
t.c#188
  http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/conver=
t.c#192

- Several incorrect uses of strcat() before accounting for the lengths:
  e.g.
  http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#118
  http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#132

- An incorrect use of sprintf() which can overflow a stack-based buffer:
  http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#158

  Because I found this last one very interesting, I'll paste it here:

	case 'f' :      /* floats */
	{
		char tmp[16];
		double value =3D va_arg(arg, double);
		sprintf(tmp, "%f", value);
		strcat(message, tmp);
		j +=3D strlen(tmp);
		++i;
		break;
	}

  Guess how much space "%f" can take up in an sprintf(3): 317 chars(!)

  #include <stdio.h>
  #include <float.h>
 =20
  int main(void) {
          printf("%f", -DBL_MAX);
  }

  $ ./float_length | wc -c
  317

Some problems are from command-line paramters. Some problems are from
image-supplied parameters. I believe even the command-line based problems
need CVEs because these tools may be used as part of a web-based image
processing mechanism with untrusted users potentially supplying filenames.

These links are far from exhaustive -- they were just the ones I happened
to easily re-find in the newer codebase. I hope the maintainers have the
time and ability to inspect the entire codebase when preparing patches.

I believe this needs at least three, maybe four, CVEs:

- Integer overflows when allocating memory
- Stack-based buffer overflows
- Heap-based buffer overflows
- Failing to NUL terminate strings copied with strncpy()

Thanks,
Seth


[1] linux-distros@...openwall.org is a private mailing list for
distributors of operating systems to collaborate on security
vulnerabilities and coordinate security updates.  Discussions on
linux-distros@...openwall.org are considered private and should not be
made public, though the result of the discussions may be made public
after the coordinated release date.

[2] Please do not release a fix, make public revision control commits,
comment in public bug reports or otherwise disclose information about
this issue until the coordinated release date. This gives all affected
parties a chance to release a fix at the same time.

--CUfgB8w4ZwR/yMy5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJSHs0VAAoJEPMhclmdjS6XU3QH/23JYjNQcqT5mnlvsdldlGRG
psQ6v99rOISP67IsxWpoD7xf6jJsGtpET8cHsNm137XF8TrZ31+X36w3FqYNP4sl
T7LZQ7PA42K3G4F4G4SlWRZlugIPg6BbvAdshm5a/uL7+d8d0q2IqMnMosUheW77
UMGhjLpNHAtFckKdLDmTHdMR4zwwb+UftcM8+Ky1tdfyyOQEYk0n+vkP+mG3Uipv
DJd2GnawdCEc6Gb/hkQMnSzIhXEhqWSpPkh6oJK/80Iktm5h1NFDe3BzAyCFY7wA
EPkZk6rWK0dSfLsFzRYkAM96iMEeUNvZRyfhxZbGYEfl/d4/UW9HM2OgXUDPYjY=
=2oDW
-----END PGP SIGNATURE-----

--CUfgB8w4ZwR/yMy5--


Return-Path: <seth.arnold@...onical.com>
X-Original-To: sarnold@...l.canonical.com
Delivered-To: sarnold@...l.canonical.com
Received: from fiordland.canonical.com (fiordland.canonical.com [91.189.94.145])
	by grenadilla.canonical.com (Postfix) with ESMTP id 0B1A814723CC;
	Thu, 29 Aug 2013 04:44:16 +0000 (UTC)
Received: from cluster-e.mailcontrol.com (cluster-e.mailcontrol.com [85.115.58.190])
	by fiordland.canonical.com (Postfix) with ESMTP id DA190A18D69;
	Thu, 29 Aug 2013 04:44:15 +0000 (UTC)
Received: from arctowski.canonical.com (arctowski.canonical.com [91.189.94.158])
	by rly70e.srv.mailcontrol.com (MailControl) with ESMTP id r7T4iFSN005785;
	Thu, 29 Aug 2013 05:44:15 +0100
Received: from fiordland.canonical.com ([91.189.94.145])
	by arctowski.canonical.com with esmtp (Exim 4.71)
	(envelope-from <seth.arnold@...onical.com>)
	id 1VEu5f-000259-7g; Thu, 29 Aug 2013 04:44:15 +0000
Received: from youngberry.canonical.com (youngberry.canonical.com [91.189.89.112])
	by fiordland.canonical.com (Postfix) with ESMTP id 14061A18D69
	for <security@...ntu.com>; Thu, 29 Aug 2013 04:44:15 +0000 (UTC)
Received: from c-67-189-125-34.hsd1.or.comcast.net ([67.189.125.34] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.71)
	(envelope-from <seth.arnold@...onical.com>)
	id 1VEu5e-0003vw-Iv; Thu, 29 Aug 2013 04:44:15 +0000
Date: Wed, 28 Aug 2013 21:44:12 -0700
From: Seth Arnold <seth.arnold@...onical.com>
To: info@...njpeg.org
Cc: security@...ntu.com
Subject: openjpeg improvements
Message-ID: <20130829044412.GA23172@...t>
Mail-Followup-To: info@...njpeg.org, security@...ntu.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailcontrol-Inbound: WBq!ucXEz80wFmxD6S7f3nyjenN!phNbIQWiyBG44+lo3FL0yiLKb3yjenN!phNbh+9WRKrdgbE=
X-Spam-Score: 1.117
X-Scanned-By: MailControl 17434.0 (www.mailcontrol.com) on 10.69.0.180


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, I recently gave our openjpeg package a very quick audit, and have
some suggestions for improvements:

- Messy build logs, most warnings can be safely ignored but these may be
  serious:
  - signedness error mistakes in j2k_index_JPIP() and one program's main()
  - 'tmp' may be used uninitialized in j2k_read_sot()

- Frequent casting of malloc(3)'s return value defeats compiler warnings

- Incorrect function prototyping defeats compiler warnings

- cio_*() family of routines never check out-of-bounds reads and writes
  before the allocated buffer, even though cursor manipulations
  frequently rewind the cursor.

I hope these observations are useful to you.

Thanks,
Seth

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJSHtGcAAoJEPMhclmdjS6X5ggH/0D7c9/ijSdC6iIGIbEfgMVy
E0PlDJ+9lUPoKNzK08Psmj9h5JcfbyMQ+pONK1qc358kUj7zVRdU80noEINEGzBt
qOe9CDxGK6tLKUVx1F4vULog8JoCKaSN7u4s990voLvYr2/tQFGKCg9Cpgsvq5LC
JMUWPJ00AuXAuVQGkyxBpcoyAhNYO7A2+IlPyNoxjNpR0L9DnldwDxTSsKZqznb3
pmIImSWgt89QOvB9HwA5CzSykWokAiQPAVzkvhRHx6Y40iblJZ/iF0jB7cHTlMNi
z+FMCS3un24ufKK4HkTRfbu8t3VL9UYlVQjfukoEVlX1iJ/AFmuqXrSXIJqAsP0=
=+vrf
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--


Return-Path: <apache@...hat.com>
X-Original-To: sarnold@...l.canonical.com
Delivered-To: sarnold@...l.canonical.com
Received: from fiordland.canonical.com (fiordland.canonical.com [91.189.94.145])
	by grenadilla.canonical.com (Postfix) with ESMTP id 87AFD1472109
	for <sarnold@...l.canonical.com>; Thu, 29 Aug 2013 05:39:25 +0000 (UTC)
Received: from cluster-e.mailcontrol.com (cluster-e.mailcontrol.com [85.115.58.190])
	by fiordland.canonical.com (Postfix) with ESMTP id 3C865A180B4
	for <seth.arnold@...anmail.canonical.com>; Thu, 29 Aug 2013 05:39:25 +0000 (UTC)
Received: from arctowski.canonical.com (arctowski.canonical.com [91.189.94.158])
	by rly70e.srv.mailcontrol.com (MailControl) with ESMTP id r7T5dL1R031342
	for <seth.arnold@...anmail.canonical.com>; Thu, 29 Aug 2013 06:39:21 +0100
Received: from fiordland.canonical.com ([91.189.94.145])
	by arctowski.canonical.com with esmtp (Exim 4.71)
	(envelope-from <apache@...hat.com>)
	id 1VEuwy-00042m-T4
	for seth.arnold@...anmail.canonical.com; Thu, 29 Aug 2013 05:39:21 +0000
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by fiordland.canonical.com (Postfix) with ESMTP id 71AF6A180B4
	for <seth.arnold@...onical.com>; Thu, 29 Aug 2013 05:39:20 +0000 (UTC)
Received: from int-mx12.intmail.prod.int.phx2.redhat.com (int-mx12.intmail.prod.int.phx2.redhat.com [10.5.11.25])
	by mx1.redhat.com (8.14.4/8.14.4) with ESMTP id r7T5dJkk006363
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Thu, 29 Aug 2013 01:39:19 -0400
Received: from rt4.app.eng.rdu2.redhat.com (rt4.app.eng.rdu2.redhat.com [10.10.161.56])
	by int-mx12.intmail.prod.int.phx2.redhat.com (8.14.4/8.14.4) with ESMTP id r7T5dHDf032009
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 29 Aug 2013 01:39:18 -0400
Received: from rt4.app.eng.rdu2.redhat.com (localhost [127.0.0.1])
	by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id r7T5dHWW007574;
	Thu, 29 Aug 2013 01:39:17 -0400
Received: (from apache@...alhost)
	by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4/Submit) id r7T5dBxA007572;
	Thu, 29 Aug 2013 01:39:11 -0400
From: Red Hat Security Response Team <secalert@...hat.com>
Sender: secalert@...hat.com
X-PGP-Public-Key: https://www.redhat.com/security/650d5882.txt
Subject: [engineering.redhat.com #249538] CVE Requests openjpeg
Reply-To: secalert@...hat.com
In-Reply-To: <20130829042453.GB20543@...t>
References: <RT-Ticket-249538@...ineering.redhat.com>
 <20130829042453.GB20543@...t>
Message-ID: <rt-4.0.8-7527-1377754750-1840.249538-5-0@...ineering.redhat.com>
Precedence: bulk
X-RT-Loop-Prevention: engineering.redhat.com
RT-Ticket: engineering.redhat.com #249538
Managed-BY: RT 4.0.8 (http://www.bestpractical.com/rt/)
RT-Originator: huzaifas@...hat.com
To: seth.arnold@...onical.com
CC: distros@...openwall.org, info@...njpeg.org, security@...ntu.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-RT-Original-Encoding: utf-8
Date: Thu, 29 Aug 2013 01:39:11 -0400
X-Scanned-By: MailControl 17434.0 (www.mailcontrol.com) on 10.69.0.180
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.25
Content-Transfer-Encoding: quoted-printable
X-Mailcontrol-Inbound: WBq!ucXEz80wFmxD6S7f3nyjenN!phNbIQWiyBG44+lo3FL0yiLKb3yjenN!phNbh+9WRKrdgbE=
X-Spam-Score: -2

On Thu Aug 29 00:25:05 2013, seth.arnold@...onical.com wrote:
> Hello,
>
> I performed a very quick audit of openjpeg recently and discovered
> multiple flaws that I believe require CVE numbers.
>
Hi Seth,

Thanks for looking at openjpeg, i did some fuzzing some months back
and found certain important issues myself. I believe that someone needs
to do a detailed review of openjpeg, not sure if upstream is interested t=
hough
:)


> Please keep linux-distros@...openwall.org[1] CC'd for any updates on
> this issue.
>
> This issue is embargoed and has not been disclosed publicly. We are
> requesting a coordinated release date (CRD) of 2013-09-09 16:00 UTC.
> We ask that you keep this issue embargoed until the CRD[2]. If you or
> members of linux-distros@...openwall.org do not request another date,
> Ubuntu will make this bug public on the CRD.
>
> I'm asking secalert@...hat.com to assign several CVE numbers for these
> issues. Please include these CVE numbers in any changelogs.
>
> Thanks in advance for your cooperation in coordinating a fix for this
> issue,
>

I had a look at one of the issues which you have listed here, and i am no=
t
really sure if its exploitable, mainly due to my limited knowledge of the
library. I will anyways assume that you had a detailed look and will
assign CVE ids.

To give you an example:
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/jp=
3d.c#1825

In this case:

parameters->tcp_numlayers: Though this is defined as an int, only 2 bytes=
 are
read from the file header and stored in it.
lib/openjp3d/jp3d.c: tcp->numlayers =3D cio_read(cio, 2);

Similarly parameters->tcp_numresolution[0] though defined as int, is agai=
n
only 1 byte long as seen in:

lib/openjp3d/jp3d.c: tccp->numresolution[0] =3D cio_read(cio, 1) + 1;

since array_size is size_t big, i dont think an overflow will happen.

But then again i dont know the codebase :)

So i think two CVEs should be assigned to the issues basically:

>
> - Many instances of malloc() and opj_malloc() using integers
> multiplied
> together or added together without any overflow checks:
> e.g.
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/jp=
3d.c#1825
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/jp=
3d.c#487
>
The above and similar flaws, are integer overflow causing heap-based buff=
er
overflow

Please use CVE-2013-4289 for these issues.

> - Several incorrect uses of strncpy() with data that may not have a
> NUL
> terminating byte within the indicated space:
> e.g.
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/opj_jp=
3d_compress.c#260
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/opj_jp=
3d_compress.c#279
>
> - Several incorect uses of strcpy() with data that may be longer than
> expected:
> e.g.
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/conver=
t.c#188
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/bin/jp3d/conver=
t.c#192
>
> - Several incorrect uses of strcat() before accounting for the
> lengths:
> e.g.
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#118
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#132
>
> - An incorrect use of sprintf() which can overflow a stack-based
> buffer:
>
http://code.google.com/p/openjpeg/source/browse/trunk/src/lib/openjp3d/ev=
ent.c#158
>
These are stack-based buffer overflows.
Please use CVE-2013-4290 for these issues.

> Because I found this last one very interesting, I'll paste it here:
>
> case 'f' : /* floats */
> {
> char tmp[16];
> double value =3D va_arg(arg, double);
> sprintf(tmp, "%f", value);
> strcat(message, tmp);
> j +=3D strlen(tmp);
> ++i;
> break;
> }
>
> Guess how much space "%f" can take up in an sprintf(3): 317 chars(!)
>
> #include <stdio.h>
> #include <float.h>
>
> int main(void) {
> printf("%f", -DBL_MAX);
> }
>
> $ ./float_length | wc -c
> 317
>
> Some problems are from command-line paramters. Some problems are from
> image-supplied parameters. I believe even the command-line based
> problems
> need CVEs because these tools may be used as part of a web-based image
> processing mechanism with untrusted users potentially supplying
> filenames.
>
> These links are far from exhaustive -- they were just the ones I
> happened
> to easily re-find in the newer codebase. I hope the maintainers have
> the
> time and ability to inspect the entire codebase when preparing
> patches.
>
> I believe this needs at least three, maybe four, CVEs:
>
> - Integer overflows when allocating memory
> - Stack-based buffer overflows
> - Heap-based buffer overflows
> - Failing to NUL terminate strings copied with strncpy()
>
> Thanks,
> Seth
>
>
> [1] linux-distros@...openwall.org is a private mailing list for
> distributors of operating systems to collaborate on security
> vulnerabilities and coordinate security updates. Discussions on
> linux-distros@...openwall.org are considered private and should not be
> made public, though the result of the discussions may be made public
> after the coordinated release date.
>
> [2] Please do not release a fix, make public revision control commits,
> comment in public bug reports or otherwise disclose information about
> this issue until the coordinated release date. This gives all affected
> parties a chance to release a fix at the same time.


--
Regards,

Huzaifa Sidhpurwala / Red Hat Security Response



Download attachment "signature.asc" of type "application/pgp-signature" (491 bytes)
