X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3371" "Tuesday" "25" "June" "2019" "16:08:29" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=VZfUE2k=so_OnDZFFNPyhH=QRvCyWgC1G3iajK_ZGVNA@mail.gmail.com>" "81" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062514:08:29" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        glider@googl Jun 25   81/3371  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10074 invoked by uid 550); 25 Jun 2019 14:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10053 invoked from network); 25 Jun 2019 14:08:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=xrawHCA1D0ROZ9pKj0QtLdG3V6e+2nZGVHJHMsP7vmI=;
        b=urOnO7GxWTs17YxaI2b0qML54TrhS7N5D8Ln3QTccPtqTTcBefDzeMCUCUs0EIxkMu
         mooZQ0z1r3pA0LTbD0cmlxFb6opFLBokr/0UhaPojoo7iYc19UL7jH4RP2OEz/UF7j71
         vu6YA205svz8HWhZr5+aJCdg3cH0yL3pa8pmFjksMHyQG8ACQXzFTQ936gOf2jj+z4sh
         DKaNE/v8DNtnwUVGcE0QqIcXWaqLGl1afC4LxnXrF/1+Q2vYPApEPDBV8QnbqN1LtefE
         7593TEyZwNv78yiSfPDMtolmbStHnyltkqYnfxrBiGZ6Y93fuiZcp0OovHMQV7+rfhZo
         GyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=xrawHCA1D0ROZ9pKj0QtLdG3V6e+2nZGVHJHMsP7vmI=;
        b=jakZ1bSB2TB/kVKB6QVnipl7Q0WhQnUl3gXFPHmpA5yuQU7GUY2GKPvnW9HYk6S0SY
         tVFpf6WpuLKR4Sd8J0v8H6rVD81qTwkUpuGRVbVW1+Jd+3F9+OFDgs7bK0ByCZKesaMe
         u0DLBfl/Xj5x9DxKFmovrZJgIIWjFGC9my0Tf8QThCVoTWa7VxHJkssZeTHA88yzhxJQ
         n008IxlicBWdoH8YI8hhXzC4zbkfOVq69fkiRgu1jxFhT6GAZ75JF3xvnN+MKnBM5LtS
         iOiDn4Hg3/+Mi9Wl4fdxx0eNH3K3Oc2XfiH400ooHR5I064RqCAAoXgV9856vF5UIEHi
         r4hA==
X-Gm-Message-State: APjAAAUrPLLFvNQT4yVkqbxCn99WXf1VdQJTLA241+M1QAsgRi17TSiu
	VPLTa9uyh4x1gfFlPe3xVfxBieJO5w5lldRn9gASno3D
X-Google-Smtp-Source: APXvYqwpLUJMiUSbakcBRjcD6WZTVMQbhJHcnndlDmSSkqc8Ayjlc78L1/jfLruAS9475xhLAabVgvbPWEO+wBhGs9c=
X-Received: by 2002:a67:2ec8:: with SMTP id u191mr28025553vsu.39.1561471720366;
 Tue, 25 Jun 2019 07:08:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk> <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
 <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
Message-ID: <CAG_fn=VZfUE2k=so_OnDZFFNPyhH=QRvCyWgC1G3iajK_ZGVNA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jun 2019 16:08:29 +0200
From: Alexander Potapenko <glider@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Tue, Jun 25, 2019 at 3:43 PM Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> On Mon, 24 Jun 2019, Alex Gaynor wrote:
> > - Not having sooooo many vulnerabilities. While there's some dispute ov=
er
> > just what % of the bugs that OSS-Fuzz and syzbot turn up are exploitabl=
e,
> > there's no doubt that they find a _lot_ of them. Even if only 20% of
> > OSS-Fuzz reports were truly exploitable vulnerabilities, that'd still be
> >> 600 of them. We can't produce this many vulnerabilities and then try to
> > clean up afterwards by finding them with fuzzing -- at some point the
> > number of vulnerabilities simply overwhelms us. Tactics for reducing
> > vulnerabilities in the first instance, like memory safe languages, are =
an
> > important part of making this problem tractable.
> >
> > Do folks feel like there were important themes that this misses?
>
> I see the assumption that 20% of oss-fuzz reports are exploitable
> vulnerabilities.  Where does this percentage estimate come from?  What
> does it mean to be "exploitable"?
>
> From working on fixing oss-fuzz detected bugs in GraphicsMagick I see
> that many/most of the issues are not significant from a security
> standpoint, assuming that the software is deployed in a way suitable
> for its level of exposure.  Common issues include:
>
>   * Huge uninitialized memory allocations (which do not really matter
>     under Linux since Linux does not reserve anything but virtual
>     memory space).
>
>   * Consumption of uninitialized data (e.g. image data) which is not
>     used to make important decisions.  This is usually due to unhandled
>     cases or error handling which does not quit immediately.
>
>   * Tiny heap over-reads which are not past the bounds of the
>     underlying allocation.
>
>   * Heap over-reads or over-writes which cause an immediate core dump.
Please note that these particular bugs most certainly behave
differently with different memory allocators.
Even assuming these immediate core dumps happen regardless of the
contents of data being written (e.g. the crash happens because you hit
a protected page), there's no guarantee that using a different
allocator won't let the malicious user silently corrupt the heap.
(Not to mention different standard library versions, CPU architecture,
bitness etc.)
>   * Excessively slow code with the slowness emphasized by ASAN and
>     UBSAN code running vastly slower.  The excessively slow code is not
>     necessarily noticeable in a normal compilation.
>
>   * Memory leaks.
>
>   * "undefined behavior" which nevertheless has a common behavior that
>     compilers have followed since the dawn of time.
>
> The most important thing that oss-fuzz contributes is a large
> collection of files which cause problems for unfixed software such
> that only the unaware or foolish do not update to fixed versions.
>
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
