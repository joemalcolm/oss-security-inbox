Received: (qmail 25750 invoked by uid 550); 31 Oct 2024 17:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21661 invoked from network); 31 Oct 2024 17:38:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1730396321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NI2EjtyEAEjl8RDRYtwlz7VkU24hYr0UCSrck0K+Ylc=;
	b=JHjje5XmOpWq7ydddgCw0DgCjhX+Xq0jldVC/5iEoXBnLubsUDGTlCSrXyiz+kfd5S/Rpq
	ylUvZl/cgLkj0BiJAPYUDWkiLUm8xduYB0FINnnd1C/pMziUZ6N4yD9zK8CSmGO3Id2Cux
	QtV5JLT+glzAU63x3hntVEyYcLZtvM4=
X-MC-Unique: T2KqAYX5OS6d5X19MPxYkg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730396317; x=1731001117;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NI2EjtyEAEjl8RDRYtwlz7VkU24hYr0UCSrck0K+Ylc=;
        b=xKgJzzau6/i0oaPhg2LpX2x2Gx+uhcNul2zz4ZDIgRBweG1y3Qk2S/ba4O2A8abOPH
         rPfA7irNDcck7JcopmVF9hRK0U80ShnFauWA1fSOnfgs1YmcivL56D0MjM4s98Wp7p93
         fQ/96g5HdqVVmiw4m7XJIY3XFXEUkMdRyGUHiRdWIjWr9Lnd7FOsMBkerbl25naE1sMi
         jbZs3Rr7JaeKOiITqoxBanxnccmIF+hVpKoD4Yvit9RM6HAAzFdzz9Qn8SK/J+WSFfxm
         Iz4ByGH66c6z73Fdz8SuJ5gG5ls3WVKIOEXjkDK4ayCoh60PEjZKrYuXkhhuCNg1M6Vz
         /Qag==
X-Gm-Message-State: AOJu0YyOoShNRYLgk/LN0BySnrwgszyn4mctx8L7pNIKdJdZbxwwvLZc
	IFHMfQOQoONpJ2P1QpXW7QXN49OfAhhmvNqkUJhpXGKeQkke00pJ2MhxrPHiZPJRSOVrOD1rRoV
	LVAaAJX+qUPM0UI8/6KU9rQdfciBKTmsm1MMYGltfqaPQ6qX05LgtDaj+3wjCbBwfzWFZz7XyXQ
	qeAo6xkB06Qhpey5KW6yNkjHxW9OWqOCoIHFiNWJ5TusSaFaRkO98=
X-Received: by 2002:a17:90b:344:b0:2db:89f0:99a3 with SMTP id 98e67ed59e1d1-2e8f11bc3a4mr21240261a91.26.1730396317597;
        Thu, 31 Oct 2024 10:38:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjsItDtYaYjnTyLld4ptH7W9PhgpbYrxjT61jeBm7+4QcUfMSPu4dhiaUNiUrfCa+5/Zvxs1U/j4igMG2+ab8=
X-Received: by 2002:a17:90b:344:b0:2db:89f0:99a3 with SMTP id
 98e67ed59e1d1-2e8f11bc3a4mr21240235a91.26.1730396317015; Thu, 31 Oct 2024
 10:38:37 -0700 (PDT)
MIME-Version: 1.0
References: <20241030183237.4e46db4f@plasteblaster> <CAOGQQ28MtkwOyqSZNw7pnTqD3chm9q7q6b9H_MFNE9zRHPoMsQ@mail.gmail.com>
In-Reply-To: <CAOGQQ28MtkwOyqSZNw7pnTqD3chm9q7q6b9H_MFNE9zRHPoMsQ@mail.gmail.com>
From: Marco Benatto <mbenatto@redhat.com>
Date: Thu, 31 Oct 2024 14:38:00 -0300
Message-ID: <CAOGQQ28MhqvZF9Jq8Hka-jyZzmhxey6riwAwn-4uxL8PKn6hWg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] mpg123 buffer overflow in versions before 1.32.8
 (Frankenstein's Monster)

Hello,

I just filed the details for the CVE above.

Description:
There's a out-of-bounds write issue in mpg123, the vulnerability is
located when handling crafted streams. During the decoding of PCM the
libmpg123 may write past the end of a heap located buffer, as
consequence heap corruption may happen and arbitrary code execution is
not discarded. The complexity required to exploit this flaw is
considered high as the payload needs to be validated by the MPEG
decoder and by the PCM synth before being executed. Additionally to
successfully execute the attack,the user needs to scan through the
stream making web live stream content (such as web radios) a very
unlikely attack vector.

CVSS: 6.7 CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:H

Severity (according to the Red Hat severity policy): Moderate

Please let me know if there's any concern or different opinion
regarding the scoring or description of this issue.

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

On Wed, Oct 30, 2024 at 8:00=E2=80=AFPM Marco Benatto <mbenatto@redhat.com>=
 wrote:
>
> Hello,
>
> I went ahead and assigned CVE-2024-10573 for this issue.
> I'll try to come up with the cvss and severity analysis by tomorrow.
>
> Please let me know if there's anything else I could help with.
>
> Thanks,
>
> Marco Benatto
> Red Hat Product Security
> secalert@redhat.com for urgent response
>
> On Wed, Oct 30, 2024 at 2:42=E2=80=AFPM Dr. Thomas Orgis
> <thomas.orgis@uni-hamburg.de> wrote:
> >
> > Dear list,
> >
> > as upstream of mpg123, I recently fixed a possibly serious issue that
> > resulted in writing past a buffer on the heap under certain use cases.
> > The fixed release is 1.32.8.
> >
> > There is no CVE for this (that I know of). If someone allocates one,
> > I'd be fine with that, but I am prioritizing my time in coordination
> > with demanding RL and focussed on getting the fix prepared. The bug
> > report
> >
> >         https://mpg123.org/bugs/322
> >
> > has always been public, so I got the fix out and decided that I do
> > spend a moment on this note here, seeing that distros still ship
> > vulnerable versions, notably Debian stable / oldstable =C2=AD=E2=80=94 =
despite
> > the unstable repo duly having picked up my new release. I guess if
> > there is no CVE to grep in announcements people don't notice that it's
> > an important security fix? My bad, then =E2=80=A6
> >
> > Observing that versions 1.26.x and 1.31.x are still in the wild, I
> > ported the recent security fix to those release series. Please see
> > recent commits to
> >
> >         svn://scm.orgis.org/mpg123/branches/1.26-fixes and
> >         svn://scm.orgis.org/mpg123/branches/1.31-fixes
> >
> > Current code is also visible under
> >
> >         https://scm.orgis.org/mpg123/branches/1.26-fixes/ and
> >         https://scm.orgis.org/mpg123/branches/1.31-fixes/
> >
> > I am quoting the initial release announcement, also avaiable under
> >
> >         https://mpg123.org/cgi-bin/news.cgi#2024-10-26
> >
> > Releasing mpg123 version 1.32.8: Frankenstein's Monster
> >
> > This is an important security update! There is possible buffer overflow
> > (writing of decoded PCM samples beyond allocated output buffer) for
> > streams that change output properties together with certain usage of
> > libmpg123. This needed seeking around in the stream (including scanning
> > it before actual decoding) to trigger. So, your usual web radio stream
> > as obvious attack vector is unlikely, as you won't seek around in it.
> > If you do work with stream dumps, usage of MPG123_NO_FRANKENSTEIN or
> > the --no-frankenstein option to the mpg123 application is a workaround
> > to avoid the formerly dangerous situation in earlier mpg123 releases.
> > This also means that mpg123 will not decode streams of concatenated
> > files with either varying format or leading Info frames past the first
> > track anymore.
> >
> > With this release, the parser has been improved not to store certain
> > stream properties before actual MPEG frame data matching that property
> > has been stored. This avoids the inconsistency that triggered the
> > overflow. Also note that if you always use a fixed decoding buffer for
> > full stereo of the maximum of 1152 samples per frame, times two and
> > your choice of encoding, your application is also not susceptible.
> >
> > Exploitation of this is not trivial, but I cannot rule out the
> > possibility of gaining code execution. Your exploit payload needs to
> > pass through an MPEG decoder and PCM synth before possibly reaching the
> > CPU. Some heap corruption can follow at the least. So update or
> > mitigate. If you run 1.32.x, there is no excuse not to get the the
> > latest bugfix release now.
> >
> > Basically any version of mpg123 is affected by this, at least those
> > that explicitly support so-called Frankenstein streams.
> >
> > Thanks to kkkkk123 for bringing this heir to the initial bug 322 to my
> > attention.
> >
> >
> > Alrighty then,
> >
> > Thomas
> >
> > --
> > Dr. Thomas Orgis
> > HPC @ Universit=C3=A4t Hamburg
> >

