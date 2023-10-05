Received: (qmail 9949 invoked by uid 550); 6 Oct 2023 09:40:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1401 invoked from network); 5 Oct 2023 21:28:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696541318; x=1697146118; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R5b7dt92T02EXgPxasAP94F+5aXQ4j8HbwaxjsRckJE=;
        b=SwLzMhwaopk57lBFxki7VNmTB0LB8ntujkqqlhpEmRnOgJWk37VMtz37Z44TKXdb90
         gmT3D1CGmUeFr15AsYhS4Jf0Dp5qEH1F2C+p5r4lRoP3qGh7AojIprory+oETx9kWqeu
         yyTN+RrYs2gBYrWUVJKVku+TaDFM+QvS3hbRZgTmqErpBX47IwA8DJ4TBh0WOTsb8u1m
         iqyY+o+yRiDagSwzX/LTdSFn5+Rm+OfVg8A3ycSq0bvcJ+ElksznljMOuYYsP1vjJDJ4
         e3naiDSN8yw2yBq9zuJ+KOZDEjosfVTinloD1zAVLCpfhcgQqhS2klhNR6NBK9BjFYKv
         cSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696541318; x=1697146118;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5b7dt92T02EXgPxasAP94F+5aXQ4j8HbwaxjsRckJE=;
        b=J0mCe6obZfaHyslkqU+n1utos+J7gvnZSpsss4sgRQ/2CjrmtwTknNT2lCEXlpXih5
         ppcs9hGnqaGsraLDHhqwcfZi2L9LjJfH/xwCDD5tu8tHHmDF9FXDtAp5mCIxekPj3BGo
         idAKW9z6dRiorIaEjJ9IwEjW0KH+URsc4Nz8S/a83vko5sTNOtJ5YviWtvWTLNDNeXNv
         CGVKM+ncBCX3Ix0xvLMH23HCrkRREmB7HMd3zm6FakjMbOKzYpcnXW2ZmdnF2IM3MpIS
         bEXBA6cRv85vnS96z6d4Va0tkrtZwds/RPPO8UR7oJNrCAh0MJ16vjz3BrYgCYaRIBVY
         APxQ==
X-Gm-Message-State: AOJu0Yz9XbXwrprxUft/6JyjIgd4bGiK86l/7bWFJU6BDBI0iGh9H9FS
	HrRP1drK5ApgG4iDAn+aJutIPOMl0iusUnFweKaOh6I+
X-Google-Smtp-Source: AGHT+IGUFHV+qrKSiCgL51nFppOD9jHSTLwaf4OcQ7U3BTutcUyTphl++HIauB0fc4mxw7D9GS5AUI9rnTpvWNlwaCk=
X-Received: by 2002:a81:4e47:0:b0:59f:52a1:254c with SMTP id
 c68-20020a814e47000000b0059f52a1254cmr7246595ywb.19.1696541317866; Thu, 05
 Oct 2023 14:28:37 -0700 (PDT)
MIME-Version: 1.0
References: <20231001191303.GA8910@openwall.com> <20231005055957.GB12482@1wt.eu>
In-Reply-To: <20231005055957.GB12482@1wt.eu>
From: Jean Luc Picard <atari2600a@gmail.com>
Date: Thu, 5 Oct 2023 21:28:26 +0000
Message-ID: <CADxcaYUjjVmubF+VBTEZH=xF32S4ERDSzK-765zNpuTDQ++UZQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000992a7e0606fece14"
Subject: Re: [oss-security] "Linux Kernel security demistified"

--000000000000992a7e0606fece14
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey just dropping in as I do, I really appreciated the talk once it hit the
linux foundations channel & I got to watching it.  It flowed really really
well, Very thought-provoking to the point of making the whole thing seem
like 15 minutes rather than an hour.  I haven't been as enamered with a
discussion of security philosophy since I watched CISSP test-prep so I
could crash-course CISSP without having to actually pay for it (for fun).

On Thu, Oct 5, 2023 at 6:02=E2=80=AFAM Willy Tarreau <w@1wt.eu> wrote:

> Hi Alexander,
>
> On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> > I wonder whether the kernel documentation could, however, be encouraging
> > rather than discouraging (as it currently is) about issue reporters
> > themselves contacting linux-distros after a fix is ready.  I wonder if a
> > patch like that would be accepted?
>
> Just as a quick heads up on this, I discussed with Greg there and proposed
> to send a patch proposal to rework that part to take into account your now
> relaxed rules. My goal is to let the reporter decide on their own, and let
> them decide what they want to do after checking the linux-distros rules.
> There could be a good motivation for some reporters to go there because a
> number of them are first-timers who are seeking a Curriculum Vitae Enhanc=
er
> (CVE) ID that s@k.o doesn't deal with. But I also want to remind (I know I
> may sound like a scratched record) that it's not because some may report
> there that distros will magically be aware of all security issues, given
> that those arriving on s@k.o are really a tiny portion and many more bugs
> are fixed without anyone having a security look on them.
>
> I'm just too short of time for now, having to catch up with what I left
> for the 3 days of KR2023, but it's on my todo list to propose a patch to
> Greg. I'm having reasonable hopes that we can end up with something
> smoother in the near future.
>
> Cheers,
> Willy
>

--000000000000992a7e0606fece14--
