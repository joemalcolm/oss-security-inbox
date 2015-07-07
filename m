X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2731" "Tuesday" "7" "July" "2015" "09:59:23" "+0200" "Andreas Stieger" "astieger@suse.de" "<559B86DB.9040109@suse.de>" "69" "Re: [oss-security] Re: CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6" nil nil nil "7" "2015070707:59:23" "[oss-security] Re: CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6" (number mark "U       astieger@sus Jul  7   69/2731  " thread-indent "\"Re: [oss-security] Re: CVE request for vulnerabilities fixed in roundcubemail 1.1.2 and 1.0.6\"\n") "<20150707025707.0A6BD6C0020@smtpvmsrv1.mitre.org>" ("<20150707025707.0A6BD6C0020@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27707 invoked by uid 550); 7 Jul 2015 07:59:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27686 invoked from network); 7 Jul 2015 07:59:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
To: oss-security@lists.openwall.com
References: <20150707025707.0A6BD6C0020@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
From: Andreas Stieger <astieger@suse.de>
X-Enigmail-Draft-Status: N1110
Organization: SUSE Linux GmbH
Message-ID: <559B86DB.9040109@suse.de>
Date: Tue, 7 Jul 2015 09:59:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150707025707.0A6BD6C0020@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="bxLcUQMJc5somKsdo3M3OiEu7LdWuhjNH"
Subject: Re: [oss-security] Re: CVE request for vulnerabilities fixed in
 roundcubemail 1.1.2 and 1.0.6

--bxLcUQMJc5somKsdo3M3OiEu7LdWuhjNH
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 07/07/2015 04:57 AM, cve-assign@mitre.org wrote:
> > Fix security issue in contact photo handling
> > http://trac.roundcube.net/ticket/1490379
>
> > There is a potential for an arbitrary read from an authenticated user
> > who uploads a contact (vCard) with a specially crafted POST.
> > [...]
> > by supplying the "_alt" param in the POST. User must be authenticated.
> > [...]
> > I was able to read any file on disk (the apache has access to, e.g.
> > config/config.inc.php) using GET request
>
> > Commits:
> > 1.1: http://trac.roundcube.net/changeset/681ba6fc3/github
> > 1.0: http://trac.roundcube.net/changeset/6ccd4c54b/github
>
> Use CVE-2015-5382. For 1.1, the security fix for _alt seems to be
> announced in http://trac.roundcube.net/changeset/e84fafcec/github --
> do you mean that part of the _alt vulnerability was fixed in
> http://trac.roundcube.net/changeset/681ba6fc3/github and then a
> different part of the _alt vulnerability was fixed in
> http://trac.roundcube.net/changeset/e84fafcec/github (if so, then
> there would potentially be another CVE ID)?

Mistake on my side. 681ba6fc3 was a changeset that removed functionality
using the _alt argument, I did not mean to imply that part of the _alt
vulnerability was fixed by it.
e84fafcec is the changeset that fixes the issue in 1.1, and 6ccd4c54b
the corresponding backport to 1.0.

Andreas

--=20
Andreas Stieger <astieger@suse.de>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Dilip Upmanyu,
Graham Norton, HRB 21284 (AG N=FCrnberg)



--bxLcUQMJc5somKsdo3M3OiEu7LdWuhjNH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVm4bsAAoJECzWqVXhWUVG/qQP/1OvWTTO988Hfez/R94aouH5
Oh81GUD6NisIo8qaWlMNWYohgsSTpQA0Dhh0aKLxaIs6rxwDTjXq+ElJlF3zMvcX
55b0oy2Y3I6jsB9dJ9TXImucpT+p8OZA4E2Nb2wr85lz1ti2NLerAhDbwCej25mt
j/7ywmI+rUEhZog4PlwtAYi9Aw/MiR3CI2SmOWwkqLJmiup7azI6bUuCOK+qU22p
vUmGc34Pyby/IdfPtbHQUaALs7F8x8PI0t81DuIO4wi7jIjxpauqCdeGD8ENIaSu
TZLNtuH0iXHObBUyL+ii9wWvy61GLzpKdVLqTlYpV+dfSsJH0/3jK9jmx6BCBDgJ
+Mtp26EQWbT7F9yXUPGhOYCmfuqDSQhgZTNj/OP+ef6kjeBu1r69etMxV/TLIrKO
qt8xlsjAWD1CFTlbMiBBerluBjj28pXDRpX7H7W2mmCI6vzxGMFY+5I4tbcq/7PW
Acst1hkA7NI8cbqoOjBqaJd2EB/7fOjB+Ru1FTcGZJRvvOvSt6HsyVGH0RWJilyW
trwBdmYB88TGiUsezlYJiAlV0SWhFh0vfE7KirBQMLPxq4HQmVm4n5plHTnnHe2h
5yWMGrBwuxNqE7973VbKgtBaU260v87zrwEqZk2RwQCv8L0XXySkW2grvCHPWO33
20gUY4kesDlvnJv9xitT
=WhRz
-----END PGP SIGNATURE-----

--bxLcUQMJc5somKsdo3M3OiEu7LdWuhjNH--
