Received: (qmail 1604 invoked by uid 550); 7 Aug 2024 14:29:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32249 invoked from network); 7 Aug 2024 14:28:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723040893; x=1723645693;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4qz2S+tb749HKkO5nrbBmnTcqHCirU4p6HJbLuml5+4=;
        b=Xai3/QdHu9fdxfW1Ovr0oaVOmDqzQQjIioa18rrt1rB/jabIj3lttAgapQTiwBJeyz
         2I7yHCkhFCljDFyJPA65XzChOJ955L2CjoIfzsUAFr5TpB08Use0VeQ1rlSxq2fJGLwl
         1zWG0u/QLaL3ncjjGWZYmiV7t0GrmKmU8M9RSQ9Ex7R2zgf6TowXUNAmL4WtVxiRVrM2
         zY8j2rumhacj9l6jfYsan1orJGNd32yEE3zHCipLGxszfpcnjKyHWEgtkNiqzDYsS7dj
         BxvmdmZoMlE0/580o3yDjwr5zrh9tBrLkUDpCNoEXil2WzDcwxEnRPcDEGpJFvtPpk6i
         bxxA==
X-Gm-Message-State: AOJu0YzkYySQUvLd6/pfxzZdTCh+fltGs64v+Vl/F1kFlQPmnLmrLW6Q
	6ALXjnm6f6fKHJB/4sDEy7+PZPlpz2+BIP/La1waPq7EYJoFiQO0GYIKgtJqRsjRtX+Ay2/FDFa
	P1vLUhaQCOf66t2ElzkHLFUowQLmkzQ==
X-Google-Smtp-Source: AGHT+IEH1aY4pRDtRDHqc3J2gPmSDfz/a8Yys3jxdmZImYseZttmimhulgZLXNz/lEVUr49tCJJP1o/F6F+I6DuNWbM=
X-Received: by 2002:a17:907:2dac:b0:a6f:586b:6c2 with SMTP id
 a640c23a62f3a-a7dc510131cmr1279808366b.60.1723040892990; Wed, 07 Aug 2024
 07:28:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <CAHCA8E7m5n5tuGEZ-YJM_Nu9e1nmxLKJZwOK6XFifCkujP-2eg@mail.gmail.com> <CAH8yC8mtNuTegS129MQjHiLDqFM6XL+LPmUwzyPJgKkjTU7zdQ@mail.gmail.com>
In-Reply-To: <CAH8yC8mtNuTegS129MQjHiLDqFM6XL+LPmUwzyPJgKkjTU7zdQ@mail.gmail.com>
From: Dan Kegel <dank@kegel.com>
Date: Wed, 7 Aug 2024 07:28:00 -0700
Message-ID: <CAPF-yOZeREVi=jSjM28FCttwHF22Ke64tOEpiTKdjOemXy7axA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005c3e8d061f18b816"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--0000000000005c3e8d061f18b816
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://www.reddit.com/r/browsers/comments/r5vzqx/any_browsers_left_that_ca=
n_do_ssl_1020/
has some non-medical examples of impacted devices, and a workaround using
firefox... which might still work.  If it does, it could be mentioned in
release notes as a courtesy to possibly affected users.

On Wed, Aug 7, 2024, 6:28=E2=80=AFAM Jeffrey Walton <noloader@gmail.com> wr=
ote:

> On Wed, Aug 7, 2024 at 8:44=E2=80=AFAM Chad Sheridan <chadapsheridan@gmai=
l.com>
> wrote:
> >
> > As a sysadmin, I welcome all of the changes. As far as warnings/alerts,=
 I
> > can safely say, most of our clients don't read them anyway.
> >
> > > Can those machines be put behind a proxy?
> >
> > As for this, of course they can, but some clients will be tied up with =
so
> > much red tape and budgetary BS that it's a solution that isn't feasible
> in
> > a reasonable time frame.
>
> ++. Medical devices certified 10 or 15 years ago won't be able to
> pivot as quickly as most people would like. And as I understand
> things, the certifications for medical equipment can be lengthier and
> more expensive than NIST's Cryptographic Module Validation Program.
>
> (It's somewhat amazing how often Windows CE and Windows Mobile crop up
> every now and again).
>
> Jeff
>

--0000000000005c3e8d061f18b816--
