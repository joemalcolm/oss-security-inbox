Received: (qmail 28408 invoked by uid 550); 28 Dec 2022 19:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14029 invoked from network); 28 Dec 2022 19:24:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UQoSPV/1oOCa8cF4Ca8Amt2eQFnSyvUDA4BmxDEFR+w=;
        b=kIAmp8g/mEVi078s384yPgoXQvrA3mRa1XYHXxSOJDxEkuRxmjWy6JnVDv+rSkC5Cy
         0DUwDdB1bSP5DbelGgaMTIpaMKagza7eCPCU9Fa80nmpaCXBihPM9u+txr/UwhrVZBT1
         1I/E+PJ3yvAzx5ZSFRqbRzEON7RweLfIqlQiTAq6buKurVxF9AzBpGxOJsscmpwIuarM
         fDUk6ZomH64X4SrwgIW0kSHfY33Qwbj74mckd4TKZSBVZJ/nFuN0X+lJCWcxzYfqr/kF
         RdSAWLkcKSk7QeplI2BpJ9cVewKW4q2voiiIntzUD4hgT64wvHc7bDC009VjTzIg2Oss
         Pytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UQoSPV/1oOCa8cF4Ca8Amt2eQFnSyvUDA4BmxDEFR+w=;
        b=y/WobXlSsNszJlQewBBoNApuNUSehgRLEdsyDL0kw6NhMu5/yaPIyR2u+EWtCcKQxZ
         nsI8XeCAvApkjNM67bUjZ9q3J2uDl24iXWdbi9e1V/smux7TtYxXxdUqSpa7LU7olTS0
         QG3cgHSYy7L3B5BdYKcybXYLKoHA5ecGTs1BBIfQ2zlhGrLCjZ/uRa7q3eccCJCMis2e
         birWj7f2N1guDwuUvrNeBfyv2xOXUu/ZWxmDFPpykWNu2bKAKVTYqqe+1johbuPBo1/x
         27DV11eWmvEFLMCd+tChVVJn5xZpqwLaDw78O65HYJYV5/ZYZjrMc3i7+f/OI0VJoGqK
         fqHQ==
X-Gm-Message-State: AFqh2kqwi3ZFzd/SktQxV4Lwri+NB6OQLoFGCF8fbAVfGtg2M6KyK9kn
	tcjz4rLYTs9StsivIFY+e/TVPl26Mgj88/IGEOaUSX4FaWIQn7vumoJrPnPUyRbbGBvXBL6rfIH
	ImjHwS8bSE5EGYNVChcasjvXVgCwVxTdXa903Eurv0IvEzr7QNsfYP1F6A77Pplh67gT+Ll79qL
	ddViEHtyJ3hSS0YKgeAQ==
X-Google-Smtp-Source: AMrXdXum8fPc3sjwaK/zW/xv//enj22K0WAIsRX0JtKDbvNzJgE95zxm9bniqRvhIYwLpgGtgczLcA==
X-Received: by 2002:a05:6102:52c:b0:3cb:bb2:7d37 with SMTP id m12-20020a056102052c00b003cb0bb27d37mr1614387vsa.33.1672255477254;
        Wed, 28 Dec 2022 11:24:37 -0800 (PST)
Date: Wed, 28 Dec 2022 14:24:36 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Message-ID: <20221228192436.viuoyil2ntr4lxjo@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
 <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
 <20221228172517.l7h3m7wjfpxr3dzw@mutt-hbsd>
 <Y6yEv+6iYQQNaqi9@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cqcy4xsopj5osl73"
Content-Disposition: inline
In-Reply-To: <Y6yEv+6iYQQNaqi9@itl-email>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

--cqcy4xsopj5osl73
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2022 at 01:02:35PM -0500, Demi Marie Obenour wrote:
> On Wed, Dec 28, 2022 at 12:25:17PM -0500, Shawn Webb wrote:
> > On Wed, Dec 28, 2022 at 11:47:25AM -0500, Demi Marie Obenour wrote:
> > > On Wed, Dec 28, 2022 at 10:24:58AM -0500, Shawn Webb wrote:
> > > > On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/=
VE6BBM) wrote:
> > > > > Dominique Martinet writes:
> > > > >=20
> > > > > > But, really, I just don't see how this can practically be said =
to be parsable...
> > > > >=20
> > > > > In its current form it never will be.  The solution is to place
> > > > > this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> > > > > to get the command+args part (assuming I counted all those fields
> > > > > correctly ...)
> > > > >=20
> > > > > Of course, this breaks backwards compatability.
> > > >=20
> > > > It would also break forwards compatibility in the case new fields
> > > > needed to be added.
> > > >=20
> > > > The only solution would be a libxo-style feature wherein a
> > > > machine-parseable format is exposed by virtue of a file extension.
> > > >=20
> > > > Examples:
> > > >=20
> > > > 1. /proc/pid/stats.json
> > > > 2. /proc/pid/stats.xml
> > > > 3. /proc/pid/stats.yaml_shouldnt_be_a_thing
> > >=20
> > > A binary format would be even better.  No risk of ambiguity.
> >=20
> > I think the argument I'm trying to make is to be flexible in
> > implementation, allowing for future needs and wants--that is "future
> > proofing".
>=20
> Linux should not have an XML, JSON, or YAML serializer.  Linux already
> does way too much; let=E2=80=99s not add one more thing to the list.

Somewhat agreed. I think formats like JSON provide a good balance
between machine parseable and human readable.

As I described earlier, though, when it comes to concepts like procfs
and sysfs, I have a bias towards abandoning them in favor of sysctl.
If sysctl nodes were to be used, no new serialization formats would
need to be implemented--and developers would also use a safter method
of system and process inspection and manipulation.

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--cqcy4xsopj5osl73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOsl/MACgkQ/y5nonf4
4fruEA//dlGqPyMLJmcW57PIEZ2w6Y/ctFuHGK1vfHncR7lDgTCgjQICFSqnVLt3
PyESWAmZus4ZqneCmReoxzy6y/io4jyRWcEZEywcRk/n+asD5+5eEcL8yKdCXszF
FLL9VGA1U4jUnQuUQgArkpjo7pNNScp34FjKRKD0RJKbpKDNGPcTz2ASMpM4vt7n
9klfnjP7e7+XD9cuZaNQVK0nz2/BNObKGdikJR9cMv3SONkGTOlRZxOj+y2Rc86P
QpSmfMC+PJxULFSfIW4bucmnzC2qQenTELgoEUEhG4IZNT3VYv1mDRKU9xlVeSvQ
Pcm6JcFQxd759On8QW1aY4N9KGs6U7hH0elQkNxBctM3Nh9YowNxZGXuZGF9Kwu1
Vyw9tDADZiMh0GqXgO9tSwc95kcVdeUgIzwBhF31YhSNv95CpDwdtQhvmt2qTXea
Zec8Ys0hNcvd5xn8FLIk73m+yvNkTBEkyejo/cyQZFHW/gQmf5znozMht0qeYt/j
9Na9M094IX1zLLy3dMlNZe1j7pzBsRJgbWBwWcmixkao2pJ7vLuocQjDJmrpet2Q
wkkSKSRDw33S7fRZxKJClXeP1agiTxgpnC3Hi1mmmWVff900O6xTrMl6tds6c8CY
EP6VZqmBqlNBAP2yGTGPFXLVm91UV5DvHZ1VdAfSZukqq6rCIU0=
=jiq0
-----END PGP SIGNATURE-----

--cqcy4xsopj5osl73--
