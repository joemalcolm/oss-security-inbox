X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2598" "Wednesday" "13" "February" "2019" "20:03:20" "+1100" "Aleksa Sarai" "asarai@suse.de" "<20190213090320.lce4bdign5rzqjzm@mikami>" "69" "Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021309:03:20" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        asarai@suse. Feb 13   69/2598  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") "<20190212163606.GA4443@openwall.com>" ("<20190211130520.xwi6vpay3sc56pza@yavin>" "<20190212163606.GA4443@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30019 invoked by uid 550); 13 Feb 2019 09:03:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29975 invoked from network); 13 Feb 2019 09:03:44 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190213090320.lce4bdign5rzqjzm@mikami>
References: <20190211130520.xwi6vpay3sc56pza@yavin>
 <20190212163606.GA4443@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="noc7267efu34jjnc"
Content-Disposition: inline
In-Reply-To: <20190212163606.GA4443@openwall.com>
User-Agent: NeoMutt/20180716
Cc: oss-security@lists.openwall.com, Aleksa Sarai <cyphar@cyphar.com>,
	dev@opencontainers.org,
	Christian Brauner <christian.brauner@ubuntu.com>
Date: Wed, 13 Feb 2019 20:03:20 +1100
From: Aleksa Sarai <asarai@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout (all
 versions)
To: Solar Designer <solar@openwall.com>

--noc7267efu34jjnc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-02-12, Solar Designer <solar@openwall.com> wrote:
>  static int proc_exe_link(struct dentry *dentry, struct path *exe_path)
>  {
>         struct task_struct *task;
> @@ -1628,10 +1780,15 @@ static int proc_exe_link(struct dentry *dentry,
> struct path *exe_path)
>         exe_file =3D get_task_exe_file(task);
>         put_task_struct(task);
>         if (exe_file) {
> -               *exe_path =3D exe_file->f_path;
> -               path_get(&exe_file->f_path);
> +               int result;
> +
> +               result =3D path_in_ve(&exe_file->f_path);
> +               if (result =3D=3D 0) {
> +                       *exe_path =3D exe_file->f_path;
> +                       path_get(&exe_file->f_path);
> +               }
>                 fput(exe_file);
> -               return 0;
> +               return result;
>         } else
>                 return -ENOENT;
>  }
> ---
>=20
> This uses Virtuozzo/OpenVZ specific APIs, so won't be directly usable
> elsewhere, but maybe a similar approach could be used upstream?

I have just sent v5 of my AT_THIS_ROOT patchset to LKML[1] -- which
allows userspace processes to block resolution of magic links. While
blocking access through /proc/self/exe helps block this issues, being
able to block (from userspace) resolution of all magic links would
massively help avoid problems like this.

[1]: https://marc.info/?l=3Dlinux-api&m=3D155002737629350&w=3D2

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--noc7267efu34jjnc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAlxj3VUACgkQnhiqJn3b
jbQVXg//aapc1vLd2HFqZaU+XsczNzsto5mWCYC4PrVdha5FJY7uAr5FzTu+IFzJ
t6WedjnraJ1v3BGBLnn/C0LYh/+yUsduJKUsoT4KAGlf2CJImxdQ3O8GEUaCQ6oH
i5KRYgFFNQ7vCZ+7A4Jkx0YP+BFfTsVoq5lUOVh9pKrgFnIXtojOSuzzq7VXdW/l
KX8gXJp8SC+7PDh+IYafEjHLDtd4gR+sJtZLS6xOGAhm8/RiJ7IEzQtVFo86FdNd
KAexjiROF8+a1ijW0SffOW6Hqmj6VDmpTKODf76+REdY3HOfntdE/XIId8QXdB7r
CLxoKeK/sxUlZqnFQsnp6UjIDLDCe1+wkxdrwEMg8xxbsm/M7p1JIua8rgbdwSr1
uN63bLOHrNEXeLWrzRhGjFZ1JSQAVByuBQY4EyHF12ZCmlFbm/AooRQgDC5OwH9w
mzNsTnpb4ysJavQhICCLVLTskwmJ93c9spmvg4QaVVJNvTT0q8QZFlDSy8QxAbX7
VaRNTtxaNJXywiapeQ7LXlfz0FsEbXA7ZsiaMjOU19n7jNhj3e2BJOFY6psFw/S6
DkrlMFAAiPGQbMZEmdQNuVDgh3znVB+apVhkr9RecQ5mlOlFy3c0eCcJMkS0E/HI
uvpU5gJhuALAiwWUyGoG8pjnIjfR3JaWEUqYJ5pk25kwoDBY4ug=
=aksO
-----END PGP SIGNATURE-----

--noc7267efu34jjnc--
