Received: (qmail 7408 invoked by uid 550); 12 Aug 2022 11:29:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27736 invoked from network); 12 Aug 2022 03:28:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :from:to:cc;
        bh=apo4OWxTB7mDBRTUMTLvTua82t1XU8pTowOOxKNMnq8=;
        b=HZJU1+XD0uZKo4zqISDTWH//XQGpPmTH1pAlXkDXxrUj2GQqHSUHHZhZtuSk6vQjAT
         KXCROOz2HFiu8kRFI1U3I+pDIb46l/uiDZxXjORPi+3oZQeVq+E4gu0G6jcT7jGTGcU7
         AyZFsWqVwH89C+Jyid73rF/MrXeZhPwK1kRunU14lHmngbPYU9OilQgoUljhNPMNoarU
         MR7iRlG7O6IAGWGrvlCAWYZNXpN0yve9GXuql9Vzmrua7goTUv9vZXdFrExGDwo9lJFs
         4DifdsEioqpZ4kCpZy+WoiwqjYugZTFROpk2/Vh9LaHqQbKEc6WLK6UittJOHcz/ynkq
         EoZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:from:to:cc;
        bh=apo4OWxTB7mDBRTUMTLvTua82t1XU8pTowOOxKNMnq8=;
        b=6itlv4fnwBGsVGnXDC64I8Pdh875zJc/eDQXYIbRc/BYWeonlzKq7OZM0wsp8UvhKS
         /wJvrHQP6OdG5Lx4KxFkJbC0EdkW8dcKR5wOWPIFcdCo6xJwMxh2ljg61sJvQBDuxMIg
         /miJouvaasoUa5PnI2JDxNjRs2Vf99hrhJiftCRGI8u0EmUKeWLH48S5NQ7IQ69G6fgL
         /5eTWWBmQD+IX5i77zvcarC7e0GK2r+38wdYiVTcwaGrk7wXXkGRwRTce+B/tK1VcDcn
         HqyOtQlJTARw4ireoY8JWJA133I3D8dxwiZaKLYH7SXR5+D5agf58vA7kF4L+cBGU+9J
         nuDQ==
X-Gm-Message-State: ACgBeo1uvHmQgJW1Shbor3SeTRrg9YajN8leSp9VHfTSaDv3fGZeU6E6
	rjatD2Lotkre8caVAJsIt2FxHmv5lY4=
X-Google-Smtp-Source: AA6agR61UoG4/iupS7y+klETP+wt1BsunamiodzE4pZLcJ3Q4Jdaxf34/bTN9EwYfn2I5+uKalFBaw==
X-Received: by 2002:a17:90b:3e8c:b0:1f7:3792:d336 with SMTP id rj12-20020a17090b3e8c00b001f73792d336mr2146686pjb.0.1660274884923;
        Thu, 11 Aug 2022 20:28:04 -0700 (PDT)
From: Roxana Bradescu <roxxbee@gmail.com>
X-Google-Original-From: Roxana Bradescu <roxabee@chromium.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8EE35B6D-C138-4C93-868E-D210AE9BFDD4";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Thu, 11 Aug 2022 20:28:02 -0700
References: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
 <Yu7WIlgb9y4tGUDQ@gentoo.org>
 <CAB=ivF95gmkRr74nu5+_XmNkQKdGd==4hB+9N8EmaELQz+vHxQ@mail.gmail.com>
 <0D1F6213-D667-4E9C-B541-52E52429B756@graemef.net>
To: oss-security@lists.openwall.com
In-Reply-To: <0D1F6213-D667-4E9C-B541-52E52429B756@graemef.net>
Message-Id: <AF6E8613-D1CA-4072-B708-7C7702994D51@chromium.org>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
Subject: Re: [oss-security] [Exim-Security] [oss-security] Exim < 4.95 heap
 overflow

--Apple-Mail=_8EE35B6D-C138-4C93-868E-D210AE9BFDD4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Thank you for the clarification and we sincerely appreciate all the efforts=
 the Exim project team!

=E2=80=94
Regards, Roxana


> On Aug 10, 2022, at 7:44 AM, Graeme Fowler <graeme+osssec@graemef.net> wr=
ote:
>=20
> On 7 Aug 2022, at 16:39, Roxana Bradescu via Security <security@exim.org>=
 wrote:
>> Adding the Exim security folks to this thread to shed some light on the =
original report and CVE discussion.
>=20
> Responding separately to each list...
>=20
> The Exim developers don't use github to track bugs, there is a bugzilla i=
nstance used for that which is detailed on the Github Readme.pod page.
>=20
> This issue (and others) weren't "silently fixed"; they were openly tracke=
d in Bugzilla, and an example is here:
>=20
> https://bugs.exim.org/show_bug.cgi?id=3D2747 (fixing the observed issue i=
n this thread).
>=20
> The pages detailing CVEs were regularly updated by a developer who is no =
longer involved. These have not been updated since 2019 as you observe, yet=
 there have been 23 CVEs addressed by the developers. These are fairly easy=
 to find using your favourite CVE tracker.
>=20
> The development process - excepting times when a CVE has been allocated -=
 is pretty open and easy to find, as all the commits are in the Git repo an=
d bugzilla updates are mirrored into the exim-dev mailing list, often inclu=
ding the commit also.
>=20
> Regards
>=20
> Graeme
> (wearing my exim mailing list admin hat)
>=20


--Apple-Mail=_8EE35B6D-C138-4C93-868E-D210AE9BFDD4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEgZzAKV63cJrecgABXEIiv89pXdUFAmL1yMIACgkQXEIiv89p
XdXXFRAApPYHW9pUlZL/u+06NI98XtKuECizq/3+G4HvnLyYEM7cX1SOtrpaznKx
6W/G54cA1yxd46/7MiirRg/nMP7QmKe6LrZRO8JURERIMRhRfYXYsHvs0HLkM9V/
bP1IPUduTvc0/NR2kMZPZTjAVS6LrMgthiKpZ301XoTtWfQvmUG+NJNCBgKCcvt+
8orz65/x7SBF+uHEYF/TGjKhPqPq+PrZXt3oucvkR0q9zltG77WdopOV/njvfz1/
4wg1KvsbfCPuXOqoHLYbXWa7lp9/JDyZGlPvM1GhHNyySnSqkIrsLswBJ6xRQVuV
j88w0DVFY3gFLSmIxoDqUOdvJ7Rd5fehH7pUra2is1TTB2vNvRla2Z49mWOtjVED
+XFb+Ntf+eXQ3DHMwOJkm4cxexy4oRBjRoBONpBPpVd5XO4xoYQwZKcMwndNVDKI
HHVvHqxHvnYREfjiSw3xBKZLaVBGPOhGI+OcTFPHxk+nq689C+9vgWN1Hpk+ycm6
sjhHUWdTFQ+CoyQhH+Ac/LJ4XiKvxZ9G02oQbM+Rrx0HgKt+y2VeAM9Dl9LtZmwQ
Wtw6kngxMUTgiXTPTteqhp7QUs1zHZD0xydnRqsVe3ns4skAVkq1Gs6uHBndN3Iq
NwnAGwFpPcMEuBnV8gI+kbRvgUiBQeOAOLunR7TLc9AxNP+t5EQ=
=I22G
-----END PGP SIGNATURE-----

--Apple-Mail=_8EE35B6D-C138-4C93-868E-D210AE9BFDD4--
