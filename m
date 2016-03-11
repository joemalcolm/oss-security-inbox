X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2624" "Friday" "11" "March" "2016" "12:34:58" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>" "73" "Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" "^Cc:" nil nil "3" "2016031111:34:58" "[oss-security] Re: Announce: Portable OpenSSH 7.2p2 released" (number mark "        gsunde.orang Mar 11   73/2624  " thread-indent "\"Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released\"\n") "<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>" ("<bffeab9e56b0b9ef@openbsd.org>" "<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1722 invoked by uid 550); 11 Mar 2016 11:35:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1689 invoked from network); 11 Mar 2016 11:35:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=dZ6/w87J0HJialpIDwmdxPMzCfTGJoKL9e9o1nwsIAE=;
        b=tbGVagpFXsclL4BXEjPWm2lLt/tNSx1X294FtyB/U+z5jKTflN9+DgnEbstKMP7LCc
         cm1P6lsEO/ETjL4nMk/cfrZyv0Dhy60F9/Hqrf/I7Gj1JBgv1lL0g/CnV/TdUrwx4EH1
         zSz9aAuhPg/hb6tFuUmeJ3yGOcd8qA9kq0nW6vqV6YctjOSvDoTs9NwvAT/0/0UQSXVr
         CXKXuZH/Nng6hqierTGo4r5zxTKQCenLuzIrgr76FAmTeNHG32xj2WDoVYxCNjs4YjP5
         BW7EFRjE2WDvLMNCPH9ikzan9Egu5nMkH5Y/h1XqL0eqwXTW1UEFBdaXlZW+DYgToT9k
         JYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=dZ6/w87J0HJialpIDwmdxPMzCfTGJoKL9e9o1nwsIAE=;
        b=PSFMjdiYiHpzqlpL6bvFqUUyPGK8s8h5cO6sFm5RyDJ77wS+DAj0ffk4WRhPip0zCf
         Kx9RW9QTD58WAYuwiesY7iIomOwZct1+ZzW12hvuiMX4QXYIjDjLNHz/WM0MEwlSvh+h
         NHqO8WhYN6QdCl14+4iIJSqfeVmrzxNYJ8xZHrtxiSNdBPvyRfwmq3N5HEMlSI35otXK
         4kpDN1PiebnjQ5RyYGgoOIoIHX0IdT8U22JKr2Tz9TF68uTFji+iPduAyu0m31+0Yi3j
         297mbyzR30+UXLHQRJQLchSeyp32zZk2rhXgTQ/eYTJMroQjLCdbksSB8Op08QDKyK95
         E40Q==
X-Gm-Message-State: AD7BkJLVLhcytdja4tgUl5cc0utYNsfDyE6FwwRpNiPA6S3tRFzb5ie0fu7b3G91dwCMR3Lpg4zxqI5wRO2KgQ==
MIME-Version: 1.0
X-Received: by 10.202.216.137 with SMTP id p131mr5287010oig.30.1457696098070;
 Fri, 11 Mar 2016 03:34:58 -0800 (PST)
In-Reply-To: <20160310173652.D548D33201D@smtpvbsrv1.mitre.org>
References: <bffeab9e56b0b9ef@openbsd.org>
	<20160310173652.D548D33201D@smtpvbsrv1.mitre.org>
Message-ID: <CAOTQaXHRCrLRQ9YxbZyHOP90KkwXCCVvQd75uC1seCG101CpFg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d4a281db71a052dc452d3
Cc: cve-assign@mitre.org
Date: Fri, 11 Mar 2016 12:34:58 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Announce: Portable OpenSSH 7.2p2 released
To: oss-security@lists.openwall.com

--001a113d4a281db71a052dc452d3
Content-Type: text/plain; charset=UTF-8

It should be noted, that the new openSSH 7.2p2 also includes the fix for
CVE-2016-1908 as it had been assigned here:
http://seclists.org/oss-sec/2016/q1/115

* SECURITY: Eliminate the fallback from untrusted X11-forwarding to trusted
forwarding for cases when the X server disables
  the SECURITY extension. Reported by Thomas Hoger.

The associated commit (
https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c)
did not make it into the last release as per last-minute decision (see:
http://lists.mindrot.org/pipermail/openssh-unix-dev/2016-January/034684.html
)

Anybody, please correct me if I am wrong

2016-03-10 18:36 GMT+01:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> >  * sshd(8): sanitise X11 authentication credentials to avoid xauth
> >    command injection when X11Forwarding is enabled.
> >
> > http://www.openssh.com/txt/x11fwd.adv
> >
> > The contents of the credential's components (authentication
> > scheme and credential data) were not sanitised to exclude
> > meta-characters such as newlines.
>
> Use CVE-2016-3115.
>
>
> We also noticed this very recent entry in the Dropbear SSH changelog:
>
> > https://matt.ucc.asn.au/dropbear/CHANGES
> >
> > 2016.72 - 9 March 2016
> >
> > - Validate X11 forwarding input. Could allow bypass of authorized_keys
> command= restrictions,
> >   found by github.com/tintinweb. Thanks for Damien Miller for a patch.
>
> Use CVE-2016-3116.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJW4bBqAAoJEL54rhJi8gl5tQEP/3580WbVSVM7XSOW3IyR5+GY
> ZoMmlEAafKV4BtSc/U/vlbvYSyLTQq7a2RPw8hWQrbjT8GPnE6YAxhYLC338eTIs
> UK0ETcZ04qbEglkvf3DFhWCdqrfQ9N8Qls00pebPa5nlIhUx8tf/qRt39Kle9hfJ
> T9Ni64gWYXIcRp2jXSlAeTHwuPqjZJpwLj1J18L+LKBytU07fxgaebdpeo9enakm
> z9ytFZZ95ibkvOr7aSLJ9QCLhD1pp1Lyuw0dWrcjcz7VZXMyvvAQTJ4aFKLWI/Zl
> Ygo8zBh0dKx82cGD1GyMRGtpryjYoNsq4FKKbe71qbCt2qVapHV9g0AZDf6AOZ2W
> vJ3j5md74cPllo06vuMpm8JhJQwOAqCe5wZG4WvOKy9h8ELy1DUlP+V6TFiF3GOm
> 8ehk58oVAu8Isgex3I4uNkTf4vhlufut5TkC+JJAA3klJFVrgq57pSk2PSTpGZR2
> //RudkF3fjivbndn20CRF7Qb1TUh4aQj96+r/yxBYZk18717ACO/MBO/SgCs9DiE
> VOl2Hpo+sDyhenEinwFFu1uJebSQqiAnHAKmWbpKAYWdDErcuN6PE00uYr/RAUW0
> qFo8E6bjy8emNL/Zw16x+dYb41Khh8KJp0ROobxbdbUBTlXUgSX6d301X0ZAVNXT
> JyxLlvwg5t1U9NgpiTEX
> =Wyah
> -----END PGP SIGNATURE-----
>

--001a113d4a281db71a052dc452d3--
