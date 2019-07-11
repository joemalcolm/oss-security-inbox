X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3495" "Thursday" "11" "July" "2019" "15:57:02" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20190711135702.GA16717@f195.suse.de>" "75" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071113:57:02" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        mgerstner@su Jul 11   75/3495  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711093326.328948dc@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30095 invoked by uid 550); 11 Jul 2019 13:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30073 invoked from network); 11 Jul 2019 13:57:29 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190711135702.GA16717@f195.suse.de>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline
In-Reply-To: <20190711093326.328948dc@jabberwock.cb.piermont.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Malte Kraus <malte.kraus@suse.com>
Date: Thu, 11 Jul 2019 15:57:02 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: oss-security@lists.openwall.com

--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

> So these links seem to say that things have been structured so you
> *can't* run GUI apps as root, not that there is a special or unusual
> security problem in Wayland if you run an application as root; if
> you logged in as root, you could run GUI applications as root. That's
> rather different from the original statement. Am I misunderstanding?

running GUI applications as root is often considered bad practice. Some
reasons may be things like:

- the graphic system itself not being safely designed for this case.
- the GUI applications are usually large programs that don't consider
  security a lot or do not work securely when run with root privileges,
  because this use case has never been considered by the developers.
  Some GUI applications even actively refuse to start as root for those
  reasons, even if it was possible with traditional X.

Anyways, our report did not intend to discuss whether it is a good idea
to run GUI applications as root and also not to judge whether it is a
good idea for Wayland to prohibit doing so. However, it is a matter of
fact that Wayland in its current form does not allow it.

There is a number of GUI applications around that are traditionally
run as root. Typical use cases are for example system configuration
tools that need root privileges for practically everything they do,
except for displaying the GUI elements. Also file browsers often did
have or still have a feature to start them as root for being able to
deal with privileged files. All of this becomes impossible when running
on Wayland.

And for these reasons GUI application developers try to find
alternatives to provide these features to users. Having a separate
privileged backend for logical operations and an unprivileged frontend
for display purposes is generally a good idea and a benefit to
overall application design and security. Even though such a design can
add its own share of complexity (the inter-process communication for
example, often covered by frameworks of some kind these days).

The frameworks we brought up in our report are fully generalized
backends for performing privileged file operations, however, which is a
different story again. I suppose this route was chosen to allow existing
applications to be quickly ported to scenarios like running on Wayland
without changing the actual application design. And that could exactly
be the point where security suffers as outlined in our report.

Cheers

Matthias

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl0nQC4ACgkQFMQFyXGS
NVMjlA/+MnwY51+7rB3JFNa7qblthwXchtK0gwpQDt5Ci+6eEU6o1Uwp8ZHpgjOa
WNywVsJw+NYGX3EgK/tAf4UyIjZWid/BjK0fEjT02+yoi6rKM9uOqSt5Lix+oOxG
o6qLC4UYc8+dW/j2IqbtaQ8PhMP2DuMHLzmfDgj/Wi1OkspI+vslyezqXk0sKfsh
T2P2HNoTh/38mTF2zCpH67jpSOJfZsX1+hRn70KcPyRWKmgwFClh/FfZZFSHBvJx
17NdsUCJfof4voZ7bXgvcDSfjTE6opGGB1SKtGtVKs9pSNRTl1vp+HkT35HyUgee
CCtvIrKsTB3gO/Fd05NrQpzw6aoNyDEOESMlgB/NJpYSJmerHZ0REljFG04ojVW9
W3hTnmA+3NLnAArBJhduGfYLYg+cT1XPFZwiH5pQ7GfwVXRROklPryGRW42PTZ0A
ZCU99AbA4uhY8GDZlH+Dp2nVCqU0Dgpu5+1hJkG44Lm8HsSEatIPvtShy5tp5MPF
66285CFcS74OBlEMFsBjgSJPQxF+UNQw9a8o+TfqzWkb1LP7L2csja3p6cMglld9
FQee/fmeH5Vub/qlIZFDzVysGPbD8+w0gD4bY5RRCe3bMFajNh3sPaj+zRvZFDUy
1rEbSpVnfvpQzIcVrOpXmjaCkGeUa2cerlSjd6hDnVQtv1rhEEg=
=/yGp
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--
