X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3711" "Wednesday" "13" "February" "2019" "01:37:08" "+1100" "Aleksa Sarai" "asarai@suse.de" "<20190212143708.623v7zle3xt23hcd@mikami>" "85" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021214:37:08" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        asarai@suse. Feb 13   85/3711  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<87va1pdsc9.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20169 invoked by uid 550); 12 Feb 2019 15:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24147 invoked from network); 12 Feb 2019 14:37:29 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190212143708.623v7zle3xt23hcd@mikami>
References: <20190211130520.xwi6vpay3sc56pza@yavin>
 <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="63rwci2f4iuhjgwr"
Content-Disposition: inline
In-Reply-To: <87va1pdsc9.fsf@oldenburg2.str.redhat.com>
User-Agent: NeoMutt/20180716
Cc: Aleksa Sarai <cyphar@cyphar.com>, oss-security@lists.openwall.com,
	dev@opencontainers.org,
	Christian Brauner <christian.brauner@ubuntu.com>
Date: Wed, 13 Feb 2019 01:37:08 +1100
From: Aleksa Sarai <asarai@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all
 versions)
To: Florian Weimer <fweimer@redhat.com>

--63rwci2f4iuhjgwr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-12, Florian Weimer <fweimer@redhat.com> wrote:
> > +	memfd =3D memfd_create(MEMFD_COMMENT, MFD_CLOEXEC|MFD_ALLOW_SEALING);
> > +	if (memfd < 0)
> > +		goto err_binfd;
>=20
> Is it really necessary to use a memfd_create here?  Do you really need
> sealing?  It's a bit odd to add a new system call dependency in a
> security update.  The ability fexecve a memfd descriptor is also rather
> odd.  I wouldn't have expected execute permissions on memfd descriptors,
> so this sounds like a kernel bug (which now can't be fixed).

The benefit of memfd_create is that you can make sure it's a memfd and
that it's sealed -- which means that you don't end up in a situation
where someone has configured their setup such that you think it's safe
when it isn't.

I don't agree that memfd execution is necessarily a kernel bug --
fexec(2) only gives you ETXTBSY if the file is open for writing. But
when a memfd is sealed it's no longer possible to open it for writing
(with mapping_deny_writable). It's just like having any other tmpfs file
and execing it.

> I saw some other patch with a O_TMPFILE replacement.  Does this really
> work?  It's possible to create a new name with linkat, so that's not a
> real win security-wise.

I'm not sure what you mean by "not a real win security-wise". Yes,
someone could linkat(2) the O_TMPFILE on the host and then execute it,
but I don't see what the exploit vector is (you'd need to have a process
on the host that decides to find the O_TMPFILE fd and linkat(2) it --
and you'd have to linkat onto the same tmpfs filesystem anyway). It's
also definitely a win from the perspective that the vulnerability is
fixed.

I don't like O_TMPFILE because you can't differentiate between O_TMPFILE
and an unlinked file -- but it's much better than nothing.

> Could you just make a copy, under a different owner, and not care how
> it is going to be modified?

That won't work for rootless (read: unprivileged) containers, since you
can't change the owner. We could add it for the privileged case, but now
we will have 3 different fallbacks and I really am not a fan of that.

And rootless containers with a mapping for the unprivileged user to root
(where the binary is owned by the user) are vulnerable. memfd_create (or
O_TMPFILE) protects against all of these worries, and doesn't require
any cleanup of resources after-the-fact.

I'm also not sure it'll make a difference since the container user has
kuid=3D0 anyway, though I'm not sure if it has CAP_DAC_OVERRIDE. We could
chown the O_TMPFILE...

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--63rwci2f4iuhjgwr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAlxi2hEACgkQnhiqJn3b
jbSLrw/+NbYPBHHyh0HZXgI6L5ImBKDU7P1lf6dISulyaGyIJ9AsSf2cmvuH+cc2
FnhfdLzJ4BUx4x6oMxDhCS08L5muLJBmR9YLIpC2TOQN6d0RcXHm46QiEWdJXvIb
jG2qkteNOW/EEJjfmWld9nEyfK3CWo4w8I3eB3DLBm0uOtguv7bu2w6eahSo/xtO
MmSRkVfDXm6OUquk6qZh6Cv991rFl7KFFzUmolfAlXaedYtFo+uT13BSTM0l+k2E
c75yoJ44XKNHC0S2COIC7360B+PCxJCRsYxw5MM1ZWkQwCthj4oDV9DOMcELpDrm
h/m5F0S1cvwoxFsZFZEvG0r2d/UlyozI8AME/g3sa9VW0ugBbKHAfnu2KmNtm+Hg
5AIjXcDCN7/Kavikd6wvc1GxoQmPpg0YDrUUF/8yxSg/OsrWDE2GGurIOREyz46x
TMchFr3bsMHGMvoJSpuIxAhqN6wtcKEHIhnYCPuBvZZAaN/Oy96P5/0ADQXQYUn/
1UR/ooSfRlocBIBJcNDDWmwfREKLtx4iS8Y6G68ZUJccInpitcst1ODNh2JzUp79
Ci1sbKoK3we6N+vE2Gxi+5io9W7bnPYV9NFWbOC93bjfKYplF2DkSqxPjKnPWzc6
mDejaAfv28tXE4eVg4D9mr3suaSgqAELZ/8NpDwrmSX8ecyQOwg=
=71Bk
-----END PGP SIGNATURE-----

--63rwci2f4iuhjgwr--
