Received: (qmail 1386 invoked by uid 550); 24 Dec 2024 16:07:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3715 invoked from network); 24 Dec 2024 04:36:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735014955; x=1735619755; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GW0pO7+2Xwdf1cZ38AfIk9MjEVrVLYM8jDNGPwrJjfc=;
        b=WDwtTtCI/EA5BrEgNmg0OcOgJk6f5NESxl+uKduIiWngfi1/5VJZmDJZnR8EWVaa++
         zZE2e/Vv977o7L9DR7AT4iHeEN4A67yHoA0GzRgYOIzmAuZbdRVRMsGunQZD8bZ6XCEa
         Qp/Je64ByTa313TjZtsr0g/oJ5Bxfbm6otawyOQVbTi4IcmT94TSdcn2jvnLFBlwMjER
         09L6c4CqO1vYYz+mFSzNJRX3mrX3m7w7l4veqaR6PfR56Z6XBDstCjdy+3QhtmaJv5+L
         W/HHr9wSFafpNF3ifx6cyFTsT8iI7trOxn1mRXSGHoCGfvsOZevSgusaFpclBY9vWQ6o
         J4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735014955; x=1735619755;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GW0pO7+2Xwdf1cZ38AfIk9MjEVrVLYM8jDNGPwrJjfc=;
        b=qldfSmZWwc7k8r6nG/WfP5cJtBJuADT02cbYJ5DaaZT5zAKVRMQ0tRx9PJ1ydyXlGm
         ufqq6zjs9lREUnsfFdC63Tvv/cWV5tHdLClzLY0OVs+/npnBQoJAI6hccEMd1vuw7BHZ
         K8CufHu8ejoEUh2FZbDgL/5q/Xu9vpSF6LlRPjBcvBh7Ec6iFjkijfTKzmHeBqMgIDK2
         3xkveWaq9msce6K+OUt+dt1UgKgIpvdJBhaU/E7li4JaVybrVdnfE8g9fQtKiTHkpQVA
         qQL5BPeb06o0JTsx1vuPfXL2hsmZzh1IX+fBgHF4kF4nJTGRQ+K4NySo9BHFj9yhS+qN
         kH7g==
X-Gm-Message-State: AOJu0Yy1bq+dU0qqfh3BqoptksO8LSAGR4dRewYg21toiz9eU/Zcw3Rd
	qPexOuCIFhPgkZOZCWlolC9hfYHPdr14h0xitNhYAgoQwKiQz6z1mvQOXBoZ60WYzI2cV/NwRrg
	OB7+f3mpXHPSmrCAX55tfhwCiiC0=
X-Gm-Gg: ASbGncubxWI59tZgR83tuVJTl5PLLLud/zldeATqVL0kDRGH26Sp0lrvKjVt/9z5hIp
	rhYUxPuHt78hb6okwF08t9vwkfNDQpBBFMYZTzRM=
X-Google-Smtp-Source: AGHT+IG5xJdJM1oLlbxjHlfvzNESNh0QGlJXkHFExGzeGlGbpaDVXgovIUsxOnXH71Srd9nJudsS5KiXeplIOGf8g9I=
X-Received: by 2002:a05:6402:430f:b0:5d1:2631:b88a with SMTP id
 4fb4d7f45d1cf-5d81ddacf87mr11082960a12.17.1735014955227; Mon, 23 Dec 2024
 20:35:55 -0800 (PST)
MIME-Version: 1.0
References: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
 <87zfkmmgvc.fsf@oldenburg.str.redhat.com> <CAJOtW+6vveBkwzYhzLonwUppsZvSy6c5K35ys8dxCA6U0i0sAA@mail.gmail.com>
 <878qs6m68f.fsf@oldenburg.str.redhat.com>
In-Reply-To: <878qs6m68f.fsf@oldenburg.str.redhat.com>
From: Yuri Gribov <tetra2005@gmail.com>
Date: Tue, 24 Dec 2024 07:35:44 +0300
Message-ID: <CAJOtW+4R0WUFMV=XMHAy2ZX-idzP=1156hrRe2TMFio6WB_sAg@mail.gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Out-of-bounds read & write in the glibc's qsort()

On Tue, Dec 24, 2024 at 12:36=E2=80=AFAM Florian Weimer <fweimer@redhat.com=
> wrote:
> > On Mon, Dec 23, 2024 at 8:47=E2=80=AFPM Florian Weimer <fweimer@redhat.=
com> wrote:
> >> It's a bit odd that you disable reflexivity checks by default, but qui=
te
> >> a few of the issues reported are in this category.
> >
> > I think back then I wanted to make default settings free of false
> > positives. Often sorted arrays may only contain unique elements and in
> > such cases reflexivity checks are useless.
>
> Are they?  In the longstanding glibc quicksort implementation (usually
> hidden behind a merge sort), reflexivity was required to rediscover an
> element that the implementation assumed to be there and dependent upon
> for loop termination.

Interesting. I remember being told in GCC mailing list (or was it
IRC?) that qsort implementations typically will not compare element to
itself.

See also https://gcc.gnu.org/pipermail/gcc/2018-January/225098.html

-Y
