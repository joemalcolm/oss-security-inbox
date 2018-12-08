X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2830" "Saturday" "8" "December" "2018" "09:04:17" "-0800" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<F8409406-8B47-4C23-B934-7FA38B940135@gmail.com>" "63" "Re: [oss-security] mpg321: Out-of-bounds Write" "^Date:" nil nil "12" "2018120817:04:17" "[oss-security] mpg321: Out-of-bounds Write" (number mark "        matthew.fern Dec  8   63/2830  " thread-indent "\"Re: [oss-security] mpg321: Out-of-bounds Write\"\n") "<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>" ("<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16229 invoked by uid 550); 8 Dec 2018 17:12:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9755 invoked from network); 8 Dec 2018 17:04:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=wm3e/GudIY4CFcSu4JmDcDTx62vpcEZtIPuR6T7tv50=;
        b=rnPVT7wd4dFqm9BRC+vTALUHbJ2iZ5r2g4RUiOPahzGlzll+t8Hk1eRYhXuYAaAoH5
         cr+sKsLg/TpxxkL2P8jsbGSyg018xenAJuTdr+bDDpqNBdXx1L1ajrRfd0xPMXmQm2TD
         ABbsgFOixx4jhAjvd2GrHLbkw2AvLpSgEZB7CQ5v1y9L4rmZLIO5kQHz/KuRmuLIeG6k
         UI+vGv1sgiN7HK28UIQSo/dtMV0W0dOCT9+FiuEa36HI8DVHjE1dFZHSm1EAGkGkfVTn
         GR2hLm/R3OX9gsMMOu/G04C05r7ORkBb03EF63N9/TIaTC6TyQ1d4VzhKbrtOMtqB75B
         B7Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=wm3e/GudIY4CFcSu4JmDcDTx62vpcEZtIPuR6T7tv50=;
        b=Dn20y9OqpvJ6Y4YtzIXNZbtUQO6e97gCa3CKoWz4+KRjY7XzMGWvZrtBhpzHSYuEW4
         S+3cAmlBkqjzLDxgUv3Kj+k4prVx2Or5pwWrQLEXxkJHWcVuBrndUo7t+M8ne7IF/nu9
         pRuIyrG6ds8nfTd19OteOaZ4xnSnliihXlH4awI0/JKLghxrjq1gRjAv+XdNJVSj/96e
         YCXsSNBrpetXFWgoy2cDw39f59UtLy8YYqG3Dz5Jrv1OrxuAjbe/sPAv/JlK+ngQlIaZ
         aXD1APem+b/L1/z6WblzFOVq8gJdJ1zKGx7MJxo/TkdPx9PA53hORYw4rtSPsfVV9KVh
         sYDw==
X-Gm-Message-State: AA+aEWa0+j4CRt0K237lVIY0rOIsY99Tw15tZQZYV6RH5DeeIx/8UqKE
	56wYhRF/0d+xbSePltErNyCis3oZ
X-Google-Smtp-Source: AFSGD/VR9Mz/Ox9EMcTM9FTS3TmXF3M1SJ9jw3ihA9wWzVHyKAEpjzefuGFaAREKyIUyX6HBIZWKKA==
X-Received: by 2002:a17:902:9897:: with SMTP id s23mr5990209plp.69.1544288660532;
        Sat, 08 Dec 2018 09:04:20 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
In-Reply-To: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
Message-Id: <F8409406-8B47-4C23-B934-7FA38B940135@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Date: Sat, 8 Dec 2018 09:04:17 -0800
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg321: Out-of-bounds Write
To: oss-security@lists.openwall.com


> On Dec 7, 2018, at 19:16, Ren Kimura <rkx1209dev@gmail.com> wrote:
>=20
> Hi.
> mpg321 is a free command-line mp3 player that is commonly available on
> many Linux distributions.
> For example, in ubuntu you can download the latest mpg321 by "apt-get
> install mpg321."
>=20
> latest mpg321 0.3.2, in scan() in mad.c calculate the number of frames
> using bit rate.
> If crafted mp3 whose bit rate equal 0 is taken, sampling time become
> INF value due to floating point division by 0.
> As a result, the frame number become a very large (1<<63), leading out
> of bounds write, memory corruption at mad.c:285.
> note. frames buffer have been allocated only 8-byte at mpg321.c:990.

Did you report this one upstream? In trying to understand this, it looks to=
 me like the problem isn=E2=80=99t that mpg321 fails to check the bitrate i=
s positive, but rather that there=E2=80=99s an unchecked malloc elsewhere.

The point where the OOB write occurs (mad.c:285) looks like the following:

    282     /* update cached table of frames & times */
    283     if (current_frame <=3D playbuf->num_frames) /* we only allocate=
 enough for our estimate. */
    284     {
    285         playbuf->frames[current_frame] =3D playbuf->frames[current_=
frame-1] + (header->bitrate / 8 / 1000)
    286             * mad_timer_count(header->duration, MAD_UNITS_MILLISECO=
NDS);
    287         playbuf->times[current_frame] =3D current_time;

At this point, header->bitrate is 0 and playbuf->num_frames is the correct =
limit to check against for this buffer. The problem seems to stem from the =
point at which playbuf->frames was allocated (mpg321.c:990):

    985             if ((options.maxframes !=3D -1) && (options.maxframes <=
=3D playbuf.num_frames))
    986             {
    987                 playbuf.max_frames =3D options.maxframes;
    988             }
    989
    990             playbuf.frames =3D malloc((playbuf.num_frames + 1) * si=
zeof(void*));
    991             playbuf.times =3D malloc((playbuf.num_frames + 1) * siz=
eof(mad_timer_t));
    992 #ifdef __uClinux__
    993       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MAP_PR=
IVATE, fd, 0)) =3D=3D MAP_FAILED)
    994 #else
    995       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MAP_SH=
ARED, fd, 0)) =3D=3D MAP_FAILED)
    996 #endif

At this point, playbuf.num_frames is whatever the your platform happens to =
yield when =E2=88=9E is cast to a long (undefined behavior in C). AFAICT th=
ere is no check that malloc succeeded before the code later writes to the f=
rames array (the same applies to playbuf.times). Poking around a bit more, =
this (unchecked malloc) seems common in the code.

I=E2=80=99m not familiar with the mpg321 code base and the above is based o=
n a cursory inspection, so please correct me if I am wrong.=
