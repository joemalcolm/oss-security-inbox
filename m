Received: (qmail 3271 invoked by uid 550); 20 Apr 2026 15:51:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13542 invoked from network); 20 Apr 2026 13:00:25 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776690015; cv=none;
        d=google.com; s=arc-20240605;
        b=lruTeITiTPxiE6vFmXSZEbhile4/jMoQ1JbMiZ7/DuGxuko6SKN6NEV72qw+zmJlW/
         dPMWdnZltiCcj5z7d9hi0m+vD9potgaANAXVMPnsY186dUosL3h3S59olxDBbG/kV4ZN
         j5Zagnlr2u8JZ+pgmqJtpnxETVtZSAqE9h/5Myr+KKAo1ynQT8hkWSqUWG0b599GtzgY
         5CP52oCch7P/x/U/kkgG6JFL6NZ3+4UT147smRz6p9aO1rtcBG5DMmYt5ApBtiB8VSxY
         NKGC0H3LWpqHeqyyXepfj0BKfJAS689UwYZAvrX/TYT3lDj9qvcQNjnSCWltk0SZHTxE
         Gitw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PraJQJ1exurkFQK4stQT85QTt8FaJ1DUqp0LBjUuFEk=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ig3slo33nw910NAh5Mw8QpHTtnn0q92JLINaYsjRLLG5XezTWUa+I1bOHl/6+ge7d5
         qN7xQisSgfN/FrIUwiUmXZAdOmbnRjjejSxs9upSzfbjoW51+t0juBFWjsQUKLVvliPM
         OlDIDl3s9KsYauJDh6aj0CDhQRn9Hh0aF4ZwK/Ko/bGzb0wjADjlUG4PU0PyKejHhzHj
         xFB/guTszqM7Y4QcbLtxy1NJoJv3xR71o9M7Y/2o1wWKuXvhVc3F3zn7s/4r4M9GNUS2
         0xvNjtfVFM+tVrtGyovuR8Vehq/6fRk1S6nzJyDL1yDLY4bQQ0NImC6yVNh/VwJGx50d
         dJDQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chainguard.dev; s=google; t=1776690015; x=1777294815; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PraJQJ1exurkFQK4stQT85QTt8FaJ1DUqp0LBjUuFEk=;
        b=fPbpGWAzYi5xcon0VY1pHvJGDQ212r4oaTshtKH8kgm6OFaBCkC3gajWqh33KEitdv
         8Y4U+yVXMdtYO48XqkmgqgXlHgZp3kIY6PkVcCnC2XuXRDWpaDcdhoyF4gGaqduhmaHE
         XTBCv5gxU0N7uHEen4/rPnk+kwofzKySz4nSHjmKwkL2hExQrUY8JTfaomxEUq0lyk0B
         Tpcp2dAiKAzWUdeER4drOPUQETh8d5Yz9YWQwIWB0H91kxNl6GCb37ZGB9iAfKKO1HYC
         S3B7o9Y6aVNoBBcbaAwpQXjC29/LzMKVCq4hcqKH551TMgXAy3OS6PmQdsJBR5SIyk+R
         Xnaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776690015; x=1777294815;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PraJQJ1exurkFQK4stQT85QTt8FaJ1DUqp0LBjUuFEk=;
        b=lU4aFNhJUQz0lgkfn52pr+b+za5ZyInqAPB6YgI3c36lEY8SOSA5OJrLsmZm6br/pq
         Bf6QCUgaymTvFkmZVCo5y/gNzwy8HfAIbOUCWLYQtP0NqEM7NcuWajWO9gusxOfDpZBd
         eMwKh3L3uU+Z4qF0mdu8TXHELzhoH2NfPFUAbwdFUJSo03uDGHsPZQb05Og6wUP4oaTP
         G5zVFAhviAWNppJAAAhnswPf16tj0ZeUYBZAVihswMY/kz+6wUcmkWsnPx0nWnKvVI0z
         Nc4LAPUF9YA90l/MH+tjQz3ykrWVuIiEwxZVgA15x67Ud2xo83i4DW5rlP/R7gy6QqRF
         ecNg==
X-Gm-Message-State: AOJu0Ywb69Mka2PihQEKvfiEgK/DuW/z0M8wSukjcl23Ip4pMIhVABIj
	+ur1hIwTI7ja5D8YPOGUoGpw7h9kbiV8jJXNz1YxhmftUUm4MASdiwMgjG88iOwPKGtZjG0frnw
	htLqLYODwtQ5vy7ndgCMHjPcQzv4awTirJmSJ0mHjCozbjBPdW/kRQxAeDw==
X-Gm-Gg: AeBDietuHQhPLfPGx1+s68oqQBLTpAvEZyIKXI8RSwMGkeAhxiv0I3C19MIvFaWPpws
	t7BuhdV51ZIMNQxwrQeRlBSW+/JoKwTk/9ZNqGpu5TxPAeIqgeHOFhRrBclTsQ9DMz4XBhG8xVq
	mJGG7yt+bKpS4LmHK+M6Uh3J4rIhpOkeWx/XlpAsg0KL7mjWkjUiVz/5XOgRoiJhDHdmg4fHk2b
	ID5JDh1/VD0/P1ZZ7TuSaqjMzrx5iGL91vzBEyRWUT6JesQrpcP3c0PuHxaHb4cEtviqRQ6S4ex
	CuWb4bspYUFrSw6ru0FTa1yqViHN
X-Received: by 2002:ac8:5cd2:0:b0:50d:8656:3e60 with SMTP id
 d75a77b69052e-50e36c66084mr202698171cf.50.1776690012169; Mon, 20 Apr 2026
 06:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <82bd2839-9db9-4ab4-9a7a-915e225a4450@oracle.com>
 <20260410025803.GA20948@openwall.com> <aeILrE9J6sYYPmEh@xoff>
 <545dcd82-c8f3-4702-ae81-8b5207791d95@gentoo.org> <87mrz1tbu3.fsf@gentoo.org> <aeU_M_lpglZoXOqI@xoff>
In-Reply-To: <aeU_M_lpglZoXOqI@xoff>
From: Dimitri Ledkov <dimitri.ledkov@chainguard.dev>
Date: Mon, 20 Apr 2026 13:59:35 +0100
X-Gm-Features: AQROBzAgH6fqwKMDKF29LUN3M163k6NhD7C7yCqXvlEjYjAoW18xeQ7m9uOfimk
Message-ID: <CA+V=+pu0DX8tKUxVEbsk8tL8TTVFF8A7DTbWUDCRywXLt0B6YQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Go 1.26.2 and Go 1.25.9 are released with 10
 security fixes

Hi,

On Sun, Apr 19, 2026 at 10:14=E2=80=AFPM Matthias Ferdinand
<ml.oss-security@mfedv.net> wrote:
>
> [ hopefully, discussing binary releases is not off-topic ]
>
> On Sat, Apr 18, 2026 at 12:18:44AM +0100, Sam James wrote:
> > Eli Schwartz <eschwartz@gentoo.org> writes:
> >
> > > On 4/17/26 6:30 AM, Matthias Ferdinand wrote:
> > >> Perhaps the message did not spread wide enough. Or are many Go progr=
ams
> > >> just not affected?
>
> > For serious issues, it may make sense for projects distributing binaries
> > (provided they know it was built by a buggy compiler) in the same way
> > they might do for a vulnerable OpenSSL DLL in their Windows offering.
>
>
> > > $ emerge @golang-rebuild
> > > ...
> > > fixing. It is regular like clockwork, so do people really need an
> > > invitation to do so?
>
> Personally, I am guilty of not compiling packages myself (except for
> some pkgsrc) and using mostly distributions in binary package form
> (Debian, Ubuntu, Alma). Also, many projects on github release binary
> packages. Doing a fresh release with no change except for the compiler
> used (and some new release version or build number) may make sense for
> those projects with affected binaries.
>
>
> > > IIRC it is possible to determine which packages actually need rebuild=
ing
> > > for any given CVE, but to do so you need to locally extract the entire
> > > recursive deps-included source code of every package, and run some
> > > arcane undocumented `go ....` invocation. Functionally, what you're
> > > doing is checking which programs link to an internal static library
> > > distributed with the go compiler. (This is not exactly correct, but it
> > > is a useful mental model.)
>
> Don't know enough Go to check affectedness of any project myself, but if
> it is that difficult it makes me worry even more :-) In the original
> advisory I did not see any mention if/how these issues propagate into
> compiled applications, and I only started worrying after reading the
> blog post about the memory safety issues and seeing that some projects
> had started issuing updates.
>
> A vulnerability in the build chain of course takes more time to assess
> and solve for all binaries in a binary distribution. Or you could just
> issue package updates for all Go applications (as proposed by Eli
> Schwarz).
> Not sure if I would really to want to see either every project/package
> using Go listed under the existing CVEs, or a new CVE issued for each
> just for increased visibility. I just wondered why the impact on
> binaries and binary packages is not being discussed more broadly
> (anywhere, not just oss-security).
>
> https://security-tracker.debian.org/tracker/CVE-2026-... only lists
> golang packages as affected, with some as already fixed and released,
> e.g.  https://security-tracker.debian.org/tracker/CVE-2026-33810 (DNS
> contraints).
>
> https://ubuntu.com/security/CVE-2026-... are still showing "Needs
> evaluation" for the golang packages, but they contain a comment by Marc
> Deslauriers: "Packages built using golang need to be rebuilt once the
> vulnerability has been fixed."
>
> Alpine has bumped build numbers, as Chad Dougherty wrote here
>     From: Chad Dougherty <crd477@icloud.com>
>      Not an advisory, but Alpine did this:
>      https://git.alpinelinux.org/aports/commit/?h=3D3.23-stable&id=3Df43e=
d43f4d329cb8cbca59b90c9560ab9e6d8f42
> Alpine also had fresh releases on 2026-04-15, including some updates
> "rebuild with Go ..."
>
> Arch linux appears not to have recompiled Go applications (or at least
> not all of them, only checked restic)
>
> repo.almalinux.org does not show updated golang versions, so probably
> no recompiled Go applications either.

There are multiple opensource distributions that do choose to rebuild
all go binaries / applications / packages upon CVEs in the stdlib or
in any of the dependencies.
As an example (shameless plug) for Wolfi & Chainguard - one can see
over 400 builds for
https://images.chainguard.dev/security/CVE-2026-33810

It helps a lot to keep symbols tables in the binaries in general,
because then govulncheck on the runtime binaries can determine false
positives for the unused symbols - see demonstration of that in Build
Better Go release binaries at fosdem -
https://archive.fosdem.org/2025/schedule/event/fosdem-2025-4406-build-bette=
r-go-release-binaries/.
In that presentation I have used coredns v1.11.1 which at the time
would show 15 vulnerabilities when symbols tables are stripped; and 8
vulnerabilities if symbols tables are preserved. The difference is
likely larger now.

I did not find similar granularity for CVEs in the stdlib - it would
be nice if govulncheck had symbol level information for the go stdlib
vulnerabilities; such that binaries that do not call particular
functions do not trip up the scanners; and can be auto-marked as false
positives; and thus not requiring rebuilds to pick up a newer
1.26.(n+1) in their build info metadata.

=46rom CVE scanning point of view symbols tables are nice, but they do
increase the binary size and thus runtime memory usage when the binary
is loaded / executed. I wish for detached symbols tables to be
supported, similar to detached debug symbols - but I have not checked
how to manually (with like patchelf) or automatically to produce that,
and if scanners would resolve and support loading detached symbols
tables. That would help providing these by default for scanners,
without the runtime memory usage impact.

The other thing is that likely there can be more agresive LTO
improvements, as currently go toolchain is concervative w.r.t. modules
and symbols linked; but given govulncher often says that a module and
symbol is imported but not used - it seems that there could be less
things linked into the binaries in the first place, reducing CVEs. An
extreme case was removing a single unused file in a dependency which
wasn't called or used at all
https://github.com/opencontainers/runc/pull/5056 (merged and
backported via other prs, based on discussions there) resulting in a
6.7% decrease in the runc binary size.

Fewer symbols linked in binaries, and symbol level CVEs for stdlib
would greatly improve go CVE management and reduce the need to mass
rebuild everything.

Regards,

Dimitri.
