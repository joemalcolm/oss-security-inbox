Received: (qmail 20380 invoked by uid 550); 1 Apr 2024 17:07:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1169 invoked from network); 1 Apr 2024 16:40:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711989601; x=1712594401; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkpxYvIf98J8A/Kf1x0s4X6+yjFVCsOpyvKh77HCWH0=;
        b=JqEzC8imlmZ3kaH2gMOBlY9yZO3urmuimTnC8gpXiD74o++VawpuAXAoX5SBMMENtn
         tDK9k0REACH6PyZkSQV1Kon6+0x4bDKNnrtvJQYpcqAn/N10OlALOKvpxzxTx3z8LPl/
         k0PdgVuA10ZRcHu+MdL3EDas/vDR+PiBxx98JvcLLPrHNZkdiaRvp7n24YaUxcsReNU4
         pgYIBYskvboMnUJWWxk5Vkj3fyKhBbDJLLBhF4zcY31igGMy1mYpOQ8i4hZlE8jOgskU
         zYF05HvQpjHdtJBY2jZADyaPzq6KfV2HMD1DBJvS+hDauy6+foOjkRUo/KNmBX2zhfpY
         ck6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711989601; x=1712594401;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GkpxYvIf98J8A/Kf1x0s4X6+yjFVCsOpyvKh77HCWH0=;
        b=IUVxofYFhWJLvA8tEwjzDOlgDefygO8lrHKkF/gOXBrAQedvjagXZb+Fr3x4VsgWIT
         QUTFfHq2F1c0Da1/FhEwYS5rLLMYLYLjLpAkpINW+cBdajEmbG9awR2GQoLpiQ578UiT
         GHN0wQ+wmwfB5o04LUIElIYaIzE3GKLKzVYMOleuWpO2mTQdXR42KNdAXboCYlknWSfu
         rdIstpm8ily8EdYVNtda7Lzm0aSUX0Tq0WsnGHapYZCbjNT8Xm4rtaZFYaH0sCsqvByf
         mJoLQJ6y5xLNtlgOHQCLhJWtOvLQqbP2GcGQioud4PZEOZqtbLsl+G4Ho4rfGZjF6uju
         H3UA==
X-Gm-Message-State: AOJu0YyfwI5ruAplwRhGtEJVW5Mic/VWYnRfdD6SRuUwAHVYZBMuGZrU
	BGFasyNAQCLBO9MooA5RY/RUHGy15QavKPgD2KHckxMrNKDLjoNAlKbPcuiP30xbM5qGEhMcqlM
	aStk23bH3xt7er/3TZmajLkek/Xlxln/W+1U=
X-Google-Smtp-Source: AGHT+IHfPdPtV5a/XeiaIZbG8xRciMm9QOUsCnKtPWb7s0+5aMyOny/+cq4HLZCan6z1zhN3XJne7NwhKmTxLvRvcAM=
X-Received: by 2002:a67:fe11:0:b0:478:3c5f:77cc with SMTP id
 l17-20020a67fe11000000b004783c5f77ccmr7156217vsr.9.1711989600340; Mon, 01 Apr
 2024 09:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
In-Reply-To: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
From: Takao Fujiwara <takao.fujiwara1@gmail.com>
Date: Tue, 2 Apr 2024 01:39:49 +0900
Message-ID: <CAKo4U_5_ZtPR2hAYK7p35VeKku3=0RSQxpT73hveAHb9V+LJ7w@mail.gmail.com>
To: Jan Engelhardt <jengelh@inai.de>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: From xz to ibus: more questionable tarballs

I don't understand what are your issues.
However I recommend to use the my uploaded files likes
https://github.com/ibus/ibus/releases/download/$VERSION/ibus-${VERSION}.tar=
.gz
instead of GitHub generated tar.gz and zip files from the git tag.
The target translatable strings per release are included in
https://github.com/ibus/ibus/blob/main/po/ibus10.pot

On Mon, Apr 1, 2024 at 9:58=E2=80=AFPM Jan Engelhardt <jengelh@inai.de> wro=
te:
>
>
> In the ibus repository at https://github.com/ibus/ibus ,
> commit 0ad8e77bd36545974ad8acd0a5283cf72bc7c8ad
> was tagged as refs/tags/1.5.29-rc2 (+signed) on 2023-11-09,
> and a disted tarball was made available (but unsigned), and Linux distros=
 have
> imported it (file checksums all line up).
>
> https://github.com/ibus/ibus/releases/download/1.5.29/ibus-1.5.29-rc2.tar=
.gz
>
> Comparing this disttar to the git repository and favorably
> *discounting* autotools-related files and (what appears to be)
> vala-to-c transpiling, I'm left with benign, but unexplicable
> changes. It seems the git is "older", as e.g. one still finds "beta3"
> in the diff, but also the disttar's ibuscodegen.h has an older
> copyright line and an incomplete cherry-pick from
> 8f00d67b809036b0b76ae257cfe7e102bc8f1dec.
>
> *runs away screaming*
>
> In light of the xz revelations, I thought it's worth pointing out
> this class of problems.
>
>
> $ tar -xf ibus-1.5.29-rc2.tar.gz
> $ git clone -b 1.5.29-rc2 https://github.com/ibus/ibus ibus-git
> $ diff -dprux .git ibus-git ibus-1.5.29-rc2
> diff -dpru ibus-git/engine/simple.xml.in ibus-1.5.29-rc2/engine/simple.xm=
l.in
> --- ibus-git/engine/simple.xml.in       2024-04-01 14:08:16.541903956 +02=
00
> +++ ibus-1.5.29-rc2/engine/simple.xml.in        2023-11-09 07:10:15.00000=
0000 +0100
> @@ -3,781 +3,596 @@
>      <name>org.freedesktop.IBus.Simple</name>
>      <description>A table based simple engine</description>
>      <exec>@libexecdir@/ibus-engine-simple</exec>
> -    <version>1.5.29-beta3.20230822</version>
> +    <version>1.5.29-rc2.20231109</version>
>      <author>Peng Huang &lt;shawn.p.huang@gmail.com&gt;</author>
>      <license>GPL</license>
> ...
> --- ibus-git/po/de.po   2024-04-01 14:08:16.555237247 +0200
> +++ ibus-1.5.29-rc2/po/de.po    2023-11-09 07:10:08.000000000 +0100
> @@ -22,7 +22,7 @@ msgid ""
>  msgstr ""
>  "Project-Id-Version: IBus\n"
>  "Report-Msgid-Bugs-To: https://github.com/ibus/ibus/issues\n"
> -"POT-Creation-Date: 2023-08-02 00:14+0900\n"
> +"POT-Creation-Date: 2023-11-09 15:10+0900\n"
>  "PO-Revision-Date: 2023-08-04 17:21+0000\n"
>  "Last-Translator: Mike FABIAN <mfabian@redhat.com>\n"
>  "Language-Team: German <https://translate.fedoraproject.org/projects/ibu=
s/"
> diff -dpru ibus-git/src/ibusunicodegen.h ibus-1.5.29-rc2/src/ibusunicodeg=
en.h
> --- ibus-git/src/ibusunicodegen.h       2024-04-01 14:08:16.568570535 +02=
00
> +++ ibus-1.5.29-rc2/src/ibusunicodegen.h        2023-11-09 07:09:53.00000=
0000 +0100
> @@ -1,8 +1,8 @@
>  /* -*- mode: C; c-basic-offset: 4; indent-tabs-mode: nil; -*- */
>  /* vim:set et sts=3D4: */
>  /* ibus - The Input Bus
> - * Copyright (C) 2018-2023 Takao Fujiwara <takao.fujiwara1@gmail.com>
> - * Copyright (C) 2018-2023 Red Hat, Inc.
> + * Copyright (C) 2018-2021 Takao Fujiwara <takao.fujiwara1@gmail.com>
> + * Copyright (C) 2018-2021 Red Hat, Inc.
>   *
>   * This library is free software; you can redistribute it and/or
>   * modify it under the terms of the GNU Lesser General Public
> @@ -1310,6 +1310,10 @@ const static char *unicode_blocks[] =3D {
>      /* TRANSLATORS: You might refer the translations from gucharmap with
>                      the following command:
>         msgmerge -C gucharmap.po ibus.po ibus.pot */
> +    N_("CJK Unified Ideographs Extension I"),
> +    /* TRANSLATORS: You might refer the translations from gucharmap with
> +                    the following command:
> +       msgmerge -C gucharmap.po ibus.po ibus.pot */
>      N_("CJK Compatibility Ideographs Supplement"),
>      /* TRANSLATORS: You might refer the translations from gucharmap with
>                      the following command:
