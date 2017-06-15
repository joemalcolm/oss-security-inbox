X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1903" "Thursday" "15" "June" "2017" "14:37:40" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170615213740.GB2269@hunt>" "48" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061521:37:40" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        seth.arnold@ Jun 15   48/1903  " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>" "<1497534642.3053.3.camel@redhat.com>" "<CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>" "<20170615172804.GA21944@wopr>" "<d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16028 invoked by uid 550); 15 Jun 2017 21:37:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16010 invoked from network); 15 Jun 2017 21:37:54 -0000
Message-ID: <20170615213740.GB2269@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <201706082349.03355@pali>
 <201706122347.54536@pali>
 <1497534642.3053.3.camel@redhat.com>
 <CANO=Ty0mQugCFyHqxzSVyc+2NUQcL5f42xXu9w=NQ5XvJHU75w@mail.gmail.com>
 <20170615172804.GA21944@wopr>
 <d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline
In-Reply-To: <d86f3fc7-7fab-4059-6c6c-14bea996d50d@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 15 Jun 2017 14:37:40 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after
 mysql_stmt_close()
To: oss-security@lists.openwall.com

--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 15, 2017 at 11:29:26AM -0600, kseifried@redhat.com wrote:
> Well part of it would be the current test case of "does anyone care",
> e.g. do people actually use this/care enough to do the work to assign a
> CVE, if someone wants to spend their time being the CNA for
> stackoverflow and put out good CVEs I'm fine with that.

For stackoverflow and other sites in the stack exchange network I think
your time would be better spent downvoting answers and adding a comment
along the lines of:

    -1: This answer uses [foo which is insecure](link) and should use
    [bar which is safe](link) instead to protect against [attack
    name](link).

That way it will be visible in the same spot as the incorrect answer,
let the person who answered the question know they made a mistake, let the
person who asked the question know there was a mistake, and provide a
notice to the future about both what's wrong and what's better.

If it gets hidden because there's already too many comments, then get a
pal to upvote your comment to make it more likely to be visible by
default.

Upvote any answers without security problems. If there's no correct
answers, then provide a correct answer at the same time for extra credit.

Thanks

--yNb1oOkm5a9FJOVX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZQv4kAAoJEPMhclmdjS6XRiMH/RZdd4xekRL/UfT74iU+4jV3
8F55FR/oelSiuhvq2rMpQ+WRyu/iPSiis1q8WEWll/MnpiQqEvD3Nk7UoNaOGp8l
Bqd732GaNhcqKNzXX31miCreuhsOXbaLNaVgu6uRR12baXmtnEtJMNi4Cqc2jGKB
edtdhCYPXwUMITEHqTz6hcKTLIA5mcAA5ZrcFX3GZyIUPSAc66T0RQ4dpk0Pc7LN
ESuYOFvJU3VdxxnNYXYByd9HzkwAA+4fQdBvr/ncCStQkG7PfLLvH1HyEWNT2mK4
9kcQyW4WeuJylQ3h3TG6GiMVYNH6X9bddZl1YNhx1SYyBklPzbTSx7TUSxkY/9Y=
=eXD/
-----END PGP SIGNATURE-----

--yNb1oOkm5a9FJOVX--
