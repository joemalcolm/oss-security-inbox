Received: (qmail 1432 invoked by uid 550); 23 Dec 2024 21:43:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9939 invoked from network); 23 Dec 2024 19:33:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734982422; x=1735587222; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rnJrcspC2TKwjsgOgBvRNOlnhFYJzckRXx+vq1jgqI=;
        b=e4fKpa+cLm9dvkTez4bVABambZ9DtVbWV1CRdUL2y3LHgsJLDFPQsXkesdmfCcUF4c
         84RUqisr96qC4Rp71eiIzMi/RK1hyjZ9ZC2S4aiyHJTJDFGFXFIwQKiwrlb/qPe95rdP
         Iwax/PwTOLlJT6K/hu7SF33+Wh4CVkwTfAbDrazdicMwmNwx2HsFnGXujkFhKgufA9oH
         a5Kfwcp4cIdi+GVdUPzhHrXR+uXEwCgA3xMbMMch063n61CO487yiWYt+e/RiKHkWwvL
         aFBuCw55RlfgtVOMtokp0tBaYM4J+DYKkc2icsW1/a7YyPInnRfdgoUu/dqBSr0yw4PY
         EjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734982422; x=1735587222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9rnJrcspC2TKwjsgOgBvRNOlnhFYJzckRXx+vq1jgqI=;
        b=siwQVxL9Wsqo5vw6weaAjWGjI74mdp4Fs0KbdgxOEotOGHbouEFSHINa86KCdjzMvT
         sH0NCls3GV6aborfgdbohz5jds+NyCN7BD1iXpUJU7BDP3ozk6ulf2vHoaxOVQz6vFnp
         GyyVyF3zu54UQ9mQEI1zajKKLihZHPWIOkL3CMEy1Q/8+GPxLtUPE989bGoisZ0DBsdF
         Np7xDl4fVX2m3i1i7WbTiKCa7I7XUaJpSDdgDXUoUGQWLXHNo3+SfWEoveYRR+XjO7Gy
         JdQBBPU3SjufzWU5sdNRrEMgjUnRUDUDg2sr6LdWxZpy6m0a1nkWG207DaeEzQbVloJ3
         MkOw==
X-Gm-Message-State: AOJu0YzgIqInSuz0VoyMRgctoPipJu8KYVkuvya96KkXdwawMRk2QKYm
	2knohfW5vGwUekc5R+ZsXFm2T+GqHqxPoV3VCpnkQRvXPtuDkMlsCEYIvaPUpPslvwCGAY6Gu/F
	rfy8PVBbpra8qzNtgfVq437a9Xnx0tg==
X-Gm-Gg: ASbGnctqG/ITRLeIqpL8Cyjs6ByZknaPa77f6wtwI/3yhKkeettr/NEw0ZrK44tNMYh
	mYcgxf0+fA6046rYIxfk5eahPTF9oHuhJVsR3IVk=
X-Google-Smtp-Source: AGHT+IHF9LNuE+V1y8a/VQOL065UeihOqj/fEmtZfVd3fzq/qS3GUpk3mIOMWEFaM4TPlsYDCqGfokfeSJ2RaYoPY0I=
X-Received: by 2002:a05:6402:430e:b0:5d0:8664:9f56 with SMTP id
 4fb4d7f45d1cf-5d81dd8fab5mr12131535a12.11.1734982422214; Mon, 23 Dec 2024
 11:33:42 -0800 (PST)
MIME-Version: 1.0
References: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
 <87zfkmmgvc.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87zfkmmgvc.fsf@oldenburg.str.redhat.com>
From: Yuri Gribov <tetra2005@gmail.com>
Date: Mon, 23 Dec 2024 22:33:31 +0300
Message-ID: <CAJOtW+6vveBkwzYhzLonwUppsZvSy6c5K35ys8dxCA6U0i0sAA@mail.gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Out-of-bounds read & write in the glibc's qsort()

On Mon, Dec 23, 2024 at 8:47=E2=80=AFPM Florian Weimer <fweimer@redhat.com>=
 wrote:
> It's a bit odd that you disable reflexivity checks by default, but quite
> a few of the issues reported are in this category.

I think back then I wanted to make default settings free of false
positives. Often sorted arrays may only contain unique elements and in
such cases reflexivity checks are useless.

-Y
