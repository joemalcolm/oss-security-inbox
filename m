Received: (qmail 26453 invoked by uid 550); 30 Oct 2024 23:22:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30121 invoked from network); 30 Oct 2024 23:01:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1730329275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PTnph8ifdyLkhntYdWH+GMj74ditzolz5B1FdUNwcG8=;
	b=gucL/q+gEEm8qT091z2filK38QG161UylK4Dsu3vn2XE7pLsdCv2g7eEJ7fYE/yKj2Q9nQ
	uo58NFpCaHlW5Zf7LQQX5y3lgYrt30eRfkdlfdTKg6+3uoGd773jwCjin3sVy0NBGA42Cx
	Log2Afqoqtw+riPQsXSLwBT0K8k9gVo=
X-MC-Unique: y4CnZVgGOiuZWI0bnM3o-g-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730329272; x=1730934072;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PTnph8ifdyLkhntYdWH+GMj74ditzolz5B1FdUNwcG8=;
        b=SL9ZUrJTZwcOsvCpU8A8I0KHGCmIX3308Rk+a81hIL2QnT0s7q5ELjw0HFuJ4HJPhe
         FcEFn2zdP1UucxGI8tUAhhIDjajFPNOfXKbRRwTiEKcTWxfsrPfKaT6zAgdayGvRffmk
         ys6fQ2W9zvnmbfGTErzpm+QxwCPSm6Nv4Top5ogPxJ3cEczWcUFsEftMV3JNaj8LYSVe
         RC6Ff/kRBy47uiXKJAczaW7QqYzAxjrcWra/Y6/+LEs6y+r5bsbu3VV5EhODkIj9MBeo
         wYrSSsIhMwDx/sgQbh67GebYshZRnnDQKdkaGXSzBQ7YO498g5B4urZamV2QTOf29xla
         aRiw==
X-Gm-Message-State: AOJu0YzWlAxqc4PBCz3nhndqU4RG6Nv777YeGvXVtVAP6Q3mxxBK2Sz2
	vrTDtYdllMCDxDpfYxpjUyYjYqxlq7BC4K7f/gwNyAlRwBc3SwcxnPLIA4VRFO/GBIfmzScQ9Ro
	vuslrT2bLh/HMf8+3zS41FkF1owD6t/PRIetq+kxJBNBKJ93ua0lFFcTvyPUOZUSlSbHwb0B8Pp
	QglONVuRwOIy9uJwck2+IFD7wkR0Rr+AtFa33C2OB69n8bf7Y6xIE=
X-Received: by 2002:a17:90b:b0b:b0:2e2:d74f:65b6 with SMTP id 98e67ed59e1d1-2e8f105e9e3mr19287015a91.10.1730329272533;
        Wed, 30 Oct 2024 16:01:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMoiYAw6ViFpSkqUETFqUUh/7cvPAFGetWH1XJtDaScwNhpqvyvvuM6RIKJKZMn+X3tMY2Bu/jGR8kYOF4l1Q=
X-Received: by 2002:a17:90b:b0b:b0:2e2:d74f:65b6 with SMTP id
 98e67ed59e1d1-2e8f105e9e3mr19286973a91.10.1730329272025; Wed, 30 Oct 2024
 16:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20241030183237.4e46db4f@plasteblaster>
In-Reply-To: <20241030183237.4e46db4f@plasteblaster>
From: Marco Benatto <mbenatto@redhat.com>
Date: Wed, 30 Oct 2024 20:00:35 -0300
Message-ID: <CAOGQQ28MtkwOyqSZNw7pnTqD3chm9q7q6b9H_MFNE9zRHPoMsQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] mpg123 buffer overflow in versions before 1.32.8
 (Frankenstein's Monster)

Hello,

I went ahead and assigned CVE-2024-10573 for this issue.
I'll try to come up with the cvss and severity analysis by tomorrow.

Please let me know if there's anything else I could help with.

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

On Wed, Oct 30, 2024 at 2:42=E2=80=AFPM Dr. Thomas Orgis
<thomas.orgis@uni-hamburg.de> wrote:
>
> Dear list,
>
> as upstream of mpg123, I recently fixed a possibly serious issue that
> resulted in writing past a buffer on the heap under certain use cases.
> The fixed release is 1.32.8.
>
> There is no CVE for this (that I know of). If someone allocates one,
> I'd be fine with that, but I am prioritizing my time in coordination
> with demanding RL and focussed on getting the fix prepared. The bug
> report
>
>         https://mpg123.org/bugs/322
>
> has always been public, so I got the fix out and decided that I do
> spend a moment on this note here, seeing that distros still ship
> vulnerable versions, notably Debian stable / oldstable =C2=AD=E2=80=94 de=
spite
> the unstable repo duly having picked up my new release. I guess if
> there is no CVE to grep in announcements people don't notice that it's
> an important security fix? My bad, then =E2=80=A6
>
> Observing that versions 1.26.x and 1.31.x are still in the wild, I
> ported the recent security fix to those release series. Please see
> recent commits to
>
>         svn://scm.orgis.org/mpg123/branches/1.26-fixes and
>         svn://scm.orgis.org/mpg123/branches/1.31-fixes
>
> Current code is also visible under
>
>         https://scm.orgis.org/mpg123/branches/1.26-fixes/ and
>         https://scm.orgis.org/mpg123/branches/1.31-fixes/
>
> I am quoting the initial release announcement, also avaiable under
>
>         https://mpg123.org/cgi-bin/news.cgi#2024-10-26
>
> Releasing mpg123 version 1.32.8: Frankenstein's Monster
>
> This is an important security update! There is possible buffer overflow
> (writing of decoded PCM samples beyond allocated output buffer) for
> streams that change output properties together with certain usage of
> libmpg123. This needed seeking around in the stream (including scanning
> it before actual decoding) to trigger. So, your usual web radio stream
> as obvious attack vector is unlikely, as you won't seek around in it.
> If you do work with stream dumps, usage of MPG123_NO_FRANKENSTEIN or
> the --no-frankenstein option to the mpg123 application is a workaround
> to avoid the formerly dangerous situation in earlier mpg123 releases.
> This also means that mpg123 will not decode streams of concatenated
> files with either varying format or leading Info frames past the first
> track anymore.
>
> With this release, the parser has been improved not to store certain
> stream properties before actual MPEG frame data matching that property
> has been stored. This avoids the inconsistency that triggered the
> overflow. Also note that if you always use a fixed decoding buffer for
> full stereo of the maximum of 1152 samples per frame, times two and
> your choice of encoding, your application is also not susceptible.
>
> Exploitation of this is not trivial, but I cannot rule out the
> possibility of gaining code execution. Your exploit payload needs to
> pass through an MPEG decoder and PCM synth before possibly reaching the
> CPU. Some heap corruption can follow at the least. So update or
> mitigate. If you run 1.32.x, there is no excuse not to get the the
> latest bugfix release now.
>
> Basically any version of mpg123 is affected by this, at least those
> that explicitly support so-called Frankenstein streams.
>
> Thanks to kkkkk123 for bringing this heir to the initial bug 322 to my
> attention.
>
>
> Alrighty then,
>
> Thomas
>
> --
> Dr. Thomas Orgis
> HPC @ Universit=C3=A4t Hamburg
>

