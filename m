X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Tuesday" "9" "October" "2018" "18:34:23" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>" "39" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018100922:34:23" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       alex.gaynor@ Oct  9   39/1305  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12217 invoked by uid 550); 9 Oct 2018 22:34:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12199 invoked from network); 9 Oct 2018 22:34:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eZnFJx5aXp0c0SPjnpBn7HDt+ZHpOoO++gHtJYBWRlA=;
        b=j+WHAM679JyMAOhuWD99IfTlpQI8vyUH3UlHDV9zesX1SnAVhO+5mUyJ22Q4m1btrr
         9rMkyfQEJZNYkNAettKYb8yADomF/Xud/qYh3pkXLLTJfkQG8lrHOSDxNn6adLLQUgt+
         e8NZqlmPD3Q+ZEIZkx8uM1SUolqvSH80aI//POu+OvKdPff3TG6CEjzVKg0Pq6LHqj3v
         mHKEAItxq36a1VIDujy9vivCvHSMJlrXjl+5c02r3ePD66P9XO3pC2zpFZ+mSl4dqPvk
         Vqv6JSYHvU2hlIwlLz5wFTyW9rHc5vyDmm8zwEcJv0s2e9pWMmeHTqFDlsb4A/LF7dUW
         6YfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eZnFJx5aXp0c0SPjnpBn7HDt+ZHpOoO++gHtJYBWRlA=;
        b=SFHaiwwB6sREapoeMsofCQClcEp3Fr9drQKZKjqZ3qQbrKUtn8lwixTYwAiljyYrpt
         nCe1iqe2Cc6Rxobl80eLl8fCy5yIc3DGxEqsBHzw6ow9evjJEFlN6HqvvWV5yMxKjf51
         gTFQ+MLRnXuI8VhiiLeR+B4zq5v2aPR1khUMFbB4a8IRMXONHIA5vFqvl13x+PHD23Lr
         +dW8GpMQWxzdxXO9TX+kzhqzt0rNOsuz2wamPPQtCQTA9/0JRMMs9Ym+ph2E4TQ4EHs6
         gFHqaIVbG6zcDyW4LuptOgaGFrFz3dBRuN71qIvQjAnQ/fVdnkL2KOrjy/60x9TJ3FrB
         5tcA==
X-Gm-Message-State: ABuFfogDrPXNIrjs4gR1u1KhTBYQ9ZwKXrj5wg7ouXR4yUKGjugbk+wC
	TQ3WbMtpMhlsRGjV/VZmYlH8WM5pBRxDKza6T5V7Ow==
X-Google-Smtp-Source: ACcGV63PXhgGRv/8BP8vrNkv1gP63pUbBQvECxdjN3ybZ1JGkuu1pZ59F57q8Blr3sGVPGET6c6KGnqDZf0lfhTJa1Q=
X-Received: by 2002:a19:dd8a:: with SMTP id w10-v6mr17314125lfi.97.1539124475546;
 Tue, 09 Oct 2018 15:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu> <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
 <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>
 <20181009182643.5d601a06@jabberwock.cb.piermont.com> <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
In-Reply-To: <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
Message-ID: <CAFRnB2XFut-kOS4Zt=1-roq-CAzxwK7Gsc9kNGZg4motFWWm4g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a152450577d357a7"
Cc: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Tue, 9 Oct 2018 18:34:23 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

--000000000000a152450577d357a7
Content-Type: text/plain; charset="UTF-8"

Would they consider making a build-time "safe PS only" flag that ensured it
was compiled without things like shell-invocation? Then we could just try
to convince Linux distros to package it that way :-)

Alex

On Tue, Oct 9, 2018 at 6:33 PM Tavis Ormandy <taviso@google.com> wrote:

> On Tue, Oct 9, 2018 at 3:27 PM Perry E. Metzger <perry@piermont.com>
> wrote:
>
> > I keep wondering if there isn't a way to fully remove the dangerous
> > bits from a postscript interpreter so it can _only_ be used to view
> > the document and literally has no file system access compiled in at
> > all, so there's no way to touch the fs etc. regardless of what flags
> > the interpreter is invoked with.
> >
> > (I, too, find removing the ability to look at historical postscript
> > documents a bit more draconian than I like.)
> >
> >
> I've discussed it with upstream, it's a hard no because they feel it would
> make ghostscript non-conforming (i.e. non-conforming with the Adobe
> PostScript Language Reference Manual)
>
> We probably have similar thoughts on this, but that is the final word from
> upstream.
>
> Tavis.
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--000000000000a152450577d357a7--
