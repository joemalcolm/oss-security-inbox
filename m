Received: (qmail 26519 invoked by uid 550); 7 Aug 2024 13:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22288 invoked from network); 7 Aug 2024 13:19:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723036745; x=1723641545; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtAzIZ6T7Kq6WS9FTZgSWRp3AothV1BhfQVqNihJuAA=;
        b=P5cFCHK7Q7+Q2KdQcR9L9tAljOGjkJuKncawegon+94cVNH7QuSdI5sWqn9uqZicLi
         aOaia0d38i6PW5HTMtokWw6A8AH5++bsxTYUMF/lLIvuecpDgZYOBvAVHfd8+Xnr84pp
         CthqwOR10jBjtTyKrNy0+gseyq/zR4WeC1uxn4/vs1Y267TaH/3dAnwdgZ1LEN+Jmwk9
         fyuc2ikYdKu04kEQGDlu3HT0WPeAWmjJEPWmo3nOpwwvP86+97KVihRqmhnP+GY6X7id
         GnKB41IlKjcJO9AX5d5WRez/59q5uO/GAc9c8BmBODcq7t88BN2nN1bj1QeO+13tCJW4
         kMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723036745; x=1723641545;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtAzIZ6T7Kq6WS9FTZgSWRp3AothV1BhfQVqNihJuAA=;
        b=nObafXb3TFU40QiqpMkuuKvolvN7garrFlk4tRiI0fVAKS3klQl3rzll5EIqhMKIpc
         2sHFIdsgQwhjWchtVCfLknnVzRzHkSIBEr+cBCjwRFy2VisMxAuis4eyQC9KwjiZy+Yd
         eO0Xho548BXjSALWkK5nL54mXTmCbLieMUX0b7/NG9Hg9MZ5hIzOmKuTLbu5bPxAgMem
         zcKqpbyAi2VMkLPJhDPQPyvFgQ0/mq5OGOPVu9IUJVq4GMuTZz4wcmvX9U8tG032TZoI
         JHa/WuxnmQh0tj1OcMPWtug/8Ipd0swbEStP1rwmGbGeFXC+AMCx5aHQ5CFT7M3WPgI1
         MrYw==
X-Gm-Message-State: AOJu0Yx0Rs/XbunHo2bzlKaSKjukbfgm06xXKtLRLQU3ORpzULIrfIn5
	7uuIxbINizp6hN3TrqUmVtT4iWSKZnBgoIMXwTEB4ROlOhbHXHH7xjwVGlWP43Tbu81oe8cKc7H
	Au4seJOhF9rSFilsadVzEz31ggDC80w4D
X-Google-Smtp-Source: AGHT+IEQvzvsbdlGqlE75lduFcY0lgx8qi9sxSUkgu1+/gQ8CHl7iLv4/S2gBAIs1t2gvqKist2jtVsp31msUv4yZmQ=
X-Received: by 2002:a05:6902:2b87:b0:e03:ab1d:dd43 with SMTP id
 3f1490d57ef6-e0bde3a3038mr23535734276.24.1723036745503; Wed, 07 Aug 2024
 06:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email> <CAHCA8E7m5n5tuGEZ-YJM_Nu9e1nmxLKJZwOK6XFifCkujP-2eg@mail.gmail.com>
In-Reply-To: <CAHCA8E7m5n5tuGEZ-YJM_Nu9e1nmxLKJZwOK6XFifCkujP-2eg@mail.gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 7 Aug 2024 09:18:28 -0400
Message-ID: <CAH8yC8mtNuTegS129MQjHiLDqFM6XL+LPmUwzyPJgKkjTU7zdQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

On Wed, Aug 7, 2024 at 8:44=E2=80=AFAM Chad Sheridan <chadapsheridan@gmail.=
com> wrote:
>
> As a sysadmin, I welcome all of the changes. As far as warnings/alerts, I
> can safely say, most of our clients don't read them anyway.
>
> > Can those machines be put behind a proxy?
>
> As for this, of course they can, but some clients will be tied up with so
> much red tape and budgetary BS that it's a solution that isn't feasible in
> a reasonable time frame.

++. Medical devices certified 10 or 15 years ago won't be able to
pivot as quickly as most people would like. And as I understand
things, the certifications for medical equipment can be lengthier and
more expensive than NIST's Cryptographic Module Validation Program.

(It's somewhat amazing how often Windows CE and Windows Mobile crop up
every now and again).

Jeff
