X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6948" "Wednesday" "18" "January" "2017" "09:17:15" "+0100" "Michal Hrusecky" "Michal.Hrusecky@nic.cz" "<20170118081715.wbv34nzrvicm6vxb@workbook.ipv6.hrusecky.net>" "166" "Re: [oss-security] linux-distros subscription" nil nil nil "1" "2017011808:17:15" "[oss-security] linux-distros subscription" (number mark "U       Michal.Hruse Jan 18  166/6948  " thread-indent "\"Re: [oss-security] linux-distros subscription\"\n") "<20170115023720.GA21220@openwall.com>" ("<20170113093611.ztx4osufhxtcgany@workbook.ipv6.hrusecky.net>" "<20170115023720.GA21220@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9238 invoked by uid 550); 18 Jan 2017 17:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1552 invoked from network); 18 Jan 2017 08:17:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
	t=1484727436; bh=opeNds5kSxzZ1FpFhhhld39bzoJhuW6sF61opDtD2cs=;
	h=Date:From:To;
	b=IcE0ZhlCWD6VDUGL7bboQbl18wPs6Oa77Wr7y9ZkBHdKTYJai+xi7vtKY11iQyCeW
	 k18yDiJEOuChqPb/4NLi5VWhHidqZtf2/+fjz31wsVkveDUe1q32nW7mskqrOsxYEU
	 zflpiM1z3owXBCbENYGEN8zjDqfG9XrdtS3Qm+UQ=
Date: Wed, 18 Jan 2017 09:17:15 +0100
From: Michal Hrusecky <Michal.Hrusecky@nic.cz>
To: oss-security@lists.openwall.com
Message-ID: <20170118081715.wbv34nzrvicm6vxb@workbook.ipv6.hrusecky.net>
References: <20170113093611.ztx4osufhxtcgany@workbook.ipv6.hrusecky.net>
 <20170115023720.GA21220@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cjkob5jco4n2csqh"
Content-Disposition: inline
In-Reply-To: <20170115023720.GA21220@openwall.com>
X-Operating-System: Linux
User-Agent: Mutt/1.6.2 (2016-07-01)
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Subject: Re: [oss-security] linux-distros subscription

--cjkob5jco4n2csqh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Solar Designer -  3:37 15.01.17 wrote:
> Hi Michal,
>=20
> On Fri, Jan 13, 2017 at 10:36:11AM +0100, Michal Hrusecky wrote:
> > I would like to request subscription to linux-distros mailing list. I'm=
 one of
> > the maintainers of Turris OS - OpenWRT fork used on Turris and Turris O=
mnia
> > routers[1].
> >=20
> > Not sure what has to be part of application, on wiki[2] I found only th=
at I
> > should request it here.
>=20
> Right.  This basically tells us there's interest, and from whom and for
> what reasons.  That's useful, so thanks for posting your request.
>=20
> However, in practice the list membership has been frozen since the last
> distro addition in April 2014, so for almost 3 years now.  Since then,
> there were only removals and changes in who's subscribed for the
> previously accepted distros.

Thanks for the info.

> Perhaps we'll be forced to re-open this can of worms, or shut down these
> lists for good.  Simply keeping them frozen is unfair to new distros
> requesting membership now.  Simply accepting all who request membership
> based on mostly objective criteria yet without introducing distro's
> userbase size as a criterion is, in my opinion, going to make things
> worse overall (in terms of balance of benefit to users vs. risk of
> leaks).  Yet we might, as long as the benefit-risk is still deemed to be
> positive (even if less than now).  Just to be fair.

Ok, what I forgot to mention is a user-base. Our distribution is quite smal=
l, we
have about 7 thousand users. Our distribution runs on routers we gave away =
in
the past and new ones that we are selling and both have by default automatic
updates enabled - so they get updates including security ones quite soon af=
ter
we release them.

> Here's a thread from 2015 with some half-baked thoughts on the issues:
>=20
> http://www.openwall.com/lists/oss-security/2015/03/20/5

Thanks for the context, I understand it is a hard decision.

> Here are some recent requests:
>=20
> http://www.openwall.com/lists/oss-security/2016/10/21/2
> http://www.openwall.com/lists/oss-security/2016/10/25/2
>=20
> What's common about the timing of these: they were triggered by
> vulnerabilities that attracted a lot of media attention.  This may be
> primarily about publicity and checklists ("our competitors are on that
> list, we should be too") and only secondarily about security.  I do
> value the persistence of some distros/people reminding me about their
> requests, though - suggesting their interest is more likely genuine.
> And your request isn't nearly that "badly" timed. ;-)
>=20
> > Probably you will need some proof that I'm who I claim to be. You can s=
ee bunch
> > of commits on our gitlab[3] (signed by the same key I'm using to sign t=
his
> > mail) and you can reach me and some of my colleagues on security@turris=
.cz
> > e-mail alias that is also listed as security contact on our web[4].
> >=20
> > We have infrastructure in place to work on embargoed issues without dis=
closing
> > them to public. Not sure whether there are any other requirements to me=
et. If
> > so, please let me know.
> >=20
> > [1] https://omnia.turris.cz/en/
> > [2] http://oss-security.openwall.org/wiki/mailing-lists/distros
> > [3] https://gitlab.labs.nic.cz/turris/openwrt/commits/test
> > [4] https://www.turris.cz/en/contacts
>=20
> What would have been some recent issue likely handled via the distros
> list (this is often stated in the follow-up postings on oss-security,
> albeit not always) where the advance notification would have helped your
> project release a fix substantially sooner?

Hard to guess what is there. But basically before we release anything we do
test it, so from the point when we learn about the issue, it takes days to
release a fix (after commiting fix, we build binaries, do some testing and =
only
after that we release it for everybody). What is most important for us is I
would remotely exploitable kernel issues (here testing takes even more time=
),
openssl, openssh and lighttpd.

> I notice you fixed OpenSSL CVE-2016-7056 promptly:
>=20
> https://gitlab.labs.nic.cz/turris/openwrt/commit/9aa88e76e70250dd219e8e22=
8162bde045ade4f9
>=20
> However, that issue wasn't on the distros list.
>=20
> I also notice you've been on oss-security for half a year.  That's good.
> However, I wasn't able to find any record of your past participation in
> this specific community.  You might want to get more involved first.

Yep, using it as one source of information about vulnerabilities we need to
fix. Was thinking how to respond to the contribution part, other mails help=
ed
me to get some idea what can I do to improve. I admit that I'm new to this
field and I'm here mostly to learn about potential threads to our users.

Company I work for contributes to security in general, but probably not in =
this
specific community. I'm from CZ.NIC which among other stuff runs Czech CSIRT
team. But that is even different department. What we do in our team regardi=
ng
security is probably nothing that would help us to discover new
vulnerabilities. What we do is provide people option to send us firewall lo=
gs
and we use the results to build greylist[1] and we allow people to check
whether their IP tried to attack any of our users[2].

[1] https://www.turris.cz/en/greylist
[2] https://amihacked.turris.cz/

Personally, I'm not involved in those projects as I'm working most of the t=
ime
on our distribution. I asked for the membership as I would be the one handl=
ing
the issues on our end and I understand the need to limit the audience as mu=
ch
as possible.

> And if/when we do re-open the list for additional distros, you'll be
> able to re-request membership.

Thank you, I will reapply when that happens and in the meantime will think
about suggestions others posted about how to contribute back.

--cjkob5jco4n2csqh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEo5WdE9VMgau/ozp2sqowqJRyn7MFAlh/JIYACgkQsqowqJRy
n7O4mxAAjK1WLNwAEDOYej4GJjglUsVp9y+JB35uJomU3iEFl5ZWZtVB5LyvOwTe
3+Jc6T1uUwBPVtmuG3UlnkHKn+VsE0HZ2DG7FoGUh9LEjjGpexFoiq4nEf5wNZpX
53GMkJs8wBsuPG4Y+itTZp/DPTwi7RpUmK7NXKPJ5uF2D93XtSZAtB3tjzWaLVnL
OCESJ3pLo66nmos6wcovI6nPmp1YNn2G/LfaIaOJEhzc5xwo2TnfAa+C63cxbsUQ
Icz8nKzt7U2ds8k2bVzd/PX+pRLlFPH6r0NWh7GEjN3S5wShjbGjk1k+V80/mv/u
ehOUogkKyu9wdzhaRlnmo4rdeu0CmmTFXqndLxBcZR+tSGog3U797TGdpJQhDa2r
W/MYUR5OyfTqrB0inGma5foubIjnssrm6c065mSQIE+1GrrOnAJUaa6bNdwxmHo1
D/TfbLT2mOmE7wMeADZgkILLxMahEDFyM0JJxBS0UM8/udbWinVIC6Co2Hwz9QzO
ykphACQ2JUIOUa8P9LlgYYrkZhIvIU/1jqi/HhrvluolVCEsQ1NV7ukW6DU7hxuC
GjdZWOjWnJqPnn5NrTZlOt2SUZbCPUkIs7xPm4bClIdF0zQolkOG2iay41xNHevz
Q8Z4AjZ76egMU3C5+qdStI0TJrOR3Wh4+FOgYTFTfDyrbNq7zOQ=
=LFEi
-----END PGP SIGNATURE-----

--cjkob5jco4n2csqh--
