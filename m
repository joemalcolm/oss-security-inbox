Received: (qmail 22484 invoked by uid 550); 11 Apr 2024 18:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9765 invoked from network); 11 Apr 2024 17:25:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712856322;
	bh=AAONnW18gk1aAXRRdvNlna/+62rrqboRb8RDaC+Tvpo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TSjgf3XDIXLh0zScQXNAKDs4Jq+Q7Si+vi40NsAcTc/+Ajuux8t/85vsLFDBCGpV+
	 3Tni1GPUS9tgKAQtWPl9HqSqrq4E/VklupED+LxghayVUa5MBE7xSAHL4SKf3OWudh
	 cc2QIY9gu+tyAVF9YvPqg8gGZaZEq4TSxBaKRq1Ja/245OIo21gPFz4+vBw0Tp4SLW
	 rY2MGGKxYdmI4mM3wDnwVKwlZMpRRX8EBnXi5t/hTY9/n8Li9tCHTUFNVlN/C7yFHi
	 UBOPwSxUjZsmRtKcfkld+PQusPC2G6TQy0vatLB6YcETKk05n+c1mNcfEkeLgAGaHU
	 T6WLHSrBlRKpQ==
Date: Thu, 11 Apr 2024 19:25:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Joey Hess <id@joeyh.name>, Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Message-ID: <Zhgc_fyeFqnTc__t@debian>
References: <ZhYEpAFolwefRv7X@debian>
 <20240410162812.GA17059@openwall.com>
 <66175855.2090805@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3h14OggsUOvJq77"
Content-Disposition: inline
In-Reply-To: <66175855.2090805@gmail.com>
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

--g3h14OggsUOvJq77
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Apr 2024 19:25:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>,
	Joey Hess <id@joeyh.name>, Jonathan Nieder <jrnieder@gmail.com>,
	Andres Freund <andres@anarazel.de>,
	Lasse Collin <lasse.collin@tukaani.org>, xz@tukaani.org
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

Hi Jacob,

[reordered]

> Lastly, I believe that if (a big "if") enough evidence can be found to ma=
ke
> attribution of the xz backdoor stick, the results are likely to be a
> political scandal that will serve to deter others from similarly going
> rogue, so pinning the "Jia" on the sockmaster might be a good step to red=
uce
> the overall threat to the community.

Agree.

On Wed, Apr 10, 2024 at 10:26:13PM -0500, Jacob Bachmeyer wrote:
> > Note that other recent threads in here about search for code patterns
> > similar to Jia Tan's and even for PGP keys similar to Jia Tan's are more
> > relevant to oss-security, because they're aimed to uncover potential
> > related backdoor code in other projects.  In contrast, identifying who
> > Jia Tan is or what country/ies they're from doesn't obviously help.  At
> > best, it may give us guesses on where the presumed targets are, but then
> > what?  We need to protect the whole ecosystem regardless of who/where
> > the current attackers are, and we need to develop means to detect such
> > attacks everywhere, not only at currently likely targets.
>=20
> First, a factual correction:  The hypothesis that "Jia Tan" was actually =
in
> UTC+03 seems to have been backwards, since the peak activity overlaps only
> partially with office hours in UTC+03, but does indeed start with 9AM in
> *UTC-03* by my reckoning.  The only problem is that UTC-01 through UTC-03
> cover various islands in the Atlantic Ocean and a few Eastern parts of So=
uth
> America.  All of these strike me as unlikely sockmaster bases.  The probl=
em
> with time zones east of UTC is the observed UTC 17:00 "quitting time" (mo=
re
> below) which only gets /later/ in the local day as you move east.
>=20
> Second, I think that we can probably put the "Israeli" hypothesis to bed:

The timezone can be faked, but it still has implications.

Why would 4 commits in the recent period be committed allegedly in
(winter) +0200?  I can think of a few options.

The person had something to do in a country of that timezone.  Maybe it
worked for a country in that timezone.  Maybe it worked for a different
country but was infiltrated in that country.  Maybe it was a false flag
to implicate that country.  But I would discard the "it's just a random
timezone that the person chose".

For a random timezone, you use either UTC, or the one in a country that
would be unsuspicious.  I used UTC in the past, but that might be
suspicious in Spain where I live, so at some point I decided to use
CET/CEST, which would be unsuspicious for a computer in Spain.

Now, for the false flag.  This attack was very likely something that
they didn't intend to be discovered, as it would be significantly more
valuable if undiscovered.  So we can assume they didn't put those 4
commits for us to find them.  Yet, that person could have participated
in other false flag attacks, and have its computer set up for them, so
there's some chance that the +0200 timezone was false on purpose.  If
that would be the case, and clearly it wasn't careful because it leaked
the timezone in the commit, it might have left a few other traces (for
example, when git pushing; maybe the logs have an IP).

If it was not a side effect of a false flag from the same computer, this
timezone was probably because the person has some implication with a
country of that timezone.  Either infiltrated (working against them) or
working for them.  In either case, it was a big mistake to leak the
timezone, and it would mean those commits have been likely done from an
important computer.  It could be a computer of an intelligence agency,
or maybe of a programmer infiltrated in a country of the timezone.  I
tend to favor the former.  Programmers don't really need to infiltrate
often, since we work remotely just fine (there are reasons to physically
infiltrate, but it's less likely, I think); also, this kind of long-term
work isn't the kind of work you'd use an infil for.

In any of those cases, the timezone is useful information, I think, and
shouldn't be discarded easily.

> There seems to be no 24 hour period where "Jia" made no commits, and what=
 I
> think is Friday night into Saturday (therefore the Jewish Sabbath) is one=
 of
> the more frequent late-night periods, while "Jia" seemingly (mostly) took
> Sundays off.  I have read reports where activities were attributed to Isr=
ael
> and two of the key arguments were that APT group did /nothing/ on Friday
> evenings or Saturdays, and Sunday seemed to be an ordinary work day for
> them.  These characteristics do /not/ describe the "Jia" crew.  Whoever
> "Jia" is, an observant Jew he is not.

That's a very interesting observation.

> I have been looking at this from a different angle, assuming that all of =
the
> time zone information in the commits is bogus and looking for patterns in
> the commit epoch timestamps, which are harder to convincingly fake.  The
> attached "collect.sh" is intended to run in a directory next to a copy of
> the repository as "xz-backdoored" and extracts the commit and author
> timestamps in epoch time, further decomposing them into week/time-of-week
> and day/time-of-day for analysis and plotting.  The week and day numbers =
are
> counted from 1 Jan 1970, which was a Thursday, so the time-of-week numbers
> in the output of the attached script are seconds from midnight Thursday. =
 An
> epoch day number X can be converted back to a date with `date --date=3D'1=
 Jan
> 1970 UTC + X days'` and an analogous command converts week numbers to
> Thursdays.  This is a work in progress and I am not yet fully confident t=
hat
> I have correct analysis, in part because my results are different from wh=
at
> others had found before I started, so I am presenting the data extraction
> script for others to either find problems with or replicate my results.  =
The
> script was run on a repository clone with master checked out at commit
> f9cf4c05edd14dedfe63833f8ccbe41b55823b00.

How did you plot them?  Do you have a gnuplot script handy or something?

> There is a noticeable cluster in the plot, and about 85% of "Jia Tan"'s
> commits were in the five hours starting at UTC noon.  If we exclude 2024,
> which seems to have been "crunch time" on getting the backdoor out, that
> jumps to about 91%.  I believe that this pattern *might* be a good indica=
tor
> for the sock farm containing "Jia Tan" but there are likely to be false
> positives, so it is probably a weak indicator.  Combining this pattern wi=
th
> a claimed timezone (like "Jia"'s UTC+08) where that period is into the ni=
ght
> might work better.  In UTC+08, that period is 8PM to 1AM, which are unlik=
ely
> office hours.  The peak also ends almost as abruptly as it begins,
> suggesting that UTC 17:00 was "quitting time" at "Jia"'s office, but that
> "Jia" did occasionally work late.  The five hour active period is consist=
ent
> with morning planning meetings, followed by general work keeping up "Jia"=
's
> appearances, with a floating lunch break somewhere.  Think "rogue state
> bureaucracy" here.

Hmmm.

> The percentages above were calculated with these Awk commands:
>=20
> awk '{ if ($5>(12*3600) && $5<(17*3600)) A++; else B++ } END {print "in:
> "A"  out:  "B"  all:  "A+B"    %in:  "100*A/(A+B)}'
> timedata-committer-JiaTan
>=20
> awk '$4 < 19723 { if ($5>(12*3600) && $5<(17*3600)) A++; else B++ } END
> {print "in:  "A"  out:  "B"  all:  "A+B"    %in:  "100*A/(A+B)}'
> timedata-committer-JiaTan
>=20
> Epoch day 19723 is 1 Jan 2024 by my reckoning, (`TZ=3DUTC date --date=3D'=
1 jan
> 1970 UTC + 19723 days'`) so the second command repeats the count, excludi=
ng
> 2024.
>=20
> This thread landed in my inbox as I was planning to start work on further
> partitioning the "Jia Tan" commits, initially by keywords in the commit
> message.  Do commits involving "ifunc" stand out in time from all others?
> Alejandro's work raises another question:  Does time-of-commit correlate =
to
> diff size?  Alternately:  Was the more complex work seemingly done in a
> different time zone?

I'll try to investigate this.  Please update when you finish your study.
I'm interested.

>=20
> -- Jacob


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--g3h14OggsUOvJq77
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYYHPcACgkQnowa+77/
2zLbhg/+MKEf/5q8LShsy3fDQvNcf8Kq4n/D26YKYr1DDiFSfC4tAC+5GtMmHA3R
owAxaroSqbTt6g7lzSmvUVlGj4Qh4w6wj48RZ90V7fIS96gx5YgBHSvkYhfd4xCp
5L2VwOEufUXtYPAE/gl9rEKmQbx6buRQnej+DBrnoA0+RcRza9TySDPiujMavTt0
4FL5lVV8JSRYlxWzB/FKvK9GsOlkozdM3CUUJcr/7FDGff4oXQb9Q5otWCppF4fc
rkc1kATXKH4z/qwGoO6B+pbozeI7GBMRv6aQkeUndFQsNEFO6Yxr7GGH0i4z+wrP
qCSpSJA6n7WHFm+aSLkPvcN5r0D6NjFLYAZSzen6jLvEhDkxWcCAoHTW+W7rT61P
B6n4P300qkGdy+B+dFXvL3Sd6TqBsCmYdoq8Kmo5llQFdoORtjZB5blp78uBCbLk
jnvg0Onjv0wA1PxEL/coSgiifaiqS+A0wTEnX7pr7EF71108/gdBSJHtqR+Ln772
HOVSwyY8uGg+G0Xx05epDSSrTzDaIvCQpZjMsJd+s4oWgRvCtGUGzhTqm4CCu9Zj
AfL5g2tAAKj94GDkdPyQ4BlyijrpUOfTAKCoUPiQNYgJG7T0hJ8cgtrKe8LgDf1y
hHx+5O4WFiRz8a4fYSBF5E3yTaVNy+XFXicVsQMfCw3SaHsID6k=
=xGs+
-----END PGP SIGNATURE-----

--g3h14OggsUOvJq77--
