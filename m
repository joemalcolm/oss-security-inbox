X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Monday" "24" "June" "2019" "18:27:30" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>" "42" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062416:27:30" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        glider@googl Jun 24   42/1565  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26361 invoked by uid 550); 24 Jun 2019 16:27:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26343 invoked from network); 24 Jun 2019 16:27:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=A4fukKNlCIVsYPUHeEspOwLJtqJc7T7SMqSvFMas1UU=;
        b=c6zknyjLfKwEKGRNMAR7+Clxjpymn02nrFWOLBUuOi4B9fxztqVniPssHa7oUFBgvN
         gkJar1S8f793nscpFTaAjh/mytvJqN01WAuc94TKQAk/cNK3jTjiWsJuhQZOleNqbOoA
         LrtdlGxlk6UWi/qrjYWhYcZdNQM9kMjkXUYAt+q8z5fX+rD62TyXB/wjAfcKgdrRMhaf
         MbaNGys5xIwoUlJc8UIx94F28Ho0Fc9M3MoZsatvgPGsMoY3e6R46yVXPzaVn11p5Ste
         ZDK8o7hV2bNV9yng1fJO7cNauq+gFrfZ2ecwwen/TOz1al+3QdL4oesGcPyB99kYGrdj
         5H3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=A4fukKNlCIVsYPUHeEspOwLJtqJc7T7SMqSvFMas1UU=;
        b=tCi7SDnD4JIkpDSaUvPEr9q9SegO467/WwYCYH+bqCknYxElKDbkJB8mqMh88dL6gJ
         UYYcvOJfwHfAKIisxY6G47f3lQdkZjRfAcmbTmC4JGqU/JKka22icQ5TfwjQflqsWvmI
         6ZINv8JfDAlTdYJ1gqBft/7o1Af8Nldoy4LKjf6uA6XnUOjdUFjjxBzc9phfMIDLRMTs
         FKiUiPZ3ZvssBF/9ojwuQg50iDiGuM2q6FrWbVSORsqyy8EXQZsn0ua0nE36ptyIaUL0
         7k1PlHun9viz3QaXKJsktc49mlQMKKB6Fnp7vcUv4KKG8rbPcqO4MrKWSI2Dv8DT2SkP
         hBUw==
X-Gm-Message-State: APjAAAVpnYFi4sT2iKDxRFlZ5pt3uXMsHEKfxVkw605+PG3PtoM4bBu0
	Ue24gb6DEiFR3SzSc0wXAG8aM4BGy3Fly1NWjc6VLErb6eY=
X-Google-Smtp-Source: APXvYqwLjZJ9+cH8OIkm0N5wfla5U5c1TiOzHlrsq7u2UN53OQN3gWUQTSybDwUhJxRk7CHuuvKECoyqDc0MP8oiEjA=
X-Received: by 2002:a67:2ec8:: with SMTP id u191mr24993853vsu.39.1561393662237;
 Mon, 24 Jun 2019 09:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
Message-ID: <CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Jun 2019 18:27:30 +0200
From: Alexander Potapenko <glider@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, Jun 24, 2019 at 5:44 PM Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> On Mon, 24 Jun 2019, Dmitry Vyukov wrote:
> >
> > So what are community thoughts on automatic CVE assignment?
> > That would definitely get some attention to these bugs by vendors
> > (because that's open CVEs in their products then). And this should be
> > implementable because both OSS-Fuzz and syzbot are automated enough
> > already. However I afraid that these CVEs may be as automatically
> > sorted into a trashcan then :)
>
> An excess of CVEs would cause CVEs to be not very meaningful any more.
>
> Most oss-fuzz issue detections are not CVE worthy.  For example, a
> one-byte read "heap overflow" is not likely to cause any actual harm
> but oss-fuzz would classify it as "heap overflow".
There's enough information in the report though to assign the severity
score depending on the access size, its type (read or write) the call
stack etc.
OSS-Fuzz deliberately doesn't do that now, but such scoring can be
done to prune the list of potential CVE candidates.
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
