Received: (qmail 8098 invoked by uid 550); 13 Oct 2023 14:31:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14302 invoked from network); 13 Oct 2023 14:02:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=almalinux.org; s=google; t=1697205711; x=1697810511; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e4ybIIJYrgJma8IIJ2GAB+v+MKTCrsT5MMvh5+DtQ4Q=;
        b=WctAh+G6Be2k7BUfxXyOyl1D6tWad2fukOeK68Pkex3mQydFNeHM3bHmSulq1ZQiw1
         p60Fx2wxIKIty20JaP3pyp/05gxXjx/MnRD+XZ8ZTFdj6QIiJUiAistTqwWSt3WekIgJ
         5tufAA+/f6J9Gqv3AqAUk84OnhKyEnHBrPIDwxXTcq5CpbWhuI3c8yyfch/hUVuP0ql6
         vX1NBqiefKd0WtGppbH3AIJfbdUqWeblZdrUY7tzXMmxI6s6ntx6ZBo9GhuV1lz1psr0
         M+tOLFQMnsVzoU3JyuSwrrqXwYHAMq8aog+8MnBHMhdq95fBc2q1N5PgKjzruF3H+DWZ
         rpRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697205711; x=1697810511;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e4ybIIJYrgJma8IIJ2GAB+v+MKTCrsT5MMvh5+DtQ4Q=;
        b=bNrtEmncNuBssToB25T+y1gKmQ2ztiougLRXc6Pw4Fs/cnB5ahXYSbbqIpGxFLrKK3
         iykVdu/ctKexvii70gavkAho/jMVwb+daksy9d46hykPi22wLC2WkyauHozYXnj5FDpi
         LFBwUQ2MwEDr1tFnlxM7SS+Pf4RuCXuxIVPyLewQg9PVjJWC83jtptKh5hAHNFXL0sHq
         x3d2fEbIzpAJdDDJ47K98Gw/iafBrSvwdcA8ZAmOaZjLrPF5Sf78Iw/zXFRae9/Gba3l
         a+X93mh074BeDtolssDORWm2VpQBZoFOuOSZQDduG/BaYSSIQY8sYo2eQh5ZSXCgbGg8
         fEdw==
X-Gm-Message-State: AOJu0YzO9nPHl05JM8HOUyraK5fbKTytyy5nvlFsX2w3AyDYCtlJw9GS
	wf5RKhXOHtQG2lvr22Q/DEdZGYp4ULCU+kZ984CchBH9ya0SxAEQw4QCAQ==
X-Google-Smtp-Source: AGHT+IFVLTUCGlmlJcF+YDwvQ2FpOVL7sG0SGDM5tmPtfoIcq4Eu2ya3p1YZ1vkLjHtNX2FeYVyoH5j4MWxgpchG2Os=
X-Received: by 2002:a17:906:768e:b0:9ae:3a60:570a with SMTP id
 o14-20020a170906768e00b009ae3a60570amr24704052ejm.18.1697205711427; Fri, 13
 Oct 2023 07:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <51049a59-5e4b-4def-895f-97b9c2b92b24@oracle.com> <20231010192306.GA14591@inutil.org>
In-Reply-To: <20231010192306.GA14591@inutil.org>
From: Jonathan Wright <jonathan@almalinux.org>
Date: Fri, 13 Oct 2023 09:01:36 -0500
Message-ID: <CAKe4=-L2udnhRQ7EVOMihrExiYUVoor3E0+FbNxvZ8iB=pyQ1w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008a6be40607997f00"
Subject: Re: [oss-security] CVE-2023-44487: HTTP/2 Rapid Reset attack against
 many implementations

--0000000000008a6be40607997f00
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenLitespeed is not impacted:
https://blog.litespeedtech.com/2023/10/11/rapid-reset-http-2-vulnerablilty/

On Tue, Oct 10, 2023 at 2:23=E2=80=AFPM Moritz Muehlenhoff <jmm@inutil.org>=
 wrote:

> On Tue, Oct 10, 2023 at 11:40:06AM -0700, Alan Coopersmith wrote:
> > Information I've found so far on open source implementations (most via
> the
> > current listings in the CVE) include:
>
> Apache Trafficserver is also affected:
> https://lists.apache.org/thread/5py8h42mxfsn8l1wy6o41xwhsjlsd87q
>
> Cheers,
>         Moritz
>


--=20
Jonathan Wright
AlmaLinux Foundation
Mattermost: chat <https://chat.almalinux.org/almalinux/messages/@jonathan>

--0000000000008a6be40607997f00--
