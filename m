Received: (qmail 9457 invoked by uid 550); 3 Apr 2024 18:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22148 invoked from network); 3 Apr 2024 18:02:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712167334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4WcCwRqWuCxojSwiH/bDwzvwEef/cai6wLUBSw8Jf0I=;
	b=gjaHxjXx1hl6hzUmbBFXPHBmbOsrVXG70TidjfOh5aWv5MXnZevItZIxhseIaBRFz0JbSm
	i+1o3m3mzRDeDaQyDfGr4AcgWmcUTrEISD1T0FFHR1XP4AnDR0pe45wbetL9lPr9w53hIz
	vJAkMVxFUsq3ouVe7wIduYrC83Z7jjE=
X-MC-Unique: 6iLYD2sgOz-luavoS_ZPzQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712167331; x=1712772131;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4WcCwRqWuCxojSwiH/bDwzvwEef/cai6wLUBSw8Jf0I=;
        b=F0b2em6rSBsIudo1ZEpo8/8u2evAtWhXUf/7in39NonI3CscVv9LzqPBCue4jVSyvB
         24DfHNJzMS/y3KlW22z+166Lkk7pzmfR87KY08knNJUoEBNSX954dfrbc7uGBcLcop3f
         Xvd+oZCEjOrfgZ0PjSutFvHAwOoPpjtYdrDHkC+Wec9lLH7ErDspjVpoaX8kRf17HO7H
         Gaanx09OpojR/e58MPhlcQJ5MMH8t3Q0hcUPCE/TrCsy/0GDnIBktyhtgkhz+HAenQUw
         LxTeLAIX0I4AGfaEJQ/rMgz9N1+v/QrL3CWeWRX8+7m8Eg7k/Ohye0m4Rf8+hwvV/eNb
         gN8w==
X-Gm-Message-State: AOJu0Yw+/iQx5yRocfKV+c0wcLfsxdg6RL9HS8iYenrJVLxdE4feTpTr
	g+2Fi4dX4rYZf64cf9uhzb9o13z7YmNVMA3cjW6r0UHnr4mxDxXWsA2VfD+5yNUX8oh80HaVvWX
	b4OWqDTiYWfGfna3vRZfmfaxCHM+jlCsSPvdl1Z/5CVkAmdJi93N9CPT2BHqOzvlv30yrZFSgcH
	o0d1IhRKINGgF3eX/W33GXmCdFsWzFqGKd7mw2csedybvRM2rX
X-Received: by 2002:a5d:4384:0:b0:343:8097:3e3 with SMTP id i4-20020a5d4384000000b00343809703e3mr144506wrq.40.1712167331182;
        Wed, 03 Apr 2024 11:02:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgIgEDfEJRUozbOrqU627bXQN48ZUsX6sWja2QrUmdQuuDkjwvATL3Yze4LWNnv+9OpUViLwX0puDBqk0q3RY=
X-Received: by 2002:a5d:4384:0:b0:343:8097:3e3 with SMTP id
 i4-20020a5d4384000000b00343809703e3mr144496wrq.40.1712167330781; Wed, 03 Apr
 2024 11:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <4323cf07-8f42-46f8-b075-c12e50a917e7n@googlegroups.com>
 <7e6a9e00-1caf-4523-b969-fdb410b240f7n@googlegroups.com> <9f41b1da-6faa-4364-aed8-60ff5eaf7c06n@googlegroups.com>
 <20240403164804.GA10525@openwall.com>
In-Reply-To: <20240403164804.GA10525@openwall.com>
From: Michael Dawson <midawson@redhat.com>
Date: Wed, 3 Apr 2024 14:01:11 -0400
Message-ID: <CAH0iFcZaZtAfhVwopR1vFgXuQJSvugL8Bz8OmQYS+kpq4VqGiA@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008c47dc06153505e4"
Subject: Re: [oss-security] Fwd: Node.js security update for all active
 release lines

--0000000000008c47dc06153505e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry I don't remember the context as to why we agreed to send this forward
in the first place.

As opposed to expanding any work that's a one off for the community
security stewards, since it sounds like it may not be meeting your needs,
I'd propose that we just remove it from our security release steps and you
can subscribe to the nodejs-sec mailing list like everybody else. From that
you could generate some automation to pull down the content from the
original post.

On Wed, Apr 3, 2024 at 12:55=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> On Wed, Apr 03, 2024 at 08:12:24AM -0700, midawson wrote:
> > The planned security releases are now available. You can read more about
> > the details in -
> > https://nodejs.org/en/blog/vulnerability/april-2024-security-releases/
>
> Thank you for bringing these to oss-security.  Going forward, it'd be
> great if you post the actual detail - not only a title+link.
>
> I'm attaching to this message the Markdown content of the above blog
> post, as taken from
>
> https://github.com/nodejs/nodejs.org/blob/main/pages/en/blog/vulnerabilit=
y/april-2024-security-releases.md
>
> Alexander
>

--0000000000008c47dc06153505e4--

