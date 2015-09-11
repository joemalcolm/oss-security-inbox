X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2383" "Friday" "11" "September" "2015" "10:24:47" "+0800" "Qinghao Tang" "luodalongde@gmail.com" "<CAPcZBq5-7-tGpxkX7QoU5YrHHQBi8DDoeJUMg1ndLDLbQW7Y0g@mail.gmail.com>" "62" "[oss-security] Re: CVE request Qemu: ide: divide by zero issue" nil nil nil "9" "2015091102:24:47" "[oss-security] Re: CVE request Qemu: ide: divide by zero issue" (number mark "        luodalongde@ Sep 11   62/2383  " thread-indent "\"[oss-security] Re: CVE request Qemu: ide: divide by zero issue\"\n") "<20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>" ("<alpine.LFD.2.20.1509101208190.20982@wniryva>" "<20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29738 invoked by uid 550); 11 Sep 2015 09:38:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24255 invoked from network); 11 Sep 2015 02:24:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0M3yaJsDDDhs4jyw85qNH9yNa4Hqr4U7gFg8tLXF/NQ=;
        b=Hc7E6udZVhCbGb+hO6BRN5mo8nC2SRf54pSllRYAQAv+UUMvc+Kq4XtEKSkN6UmAWg
         +TBzJexJSjw8tBliMgWs89WVNCzizbmLp3qWEcmMLTSIXZcE+AqoB7Cdb2XWd9yai6Lr
         m0VBV7xH/Pyh/tgEb2fH9yaRA0wjRIyuHyoKJFqRVYJqmMnlwnYLdOmMWWoAbwKva9fN
         6K591r0mNf4+g2kDDNDSYR3gyzp3NQT4akqHbA8O3au6BcwENcxrmfSL+tsIBxBmVsCk
         lK9w8Cmx2tuXJSy6mX169nJ80+Y4VlJYQhlOHxjmG6TPW+SkhujYCycbliLkmnIexzpF
         IMNQ==
MIME-Version: 1.0
X-Received: by 10.180.90.107 with SMTP id bv11mr12484417wib.69.1441938287927;
 Thu, 10 Sep 2015 19:24:47 -0700 (PDT)
In-Reply-To: <20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>
References: <alpine.LFD.2.20.1509101208190.20982@wniryva>
	<20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>
Message-ID: <CAPcZBq5-7-tGpxkX7QoU5YrHHQBi8DDoeJUMg1ndLDLbQW7Y0g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043c81d470a721051f6f6b60
Cc: P J P <ppandit@redhat.com>, oss-security@lists.openwall.com
Date: Fri, 11 Sep 2015 10:24:47 +0800
From: Qinghao Tang <luodalongde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: ide: divide by zero issue
To: cve-assign@mitre.org

--f46d043c81d470a721051f6f6b60
Content-Type: text/plain; charset=UTF-8

please add this vulnerability information at
https://access.redhat.com/security/cve/CVE-2015-6855.
Thanks.


2015-09-11 3:25 GMT+08:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Qemu emulator built with the IDE disk and CD/DVD-ROM emulation support is
> > vulnerable to a divide by zero issue. It could occur while executing an
> IDE
> > command WIN_READ_NATIVE_MAX to determine the maximum size of a drive.
> >
> > A privileged user inside guest could use this flaw to crash the Qemu
> instance
> > resulting in DoS.
> >
> > The fix disables undue IDE commands for CD-ROM drives.
> >
> > https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg02479.html
>
> In this case, we are assigning a CVE ID for the primary problem
> statement in the msg02479.html post, i.e., the "All other commands are
> illegal to send to an ATAPI device and should be rejected by the
> device" statement. Use CVE-2015-6855. The divide-by-zero error is
> resultant, and serves as a demonstration of how an illegal command can
> have a security impact. It is conceivable that other security impacts
> may be discovered later.
>
> (not yet available at
> http://git.qemu.org/?p=qemu.git;a=history;f=hw/ide/core.c)
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJV8diyAAoJEL54rhJi8gl5uHgQAJTCJFsIvOV4bvGLr2IBeyyT
> WuyKhVTjHPnI05gIN/GetgRg53OkxX7p2PtlCW4+X6GtDizwY6ia4QwS1dKJeKZr
> GCaeU8NgiOoeGYj674yPrd2qfLzI1IaBcl5Hn2NMTjRquJQfSfrcWG8OuH+K9Zlp
> Rg+8XLhdiryDGmslj0fb6aq+XlSfApszdaR1kFLX1zJzLBFlYeueUfDkZNTLmQmI
> E6tDCxn8oE6yEVdWHIciwt09yRYLQORGVR619mXkVMXNguXzgJpe66poAUDbSmcC
> W0RdGoAHnS0iqz6eq1e+AsFQhP0zvGfQpCm7Od08EMEbvQAmk7dOjYs/qZN5KHkI
> m1AshF0MmlxUsCS6kNIOJbQp0YsAhflHV7oZ24HWy0NF0bytM3sZFiWIPSE66N1G
> OVdp6/NRVg4gGvOm/XeP09zezkR/PkPETfVldg9ffPsIx3LUQBFZK9HtAx6wJA6w
> 3pNVNktvE7LxNIzfvlGChkhvy4q07E4er2jEKGCMlYDp8zd7HKm+8eE2DFhz74xP
> n+VaCpbeQ/0oilZLWlkA50WY2nrI6Ndf07pjw7y7ZozZBvgwGKkXsBLwRh4OByvd
> IFC2zeTkbT609DhMY/hQQaVTjT+T5M35wqaCe3Xo2nq4vltf03i5w57yRy3gEUKq
> 20FvsUHrETz9JjTtxRgI
> =8VhV
> -----END PGP SIGNATURE-----
>

--f46d043c81d470a721051f6f6b60--
