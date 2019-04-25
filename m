X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2890" "Thursday" "25" "April" "2019" "08:30:24" "-0500" "Jamie Strandboge" "jamie@canonical.com" "<20190425133024.GE13360@iolanthe>" "71" "Re: [oss-security] Security issues in snapcraft snap-confine set*id binary" nil nil nil "4" "2019042513:30:24" "[oss-security] Security issues in snapcraft snap-confine set*id binary" (number mark "U       jamie@canoni Apr 25   71/2890  " thread-indent "\"Re: [oss-security] Security issues in snapcraft snap-confine set*id binary\"\n") "<20190418104355.GD9248@f195.suse.de>" ("<20190418104355.GD9248@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Security issues in snapcraft snap-confine set*id binary" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27800 invoked by uid 550); 25 Apr 2019 13:43:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17409 invoked from network); 25 Apr 2019 13:30:38 -0000
Date: Thu, 25 Apr 2019 08:30:24 -0500
From: Jamie Strandboge <jamie@canonical.com>
To: oss-security@lists.openwall.com
Cc: Matthias Gerstner <matthias.gerstner@suse.de>,
	Zygmunt Krynicki <zygmunt.krynicki@canonical.com>
Message-ID: <20190425133024.GE13360@iolanthe>
References: <20190418104355.GD9248@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BQPnanjtCNWHyqYD"
Content-Disposition: inline
In-Reply-To: <20190418104355.GD9248@f195.suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Security issues in snapcraft snap-confine set*id
 binary

--BQPnanjtCNWHyqYD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, 18 Apr 2019, Matthias Gerstner wrote:

> 1) Up and including to version 2.37.4 the /tmp directory within a snap
>   container was owned by the first user that entered the container. Since
>   snap containers can be used by multiple users at the same time or a
>   privileged program or daemon may run in a container, the security of
>   files and directories in /tmp is compromised.  An attacker can remove
>   or replace files and directories belonging to other users within the
>   container's /tmp to achieve an unspecified impact.
>=20
>   This issue was recently fixed by upstream via commit [3].

This is CVE-2019-11502

> 2) The `sc_join_preserved_ns()` function along with a number of other
>   function remembers the current working directory (CWD) of the calling
>   user outside of the container and attempts to restore this CWD again
>   within the container. The `chdir()` operation to restore the CWD is
>   performed with root privileges within the container and is prone to
>   symlink attacks. Therefore an unprivileged user can enter arbitrary
>   directories within the container. Example PoC:

This is CVE-2019-11503

> 3) In function `sc_parse_mountinfo_entry()` the pseudo file
...
>   I don't see any viable attack vector here at the moment. To actually
>   control the behaviour of snap-confine we'd need to control the field
>   (4) of the mountinfo file. This field is only available to
>   unprivileged users if they can perform a bind mount.

I agree, this is a legitimate bug that the snapd team will fix but because =
an
unprivileged user can't gain privileges or other wise cross privilege
boundaries, I did not request a CVE. We can revisit as necessary.

> Best Regards
>=20
> Matthias

Thank you for the review!

--=20
Jamie Strandboge             | http://www.canonical.com

--BQPnanjtCNWHyqYD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEETCDAa12L3miIVNKKUdvcWMxVlXMFAlzBtnAACgkQUdvcWMxV
lXPX/w//e2o0McwgLQqcfJ9q6gWEUK8E9RQmQ63mKbjLCWzJ/NT7+z61G9pZjY8I
szqxIJKFa9gy6/knO0UnSRUZz1cJAuP8voQ2rXTLgfcpzoZS6qscRtPkE3SDuxye
Wt5woy9ylrowIAkliW5giz0FrvOTvSybScWxv0u9yL0LgeHB3V26VHT1+VB68MjD
fLOmOFRMH6WedCc5fc08RZcZem6Su4L2RYyKy4YdVuWt61zynAgywhULTZ/1QViM
QQfnDD9nSwtMEsWwrgMlFuO6YTnU4we/9ELfi+GjXZGe9EQSY6oClat2bG610riX
09FOv4+F440FPySStvvKCv9HDQ2f/CoFEVu/riXvuHmUIq+Y1ZIISTNnW2+ATAVk
bdZMdwxVXNf6ZmO8TEJytAQuBbVnJh101+Y7W81g4EX91R4YdOgQTYAYUa2ReJr7
4FM8VsWDMKBFhiG3TJBYIFPjS6zm0DfGLciowVf69vyA2waJ/e5v5Nc66gNs/rcR
3hMcuzJSWWWEHlnnE3e3scicXeRlNfoXlJ6EIdRUVSXZtmlAiSbKSZYYFdPDwgx8
olFvibAbDwdqE6QSoEn6KziOuFfpKI0W+bUyVkmKk+6HQHkPkzG2gHpV7HaoKHzk
PDh/GmOdCBKb9ofIKzov2EkiXRvBVONdow6FnlC92kiy5ut7E+E=
=61dm
-----END PGP SIGNATURE-----

--BQPnanjtCNWHyqYD--
