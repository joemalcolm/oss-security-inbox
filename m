X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3097" "Sunday" "9" "December" "2018" "18:11:00" "-0500" "Ren Kimura" "rkx1209dev@gmail.com" "<CALoRt7RdH+PYW9TDmzX1bSZhiPqEbQdCgGEJ9VWZnKLrBftCLA@mail.gmail.com>" "70" "[oss-security] Re: mpg321: Out-of-bounds Write" "^Date:" nil nil "12" "2018120923:11:00" "[oss-security] Re: mpg321: Out-of-bounds Write" (number mark "U       rkx1209dev@g Dec  9   70/3097  " thread-indent "\"[oss-security] Re: mpg321: Out-of-bounds Write\"\n") "<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>" ("<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30226 invoked by uid 550); 10 Dec 2018 09:10:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11806 invoked from network); 9 Dec 2018 23:11:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ou26gUIACXbz/4zl4PnJHh1MS1wwjhXreKb1wOcH0TU=;
        b=eL0L/IgHwtcm7achZzjFyTSw32XLUMpQIBVz/Qnwe9YVLG/26r1ZkVhexpDg/qvJfY
         7f9OUvuc4jPVwGpT6+NllZ7VEWDdJyqZQGKyQySeJhadpWTdxfhi4ihoHLT/BsL/N3ok
         VeT15/ZJvDzAmyx68yaNUa4zVM7+RBRmxnGGtGq/5mXZAOAd2bd9iylteE/V9OGaFLU5
         SKGKQLSVpQYjBzc1FSDiXmbiMpDtVcF6+P+wF2Ws3rMXrVDbinJXf2BUQ3dYYyhzhRKw
         28e0SOCXQf/H++gNtCa0C6I/ePCjrcQgERkTJ0lt9evILIXkA4ILXjy1Rl1l6UvMyfsK
         t+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=ou26gUIACXbz/4zl4PnJHh1MS1wwjhXreKb1wOcH0TU=;
        b=MBe24B/4ZTUIWbp82LKMbRW1aHyuz1txzdTx+pwMQree0echO5Q+9yRYXvskvlEJsq
         2bgRSmWf7SP+XDHWf3/Tk8dXvcxxLLS1tcia4xvVnaqVEPXo1OEfpO/9ENMK7QGrNbCB
         LTQXLnVyxn78cmL45KZXIKnmVWHFoIJhSSMeJjUZ9v5kF2+gbwm7WAcceeT0BYRu6lbB
         w+IOnwJ0TfCu6As1J+4iqGJZ4/C2yYAsNe+k50NyX7s3pC4a4bozmGdoDCZ6UkHacQ01
         /Uryb7BP6yAhpUtvHbbq5gjulZGqebhSzp8pZcvXfvsk7c3WaCkLRcT8Qte7qmSFXpQ7
         VKmA==
X-Gm-Message-State: AA+aEWZ4pPhRqJrNKwFlqRB5oNe3j1pAiYHFdVUvl47YzIVtiP5IHfCm
	B2uadTs9VIp1k7qBZ6WdAAwFgIDxvSjA5vX2v2On+U2H
X-Google-Smtp-Source: AFSGD/WyxfvIw0OzKWB7ol7u1YzG+Sq1zRIAfC/9mYcV0n6cDlppFzp3LgaZrFyBELjyua+uITr38cDIs6RfQY0iJMg=
X-Received: by 2002:a67:6e87:: with SMTP id j129mr4464420vsc.171.1544397071572;
 Sun, 09 Dec 2018 15:11:11 -0800 (PST)
MIME-Version: 1.0
References: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
In-Reply-To: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
Message-ID: <CALoRt7RdH+PYW9TDmzX1bSZhiPqEbQdCgGEJ9VWZnKLrBftCLA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Sun, 9 Dec 2018 18:11:00 -0500
From: Ren Kimura <rkx1209dev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mpg321: Out-of-bounds Write
To: oss-security@lists.openwall.com, matthew.fernandez@gmail.com

> Did you report this one upstream? In trying to understand this, it looks =
to me like the problem isn=E2=80=99t that mpg321 fails
> to check the bitrate is positive, but rather that there=E2=80=99s an unch=
ecked malloc elsewhere.
>
> The point where the OOB write occurs (mad.c:285) looks like the following:
>
>    282     /* update cached table of frames & times */
>    283     if (current_frame <=3D playbuf->num_frames) /* we only allocat=
e enough for our estimate. */
>    284     {
>    285         playbuf->frames[current_frame] =3D playbuf->frames[current=
_frame-1] + (header->bitrate / 8 / 1000)
>    286             * mad_timer_count(header->duration, MAD_UNITS_MILLISEC=
ONDS);
>    287         playbuf->times[current_frame] =3D current_time;
>
> At this point, header->bitrate is 0 and playbuf->num_frames is the correc=
t limit to check against for this buffer. The
> problem seems to stem from the point at which playbuf->frames was allocat=
ed (mpg321.c:990):

>    985             if ((options.maxframes !=3D -1) && (options.maxframes =
<=3D playbuf.num_frames))
>    986             {
>    987                 playbuf.max_frames =3D options.maxframes;
>    988             }
>    989
>    990             playbuf.frames =3D malloc((playbuf.num_frames + 1) * s=
izeof(void*));
>    991             playbuf.times =3D malloc((playbuf.num_frames + 1) * si=
zeof(mad_timer_t));
>    992 #ifdef __uClinux__
>    993       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MAP_P=
RIVATE, fd, 0)) =3D=3D MAP_FAILED)
>    994 #else
>    995       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MAP_S=
HARED, fd, 0)) =3D=3D MAP_FAILED)
>    996 #endif
>
> At this point, playbuf.num_frames is whatever the your platform happens t=
o yield when =E2=88=9E is cast to a long (undefined
> behavior in C). AFAICT there is no check that malloc succeeded before the=
 code later writes to the frames array (the
> same applies to playbuf.times). Poking around a bit more, this (unchecked=
 malloc) seems common in the code.

checking malloc status is not enough, because playbuf.num_frames can
be very large value, in my environment Ubuntu 18.04, gcc 7.03,
it becomes 0x8000000000000000.
990             playbuf.frames =3D malloc((playbuf.num_frames + 1) *
sizeof(void*));
So at this point it try to calculate (0x8000000000000000 + 1) * 8 =3D
0x8 (INTEGER OVERFLOW).
As a result malloc succeed but it only allocate 0x8 byte buffer, lead
OOB write at following points.

283     if (current_frame <=3D playbuf->num_frames) /* we only allocate
enough for our estimate. */
285         playbuf->frames[current_frame] =3D
playbuf->frames[current_frame-1] + (header->bitrate / 8 / 1000)
286             * mad_timer_count(header->duration, MAD_UNITS_MILLISECONDS);
287         playbuf->times[current_frame] =3D current_time;

The value of playbuf.num_frames may depend on platform because it's
calculated from INF value. (undefined behavior)
I only tried to Ubuntu package of mpg321 (may be compiled by gcc?). At
least on ubuntu, OOB write always happen due to above reason.

Ren Kimura
