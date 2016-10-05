X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2700" "Tuesday" "4" "October" "2016" "19:32:03" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNUgr7_3=pnVO-5Lny735zBFsy=9nCiyotxNELUWk_KLUQ@mail.gmail.com>" "63" "Re: [oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)" "^Cc:" nil nil "10" "2016100502:32:03" "[oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)" (number mark "U       reed@reedlod Oct  4   63/2700  " thread-indent "\"Re: [oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)\"\n") "<20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>" ("<DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>" "<20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18186 invoked by uid 550); 5 Oct 2016 02:32:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18165 invoked from network); 5 Oct 2016 02:32:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=kb1YvoofvBLT5LYG9hxX0LZJdYkK1XuXVDrQcmcoVLU=;
        b=HcVGNUI3EpjPdb+w17q9lEc19fD71Eb+nXTtyXsSkdvJfoP2DeV0SofceoDEKNAqj9
         QkLFQ7H8Uj9/MOTqHnYKg5IG4Uv7I1E2WZrC7CmCodD83Q362q8BBaBG0+HnFkrSYoBM
         4mQ8VFBjAPdb/d948W8fYuwBUQ1XPJiiFzNp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=kb1YvoofvBLT5LYG9hxX0LZJdYkK1XuXVDrQcmcoVLU=;
        b=Rce0R982SkWJj2OAc+FoaoZVXLQVHdLEi+aRU5Mc7T2hTgJE0+aitt47Ql3OZrgQ79
         67ILBgX79w4Uv0KANdxi8is90xHU1p2cn1bglVqRX9+PS/xlWseYNGP5O54jSosZB3bk
         pFyx2QEXGVpnceZsRHdk+9dzrw8HJTdBCZNd5Y9Q67a5x9fXrvY/1s3edznu9mkS540F
         fVzbqdspQWj+c3Jr1tPY3QgPQwdovRTBxSE4W+oFys/9S+z0WNZp9mlVtXcgdPHZK859
         99oKbw36kEki356NqC0MxlnstuGFrDyorRX8Ru4xiAYz4i+gCbzoiJQrFSP4nBLw74d7
         3GQA==
X-Gm-Message-State: AA6/9RlOSka3tNf6Jo99zmOO6PQkr5S/g5EeAWEFzDcv5KUal5qhXfDVfITPAsQhwbTVwnxfJVmc3oEKUqcJtMGK
X-Received: by 10.107.47.9 with SMTP id j9mr7780597ioo.108.1475634743836; Tue,
 04 Oct 2016 19:32:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>
References: <DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com> <20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>
Message-ID: <CALPTtNUgr7_3=pnVO-5Lny735zBFsy=9nCiyotxNELUWk_KLUQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11376684b99a81053e14fc5a
Cc: steve@collectiveidea.com, Assign a CVE Identifier <cve-assign@mitre.org>
Date: Tue, 4 Oct 2016 19:32:03 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for code execution via gem name
 collission in bundler (was Re: [oss-security] CVE Request)
To: oss-security@lists.openwall.com

--001a11376684b99a81053e14fc5a
Content-Type: text/plain; charset=UTF-8

I asked the Bundler team about this issue since this seemed to be lacking
details. They said that they attempted to fix this generic issue in Bundler
1.7 (see
http://bundler.io/blog/2014/08/14/bundler-may-install-gems-from-a-different-source-than-expected-cve-2013-0334.html),
and they were able to fix most of the issues.

However, there are some edge cases, which I think Steve is referring to.
Specifically, see https://github.com/bundler/bundler/issues/3671.
Additionally, see also https://github.com/bundler/bundler/pull/3696
(failing spec that shows the issue) and
https://github.com/bundler/bundler/pull/4714 (PR where the issue was fixed,
but only on Bundler 2.x branch).

The team was never able to remove all possibilities of namespace collisions
while keeping the existing lockfile format, which is why the fix was only
on Bundler 2.x.

~reed

On Tue, Oct 4, 2016 at 11:32 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > I'd like to request a CVE to track a security vulnerability found in
> > Bundler (bundler.io <http://bundler.io/>). Bundler allows the user to
> > specify sources from which Ruby gems are installed. If a secondary
> > source is specified, even if scoped to a specific gem, that source is
> > silently applied to all declared gems. This allows an attacker to
> > introduce arbitrary code into an application via gem name collision on
> > the secondary source, which will unexpectedly (and without warning)
> > take priority over the primary source.
>
> Use CVE-2016-7954.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJX8/U7AAoJEHb/MwWLVhi2xrwP/RjNz+PRsrpnt6grFruRj6rH
> IvSdysqLU3/+gK2Q+1mXtdydmkn05PMLHrB58Os6hP+K5POjPnNjXsc+VfaoD83r
> S4wmDBs3H4l3XMrT+WHOqvZWsF74iDlTSFA35DNLFRW6Ad5IwPNuMcUBE8yqlMyK
> SQ6aU0BvwB7yygmeK6RBvDICsUthcyrTooXkmeDKe1EhRxgKXwdvFVeknKiCOneK
> hTMvNl6MyWU6BW3W0AelJG0mcndEu9Ai7DUf50mgCtuJCLay0wKLn8QrcYg7dWR8
> 17xFYh8v3soNMNrWBhyKcJUxWPz/YhNKbqjvXnk4Q1BIiEaBmYL4/Mw08dj+nKmy
> 2LTE+Kcx9vKHedo6lNT/Qxuug+S1czmbGESfygWACDpl2frB9YwVaU8MbFxZkfVj
> utU9+zrQBhRQXUw9ZMN83dJqqiC8956/IGWczI++rvp8cqrMETP91PueK23wE091
> SEzfASXty4n2HdD4AWwg0caECoDeUiDZP8UrQkkLDYu9Xlyeqw9C1vgiATTT3Uni
> bTFjnBhrohCXEh/uvoWJIqZZbO8DRQ0KWI6FlcDuDzubGrih0M4CM7KZ0bDRpwGC
> 9VGbDtdGK0XPOzzHvPUr+GDSjwZCJ0aFTaxlxwa+ol15mLKyBWCkLHd/8NYHvM5E
> is4rHDl4O1P83Wx0+Er0
> =RpXj
> -----END PGP SIGNATURE-----
>

--001a11376684b99a81053e14fc5a--
