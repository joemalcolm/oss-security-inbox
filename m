Received: (qmail 8159 invoked by uid 550); 21 Mar 2026 17:35:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10020 invoked from network); 21 Mar 2026 17:13:56 -0000
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com> <37aacb54-8bcf-4b7e-a747-6ff3ec8143c5@oracle.com> <031BCE73-BDEB-4D18-9EFD-8F3180E8527D.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <EEDF7B9C-89E2-4544-A33D-DBF2B0FED6E0.1@smtp-inbound1.duck.com>
Date: Sat, 21 Mar 2026 13:13:47 -0400
From: kf503bla@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1774113227; bh=Rkn8Ck4k7OemtIVxjSxS6CmX+LL+RQp1t+W0NT4Xpwo=;
 b=icfhJf48LbQwh5b1xhLq7MOEgeN0Vdmb/vMseqxjkkl6NzrIsJmUHffzzSIVAx3v8nYdOslQJ
 zxfJ5YgOew8Pd9vItDM/clET8b8kRJdkDed89+6ySgqNbC92aYmgeAYvAFaYFQs4keC5+atq39q
 tIkmowiDni/kFM/L/tgT3bk=
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

why assign cve to something irrelvent?


On Saturday, March 21st, 2026 at 5:14 AM, Alan Coopersmith <alan.coopersmit=
h_at_oracle.com_kf503bla@duck.com> wrote:

> On 1/5/26 09:27, Alan Coopersmith wrote:
> > Late last year, a tape was found containing the only known copy of Bell=
 Labs
> > Research Unix Version 4 from 1973 - the version in which UNIX was rewri=
tten
> > from assembly into the then-new C programming language.  Since then a n=
umber
> > of folks have been running the recovered software in PDP-11 simulators.
> >
> > https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/ examines the
> > source code for su.c and shows that the buffer for password input is a
> > simple 100 character array, but the loop to read password input has no
> > boundary checks and will happily keep writing long past the end of the
> > buffer.
>=20
> This has been assigned CVE-2025-71263 now:
> https://www.cve.org/CVERecord?id=3DCVE-2025-71263
>=20
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>

