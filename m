X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["970" "Tuesday" "16" "October" "2018" "13:33:32" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>" "28" "Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Cc:" nil nil "10" "2018101620:33:32" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        taviso@googl Oct 16   28/970   " thread-indent "\"Re: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<20181016155722.32978ab2@jabberwock.cb.piermont.com>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "<20181016155722.32978ab2@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25796 invoked by uid 550); 16 Oct 2018 20:33:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25775 invoked from network); 16 Oct 2018 20:33:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Oo7KEB4AWlaWEXV+sEcjIr2kWe0Hy5zmB2K2wL15be4=;
        b=DFG3hxOAZDZf2IEbTqer01x/t4DTK5g/TA3azCuK/TMiz5YAKLwf945ZTEegnjANvk
         rzMoxvLgKEw8aOOjh/remgEknVCtez5UoNIUV3ni9SzU72RBwybHbt4mYYt0Rd5nuYsO
         4bhkmqqmI6SNdXsAO8dAzE8lPZnHu8V3GmLr5WDVqCQsCNu7dYWi30y5ij7eQh8zBRA4
         IT5KCTfI9IuUhP6jr21gM7/kLjGv5kMaEOMSaYt4Pn5cEYFVBkwC5mYOokHkuwkZySZ5
         j6dDwNaQqMRiJbvZ076d4xmljyHBs5lhmi/VwL4HC9ct/qyhN2emC/q3DxQEeqFcuNQJ
         YQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Oo7KEB4AWlaWEXV+sEcjIr2kWe0Hy5zmB2K2wL15be4=;
        b=uMQAv47VldZur5bJ9Yl57X3i7pwWJhHh4595Cq28SZ17Vk5g9Hscn23EGl1GkhcQ/p
         +8ltOEvTaZ6kf81xuSVN/gwbfnx44JGyz1+qLl6Hi/KOcnvNSoUBWdaMPDP0rRO8YoCf
         rkgZk8xyq0nPJUnXdgd6UARwPknXRNgCXuxpfiOvCXViLknpHK+0eH2UzQ8kpU/pDu2Q
         F9UVCtAF4Xp6jnkPmU8GON4WSPGeDY4y+pDRmrkT6CErBvxEJQk0WoeDSiS18nq4pfjp
         SQ/3Zap8Scte5A0mSuj8syglpKyPHV+iX3MiuxjWOlPnbVLCPhrxWS8to7r71T9x1aM2
         PTlw==
X-Gm-Message-State: ABuFfoiG5nxvJXLOgCARIz9MWPjXv3CXCqUXGjuc5GmbrxCBuCr0haFJ
	2D/YWLoX1nOmJQ6uoPvDk174w/evwXldmRK3JTKkQQ==
X-Google-Smtp-Source: ACcGV62yItcCLT9a47sld7h5cVCsD9NcEH8lU6PXTpW1SgeKLj+Iy8tl+uwSm2536RraJqjFFafgXv5gFLCzKeqaAbo=
X-Received: by 2002:a37:19cd:: with SMTP id 74-v6mr21604542qkz.253.1539722025843;
 Tue, 16 Oct 2018 13:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
 <20181016155722.32978ab2@jabberwock.cb.piermont.com>
In-Reply-To: <20181016155722.32978ab2@jabberwock.cb.piermont.com>
Message-ID: <CAJ_zFkJog41qbQ6DgP=jcEts-pDo+z1AKhcnYC7kJCri=+5qSQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000067dbc405785e789a"
Cc: oss-security@lists.openwall.com
Date: Tue, 16 Oct 2018 13:33:32 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: Perry Metzger <perry@piermont.com>

--00000000000067dbc405785e789a
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 16, 2018 at 12:57 PM Perry E. Metzger <perry@piermont.com>
wrote:

> On Tue, 16 Oct 2018 11:06:14 -0700 Tavis Ormandy <taviso@google.com>
> wrote:
> > Side note: I'm done looking at ghostscript for now, but still
> > *strongly* recommend that we deprecate untrusted postscript and
> > disable ghostscript coders by default in policy.xml.
>
> Again, given that PostScript is an archival format for a lot of
> documents, wouldn't a version of ghostscript with all the ability to
> do anything dangerous removed from the interpreter at compile time be
> rational?
>
>
We have to work with what we've got.

Even with the easy to exploit stuff compiled out (which upstream do not
support), I haven't been bothering to get CVE's for all the memory
corruption or UaF I've been reporting, because nobody can keep up with
these operator leaks anyway.

Tavis.

--00000000000067dbc405785e789a--
