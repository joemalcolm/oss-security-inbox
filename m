X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3570" "Monday" "10" "December" "2018" "15:45:14" "-0500" "Ren Kimura" "rkx1209dev@gmail.com" "<CALoRt7T8LLCCU5svHOuPfr9dZ+UV_B4WaQZruByMnkjkcLDypg@mail.gmail.com>" "86" "[oss-security] Re: mpg321: Out-of-bounds Write" "^Cc:" nil nil "12" "2018121020:45:14" "[oss-security] Re: mpg321: Out-of-bounds Write" (number mark "U       rkx1209dev@g Dec 10   86/3570  " thread-indent "\"[oss-security] Re: mpg321: Out-of-bounds Write\"\n") "<CAON6N-X1hLhsrS8_v12UGkuuYLhYeoNT3TAFeN3hw99_M5B0yw@mail.gmail.com>" ("<CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>" "<CALoRt7RdH+PYW9TDmzX1bSZhiPqEbQdCgGEJ9VWZnKLrBftCLA@mail.gmail.com>" "<CAON6N-X1hLhsrS8_v12UGkuuYLhYeoNT3TAFeN3hw99_M5B0yw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5594 invoked by uid 550); 10 Dec 2018 20:54:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32078 invoked from network); 10 Dec 2018 20:45:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nPxtDY2N1veQqPiaYRERi233iLxoQJKe9GZVMYXaBYo=;
        b=AAIXe4sab8bwNKcIKUD7uXykn//4F7atbp/6Ru4sSDs7HRemnuiX/7hm708dPwYuUj
         75v6x+fi1gHlSYxXzXQqpGK58u6aC5sfo/3diPljQuoBRp4pP1FL7+O8rpbddK7LENQx
         qdrjxLOtYjarJm1/0ruFxsQcOc9kRPmeVxBZ/RYu84sdxW2wRmDXdQKB28ns3F1UZarb
         Pns8WviQCyaXr9TWBUWxKB4EPYLrDxrDeOtQUL4cvpRVV/I9Q+igQ4hnsdBs1+Pl7ptf
         AS4h39gwbsUiQveez1e3RdFMn7JHcSwbcNrvlHRJMwxo5saoVooILMBngflUEwVVqJyg
         14mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nPxtDY2N1veQqPiaYRERi233iLxoQJKe9GZVMYXaBYo=;
        b=WBjlMzsS/khDuOCC2n7agO3yOxNcK2MaOWtB3+YlN04/TYCKkAVgZGcHnxW56xaeq/
         V3zibWaLW6HR+raL0z7Bq29NTb2XknhYljZzvnHk8YLWQRYI7n7tP4yKSwHJvAO89gOE
         wYV4RxAqlqLzLICIRgARfhWbvkH6mQ1R0FPIvUY6bxmzVSeYRprQeUjJIoh+o5zdrppS
         T/b1fyaM1dxZ+CH5H13879gXGrSN8/19WEEFTsEwxktSoGcrjXQX7JJx6GeFhnIZ//TP
         Xr/uRsSr7lGTciwAq1ii2POtjpOiGH1nlhe4bggXyjoZx0C3lL1gi+Hlpw4VLrUCF0Qm
         EvLg==
X-Gm-Message-State: AA+aEWa6o4FRJIrVAW3iraSdYFvA5aKrRjBXvyFihmGhNa9JydivyScx
	fJVpXDRoQW0vl1ncq9Wdld6B6BhNaVIakyldLIU=
X-Google-Smtp-Source: AFSGD/VHrVqGjRwrHV5k4mm9Q59g5tlOONJB9xgxxUFKi/QV1rUq2Iug2nS4N1WWi87btQ95AT/izK7xxKHtRQ3h5Bs=
X-Received: by 2002:a67:2a83:: with SMTP id q125mr6018478vsq.230.1544474726153;
 Mon, 10 Dec 2018 12:45:26 -0800 (PST)
MIME-Version: 1.0
References: <CALoRt7TAYGsPRWqtDqJ4dyKfV1O634qYfbq9pDU_X1K=A9ONgQ@mail.gmail.com>
 <CALoRt7RdH+PYW9TDmzX1bSZhiPqEbQdCgGEJ9VWZnKLrBftCLA@mail.gmail.com> <CAON6N-X1hLhsrS8_v12UGkuuYLhYeoNT3TAFeN3hw99_M5B0yw@mail.gmail.com>
In-Reply-To: <CALoRt7RdH+PYW9TDmzX1bSZhiPqEbQdCgGEJ9VWZnKLrBftCLA@mail.gmail.com>
Message-ID: <CALoRt7T8LLCCU5svHOuPfr9dZ+UV_B4WaQZruByMnkjkcLDypg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Mon, 10 Dec 2018 15:45:14 -0500
From: Ren Kimura <rkx1209dev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: mpg321: Out-of-bounds Write
To: Matthew Fernandez <matthew.fernandez@gmail.com>

2018=E5=B9=B412=E6=9C=8810=E6=97=A5(=E6=9C=88) 12:44 Matthew Fernandez <mat=
thew.fernandez@gmail.com>:
>
>
>
> On Sun, 9 Dec 2018 at 15:11, Ren Kimura <rkx1209dev@gmail.com> wrote:
>>
>> > Did you report this one upstream? In trying to understand this, it loo=
ks to me like the problem isn=E2=80=99t that mpg321 fails
>> > to check the bitrate is positive, but rather that there=E2=80=99s an u=
nchecked malloc elsewhere.
>> >
>> > The point where the OOB write occurs (mad.c:285) looks like the follow=
ing:
>> >
>> >    282     /* update cached table of frames & times */
>> >    283     if (current_frame <=3D playbuf->num_frames) /* we only allo=
cate enough for our estimate. */
>> >    284     {
>> >    285         playbuf->frames[current_frame] =3D playbuf->frames[curr=
ent_frame-1] + (header->bitrate / 8 / 1000)
>> >    286             * mad_timer_count(header->duration, MAD_UNITS_MILLI=
SECONDS);
>> >    287         playbuf->times[current_frame] =3D current_time;
>> >
>> > At this point, header->bitrate is 0 and playbuf->num_frames is the cor=
rect limit to check against for this buffer. The
>> > problem seems to stem from the point at which playbuf->frames was allo=
cated (mpg321.c:990):
>>
>> >    985             if ((options.maxframes !=3D -1) && (options.maxfram=
es <=3D playbuf.num_frames))
>> >    986             {
>> >    987                 playbuf.max_frames =3D options.maxframes;
>> >    988             }
>> >    989
>> >    990             playbuf.frames =3D malloc((playbuf.num_frames + 1) =
* sizeof(void*));
>> >    991             playbuf.times =3D malloc((playbuf.num_frames + 1) *=
 sizeof(mad_timer_t));
>> >    992 #ifdef __uClinux__
>> >    993       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MA=
P_PRIVATE, fd, 0)) =3D=3D MAP_FAILED)
>> >    994 #else
>> >    995       if((playbuf.buf =3D mmap(0, playbuf.length, PROT_READ, MA=
P_SHARED, fd, 0)) =3D=3D MAP_FAILED)
>> >    996 #endif
>> >
>> > At this point, playbuf.num_frames is whatever the your platform happen=
s to yield when =E2=88=9E is cast to a long (undefined
>> > behavior in C). AFAICT there is no check that malloc succeeded before =
the code later writes to the frames array (the
>> > same applies to playbuf.times). Poking around a bit more, this (unchec=
ked malloc) seems common in the code.
>>
>> checking malloc status is not enough, because playbuf.num_frames can
>> be very large value, in my environment Ubuntu 18.04, gcc 7.03,
>> it becomes 0x8000000000000000.
>> 990             playbuf.frames =3D malloc((playbuf.num_frames + 1) *
>> sizeof(void*));
>> So at this point it try to calculate (0x8000000000000000 + 1) * 8 =3D
>> 0x8 (INTEGER OVERFLOW).
>> As a result malloc succeed but it only allocate 0x8 byte buffer, lead
>> OOB write at following points.
>>
>> 283     if (current_frame <=3D playbuf->num_frames) /* we only allocate
>> enough for our estimate. */
>> 285         playbuf->frames[current_frame] =3D
>> playbuf->frames[current_frame-1] + (header->bitrate / 8 / 1000)
>> 286             * mad_timer_count(header->duration, MAD_UNITS_MILLISECON=
DS);
>> 287         playbuf->times[current_frame] =3D current_time;
>>
>> The value of playbuf.num_frames may depend on platform because it's
>> calculated from INF value. (undefined behavior)
>> I only tried to Ubuntu package of mpg321 (may be compiled by gcc?). At
>> least on ubuntu, OOB write always happen due to above reason.
>>
>> Ren Kimura
>
> Did you report this upstream?

Yes. I've reported it to Ubuntu security team.
But there is no response yet.

Ren Kimura
