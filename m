Received: (qmail 28121 invoked by uid 550); 5 Jan 2026 13:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3707 invoked from network); 5 Jan 2026 13:02:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767618138; x=1768222938; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELLRIfchO79sM7skoM8Ck4W+b2UKtCFUE/GtsGz4C1s=;
        b=UdGy0OZy700XJ98XS2qCwTBlBxRrG+n7d6+NnqVwgwbUGz8lpK5NG6AZpqYWaSWVEg
         P6zmfCetkrsPpl/7rcJcMnEDZES9oj6u6o0XNTd+JbyVwFPLBS7Xpze5GyA1wYFq4HBd
         +ncX7++2pSCea6ADUU6gQW9+Ir0XdM3UieHniqhsZZx3dk/DPzhkhA2kG6E9EPUsoi7B
         Xp8vvlxhdiZL+Tmff2zqB6sJ1B2MokdmfifCUswzLT8fmdUtOW4C8zaa5i88sQzvRYIA
         gp2FR0gVVZqb09XH3/61kkIX4rfKmcbwIALyFkb4fEBJw7iKj0BMgK9Z3rn7nxe9ezI4
         +l2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767618138; x=1768222938;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ELLRIfchO79sM7skoM8Ck4W+b2UKtCFUE/GtsGz4C1s=;
        b=Eh29CBOYiCZZysRkvYLcJ7PYBoiNTtioPSsk+rvxPgnKS7K4iwK2jnhWbYqyUeh6sf
         JtZX8IHHc2vpnGxUTbOHT450+TOEg8GuQxSrusYqXU6cXNerycRH+Iol9qILOiaSOpx9
         vTIs1xj9ffTuxqUfWfXQnWNYkGXX+4d6v/hPnc9WRVpEYFfRbCkis0SaikauowTRBj0I
         ZFO31Owb/hMY1a3+SLI0lTwX2z7rq4hRbC7E+yh4Mxuv019u9Wi93Kk7MCgmByM//yT7
         feReBuSY9MZwDDto6th6SR0lOGZGSlKPdEPLfX2xM7aLvQ4z8pjBD4xI/4Ol14D7opTz
         7P+A==
X-Gm-Message-State: AOJu0YzaspHZNcwqtX2+kXsGkYjzhAL7tHEKAm5eBs8AZBfMyKQ3iZL0
	7+QC0lxG+MtDGH1JYtTk4kF0Or34AmtyHwXILXlA5dMiwucZ75JUdbVUsNZ1lsl6eJbqY9aTRBv
	Vc4j1GvD7ACwCZpEN7GhD9yx9PAyqjtJNrDEi
X-Gm-Gg: AY/fxX7p85WxnMXbgpY2qOetv4K68nMWkAhuW/7jTkwkHexlfKhadApbrKxukvz7d+4
	2FF+CckffSJEUR+f89fruFZ7nPTfK4TLLj4aSquSCY1mTN/XlOW7f2OwbQq2IiFg475glHP/dpJ
	/e99tQmzsiDgcZAB96NKYn24WCCj0I/MV8sJ4henFFF666tqoaeFvlSlZIWtGJ3DDVI03Q2ZNTS
	j3f4+PI1QJ+7OYKsvSG+5EWdG9qjxbcNtfos2nR+JHUc1RyDGxalyWHxsKd7N/SCVCbBFqZTgsI
	RaXls0/SDE1SsjzKMJ8+qr5LbBivQpHwDnIXtQQ6W/FznjWBdLrzZmQ=
X-Google-Smtp-Source: AGHT+IHg+BzVpIy6NlR56NhQntpVtospw6G0ypn66v914Y5NzhLAoIvu0iQgtOgw6M8wkSgHO4q/ADUmlnLK7+70L9Q=
X-Received: by 2002:a2e:bc18:0:b0:37b:575d:6403 with SMTP id
 38308e7fff4ca-38121566d15mr139415381fa.6.1767618138027; Mon, 05 Jan 2026
 05:02:18 -0800 (PST)
MIME-Version: 1.0
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com> <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com> <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
 <aVuxyNKwrPhbE0SH@donburi.himad.notcom.org>
In-Reply-To: <aVuxyNKwrPhbE0SH@donburi.himad.notcom.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 5 Jan 2026 08:01:40 -0500
X-Gm-Features: AQt7F2qFEHpWASBJvchnA3fEYiaJ_MYwtPQ6Yz9FES0kt_frER8-jNQb2cRqFOg
Message-ID: <CAH8yC8mLpb6Gr63cQR2EmCfERvCjZ4qkcVgOtamki3cMFC1bnQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Best practices for signature verifcation

On Mon, Jan 5, 2026 at 7:54=E2=80=AFAM Valtteri Vuorikoski <vuori@notcom.or=
g> wrote:
>
> On Sun, Jan 04, 2026 at 11:56:06AM +0000, Peter Gutmann wrote:
> > As an aside, is anyone aware of a single-source design document for what
> > Authenticode does?   There's a million web pages related to the busines=
s of
> > selling signing certs, and less than a million on using it, but I can't=
 find a
> > single-source design doc, just lots of stuff in various places that I've
> > picked up over the years.  By "single-source doc" I mean something that
> > addresses all of the above issues and related ones in one place.
>
> Are you looking for something more detailed than the Microsoft document t=
itled
> "Windows Authenticode Portable Executable Signature Format" from 2008?
>
> Download from the horse's mouth:
> <https://download.microsoft.com/download/9/c/5/9c5b2167-8017-4bae-9fde-d5=
99bac8184a/authenticode_pe.docx>)

Nice find.  I remember the document, but I could not find it in my
collection of old documents.

Also of interest may be some entries from the Wayback machine of
Microsoft's site at
<https://web.archive.org/web/20030210220956/http://msdn.microsoft.com/works=
hop/security/authcode/authenticode_ovw_entry.asp>.
The original page was titled "Authenticode Overviews and Tutorials".

Jeff
