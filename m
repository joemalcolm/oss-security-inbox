X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1545" "Friday" "14" "July" "2017" "18:14:53" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20170715011453.GB14774@hunt>" "43" "Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" "^Date:" nil nil "7" "2017071501:14:53" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" (number mark "        seth.arnold@ Jul 14   43/1545  " thread-indent "\"Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler\"\n") "<C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>" ("<20170713154344.GG21662@suse.com>" "<C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30423 invoked by uid 550); 15 Jul 2017 01:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30402 invoked from network); 15 Jul 2017 01:15:07 -0000
Message-ID: <20170715011453.GB14774@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20170713154344.GG21662@suse.com>
 <C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GRPZ8SYKNexpdSJ7"
Content-Disposition: inline
In-Reply-To: <C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 14 Jul 2017 18:14:53 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-1000083: evince: Command injection
 vulnerability in CBT handler
To: oss-security@lists.openwall.com

--GRPZ8SYKNexpdSJ7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 14, 2017 at 07:27:53PM -0500, Brandon Perry wrote:
> > On Jul 13, 2017, at 10:43 AM, Johannes Segitz <jsegitz@suse.de> wrote:
> > This can be exploited by creating a tar archive with an embedded file
> > named something
> > like this: "--checkpoint-action=3Dexec=3Dbash -c 'touch ~/covfefe.evinc=
e;'.jpg"
> >=20
> > (Make sure evince is not sandboxed by apparmor before trying to reprodu=
ce
> > the attached POC)
>=20
> Not sure if the list ate the attachment, but I don=E2=80=99t see it avail=
able.
> Perhaps a link to it somewhere else would be of use?

The attachment didn't make it through to the distros list either. When I
was testing just the tar portion of this, I skipped the / character in the
filename and added a 10MB zeroed file (truncate -s 10MB huge) to make sure
the checkpoint program gets run.

Thanks

--GRPZ8SYKNexpdSJ7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJZaWyNAAoJEPMhclmdjS6X8WgH/1aW4QJyUE1SV+tNQ/edUHt4
+VnjvD2MNKxIK1De2PTZ75arDvuAfQALBNtOQ64F0SKEW5ODFLphclo47JQdsk9y
Xwp502FQHjW2wdA4QXTt40m/FXIm/sKNL+oDpV2jRFhRt0lIGJwPJz/b896fkxOW
/7njhILkjEuJ8zKlhBYX02htUqCuRMDkMq6eEXWUk8KeGwR7ob2T4kydxRN1ov44
4n1W9gQZSY3GA9eoi7wFIXP0mQ6W7RZGM8KMbuuv0TbZi9m+zttO7+3Sm/qFyQj0
e70NK4j4ixUWPo0I8uBS26GS1D9zyiaRFq1kwvV3LwliWcGd83l6z6FSkLRSXqA=
=D7zI
-----END PGP SIGNATURE-----

--GRPZ8SYKNexpdSJ7--
