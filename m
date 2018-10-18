X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["418" "Thursday" "18" "October" "2018" "05:32:18" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJgSzTV8WKRL7OW6ueFibVGvNY-P6sBNBrDeagLrbPfWw@mail.gmail.com>" "17" "Re: [oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Cc:" nil nil "10" "2018101812:32:18" "[oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        taviso@googl Oct 18   17/418   " thread-indent "\"Re: [oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "<CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com>" "<9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24280 invoked by uid 550); 18 Oct 2018 12:32:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24259 invoked from network); 18 Oct 2018 12:32:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+TwixlkEtrUUnTX9ouDVFsc6Lw9P/aJ03GpEKgsn4E8=;
        b=GuQHL6ICxKbAyKJrqOIQEFTezzVYvaW1O4EnIecDSioNlhjwdOeOwlm7QD/EtD4vNJ
         sZUMeCre95idJLKtPjUlbzH5jwyRIYKKa4APeNXHVrsnjRgkx0/y2FOvL00LlZF6f+nR
         soi1SNy0VC0o6aux6co78DTeGc9MTEv0cNCZu9qfld1y3609XsobdSmi3glWaN3ibZTY
         NM8RfUKTXrOqI8LCPpoDgstxSEHng5wwMUtCtCASYeG0Ful25fLvWPVXkYLxE41vauHm
         cHYXUgxu16kXpM7fUE9S0tiEzmyv7S/4KjYJwv7cqiSizTML8s0JcIMg7n3VIA4UZFiZ
         Fr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+TwixlkEtrUUnTX9ouDVFsc6Lw9P/aJ03GpEKgsn4E8=;
        b=fgKtfhQTQQVElr7B3AWHtXHxwSPd/C79Lx+FedMoNDzA21EAFK5fRxdXyhcl3D5nk7
         8pR5sgkVKyUG9ysHej8wgo4kb8gt2sHxRy+Tg8AZQ7z+1aNFm+B5u5S4ZHUHDQONjxGs
         6Tkjrox7UoyIkwB0fWnH7U+ndMw9VIsy6Bi/7uFXaclxTpFr0wmijDy4Ug+77+AtAJxr
         0cvdmCv8yAh3tnR0iMtKlrTYISZy7MTIRZb0mBxq6GaW7WbA9A6BqNEiv8mRhhzzquad
         /R0tgoDXVItD355ft2cPxbTjOK594jrK24V8JRtimcpQiOITinz6uqAAtb1AW6H1Vl2l
         mN8A==
X-Gm-Message-State: ABuFfojQxcokFkqRnyous2r8r3GegUgW33RKe9eflrBiGm6WIPo6gaAI
	r3wA6NkfOegX537N1lI0MI0od71t7dmIw5eYxptxWw==
X-Google-Smtp-Source: ACcGV634LtIcvcJ7x87pnvE2Wjc9KwDW4IwKknKMMqP6l477er3UrC1DYq5YDmeCHa0Yplqs4C7WhGIq6KCkuGvQHFc=
X-Received: by 2002:a37:444b:: with SMTP id r72-v6mr27398944qka.332.1539865948500;
 Thu, 18 Oct 2018 05:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
 <CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com> <9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>
In-Reply-To: <9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>
Message-ID: <CAJ_zFkJgSzTV8WKRL7OW6ueFibVGvNY-P6sBNBrDeagLrbPfWw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000dd351b05787ffa96"
Cc: oss-security@lists.openwall.com
Date: Thu, 18 Oct 2018 05:32:18 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: Golden_Miller83@protonmail.ch

--000000000000dd351b05787ffa96
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 18, 2018 at 3:51 AM Jordan Glover <Golden_Miller83@protonmail.ch>
wrote:

> Do you know if upstream is going to make new release soon or distros
> should take the
> pain and backport all of those themselves?
>

AFAIK upstream only makes quarterly releases, so I think you need to
backport.

Tavis.

--000000000000dd351b05787ffa96--
