X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["899" "Tuesday" "9" "October" "2018" "15:32:02" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>" "25" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018100922:32:02" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        taviso@googl Oct  9   25/899   " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181009182643.5d601a06@jabberwock.cb.piermont.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<20181009153006.GF21509@takahe.colorado.edu>" "<CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>" "<alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org>" "<20181009182643.5d601a06@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30649 invoked by uid 550); 9 Oct 2018 22:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30627 invoked from network); 9 Oct 2018 22:32:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r1WZPqhndQmLjlcU7c8bkqmJUVXpTfUm4f0hy35n1iY=;
        b=Bd6TCPc3BSJ780TLerUdAfjGEpBV7RHFRLfcXd0VbevK3vjYxugOpGTZXRbhFiTlnu
         NpyF1TlgsGyONtHDdgxQxsBwfFblZX85tWPbSO5vFuvwz0VrseK+R82yovUjYNTRQu3m
         HTtR8/eo9mrlruYiR4+KfWw351RnXZXPnE/56/X9dk7DRn/oZ+5GGEDv34kTJ5S0Dutm
         QDInjdGpRnIK5/Iuh46MBQVDORFDhc+Ffx2igwO7XuOHfDSdXF2OEXVAx3X2qlJTDNP7
         2QfDhatVSY2PRooo4ZpLgGZV3lgD4hnp1untwvoiW6KE0aC6L+EQYqbfizW8FjwHM03a
         5YBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r1WZPqhndQmLjlcU7c8bkqmJUVXpTfUm4f0hy35n1iY=;
        b=M+sT3o7cvcqzzRhBGDh7ggKMTgFhHYpWdoLWyyjnWx65pkYpp7HOFtNG1d/+4J8NNx
         4DRMhCxtWgTiWb2HZ4k1BJO6qdeWlOIy0DWRf4EDG5BkooT9yWEb+omyOxPKLjXqSd0C
         8XJLXcTYjqYEip+NaGDSBF3H5K+b7F8/GhhFRWTjHDmhDUQQRxNDkaOBFVXoRfRBLzfC
         7LuycL5Q9SQJzL9TSXYrKNWMbQ2Ih5cX/26DepjhxVBFimfaGxHAXk/n7Tsk5zgJeNIf
         9+Me9UmRBDMQdXQaXWnTKs304dXHFE9LRxMn5HoiMLuQAXgmAipVHEDx+OMR6XhsHcAC
         kLGg==
X-Gm-Message-State: ABuFfoi74YgJbDnqyjvdQwM3kfGqZ2a9kQkDOdSugOp/xtruB+xBM85P
	25NESgduHvsYdPAMFFp5bxRVm9ghdQ7jg0O3ZLNNYB6q
X-Google-Smtp-Source: ACcGV62nvklmViTEXbOqkdyv2/HLM/0cU45oTCbNSilI7FIlIosiWlPle4vCZd34Gz6sUeI0dBhHjb7KrJFjPf63ATk=
X-Received: by 2002:a37:444b:: with SMTP id r72-v6mr11381957qka.332.1539124334837;
 Tue, 09 Oct 2018 15:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <20181009153006.GF21509@takahe.colorado.edu> <CAJ_zFkJZ1E-Wsrp92mvHL6TFmChPECbRsN+JGngqENKHCmALAA@mail.gmail.com>
 <alpine.GSO.2.20.1810091703270.29158@scrappy.simplesystems.org> <20181009182643.5d601a06@jabberwock.cb.piermont.com>
In-Reply-To: <20181009182643.5d601a06@jabberwock.cb.piermont.com>
Message-ID: <CAJ_zFkJ=n=xriGFHYLG5LdySg_BdLioG_wA1p8NV71_DzvBdPA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000003eb8220577d34f9c"
Cc: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Date: Tue, 9 Oct 2018 15:32:02 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

--0000000000003eb8220577d34f9c
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 9, 2018 at 3:27 PM Perry E. Metzger <perry@piermont.com> wrote:

> I keep wondering if there isn't a way to fully remove the dangerous
> bits from a postscript interpreter so it can _only_ be used to view
> the document and literally has no file system access compiled in at
> all, so there's no way to touch the fs etc. regardless of what flags
> the interpreter is invoked with.
>
> (I, too, find removing the ability to look at historical postscript
> documents a bit more draconian than I like.)
>
>
I've discussed it with upstream, it's a hard no because they feel it would
make ghostscript non-conforming (i.e. non-conforming with the Adobe
PostScript Language Reference Manual)

We probably have similar thoughts on this, but that is the final word from
upstream.

Tavis.

--0000000000003eb8220577d34f9c--
