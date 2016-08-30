X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2555" "Wednesday" "31" "August" "2016" "01:45:15" "+0200" "Damien Regad" "dregad@mantisbt.org" "<nq55qe$v1e$1@blaine.gmane.org>" "65" "[oss-security] Re: MantisBT weakened CSP when using bundled Gravatar plugin" nil nil nil "8" "2016083023:45:15" "[oss-security] Re: MantisBT weakened CSP when using bundled Gravatar plugin" (number mark "U       dregad@manti Aug 31   65/2555  " thread-indent "\"[oss-security] Re: MantisBT weakened CSP when using bundled Gravatar plugin\"\n") "<CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>" ("<ea35113c-d493-4bf7-ca47-9df7891dde67@mantisbt.org>" "<20160829215135.463377BC071@smtpvmsrv1.mitre.org>" "<CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21591 invoked by uid 550); 31 Aug 2016 03:26:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18000 invoked from network); 30 Aug 2016 23:45:42 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Wed, 31 Aug 2016 01:45:15 +0200
Message-ID: <nq55qe$v1e$1@blaine.gmane.org>
References: <ea35113c-d493-4bf7-ca47-9df7891dde67@mantisbt.org>
 <20160829215135.463377BC071@smtpvmsrv1.mitre.org>
 <CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NItTc81Idf7xVQWV2WAQgb9drGnTM85hT"
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
In-Reply-To: <CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>
Cc: Mantisbt-dev@lists.sourceforge.net
Subject: [oss-security] Re: MantisBT weakened CSP when using bundled Gravatar plugin

--NItTc81Idf7xVQWV2WAQgb9drGnTM85hT
Content-Type: multipart/mixed; boundary="FVaPpd5KEsjiC4EhdCHRkR52vI41WMCan";
 protected-headers="v1"
From: Damien Regad <dregad@mantisbt.org>
Newsgroups: g,m,a,n,e,.,c,o,m,p,.,s,e,c,u,r,i,t,y,.,o,s,s,.,g,e,n,e,r,a,l,,,g,m,a,n,e,.,c,o,m,p,.,b,u,g,-,t,r,a,c,k,i,n,g,.,m,a,n,t,i,s,.,d,e,v,e,l
Subject: Re: MantisBT weakened CSP when using bundled Gravatar plugin
References: <ea35113c-d493-4bf7-ca47-9df7891dde67@mantisbt.org>
 <20160829215135.463377BC071@smtpvmsrv1.mitre.org>
 <CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>
In-Reply-To: <CALPTtNXUdK88B7J1SwsFpjDQeu5UJAnUiTd98UmiUEWQOmey7g@mail.gmail.com>

--FVaPpd5KEsjiC4EhdCHRkR52vI41WMCan
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 2016-08-30 01:31, Reed Loden wrote:
> Any reason why you don't just always use the https:// version for Gravatar
> here? Why ever use http://? Even if the MantisBT install is on HTTP, best
> to always load any third-party resources over TLS to better protect again=
st
> MITM.
>=20
> Just surprised me to see this:
> https://github.com/mantisbt/mantisbt/blob/b3511d2feb47eaee41feb5f69cf3c8a=
2c9acd229/plugins/Gravatar/Gravatar.php#L165-L169

Hi Reed,

To be honest, I'm not quite sure, and never thought about it... I did
not author this code, which has been like this since before I even
joined the project [1]. The implementation of Gravatar as a plugin just
recycled the existing code.

IMO your suggestion to always use https makes sense, I'm cc'ing the
MantisBT dev list as this is probably better discussed there. You're
also welcome to open an issue in our tracker if you want.

Cheers
Damien

[1] https://mantisbt.org/bugs/view.php?id=3D8882
    https://github.com/mantisbt/mantisbt/commit/241f91d59


--FVaPpd5KEsjiC4EhdCHRkR52vI41WMCan--

--NItTc81Idf7xVQWV2WAQgb9drGnTM85hT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXxhqPAAoJEA/+d/t+CBBfGMsIAKJEZ367DMlESHc0pvrmAhBo
I5IphJQ8VlmBrTyimV3S+qeymQ9EDa9yiT+HZq8Sh6i3cHs7nyU5R8Yrdd9AiZNp
4PuLNLJ9mwvs1JguStdZNQdJ84CM7LfFDqMSodOIsAram6guFe+mSS2lUWb3tZ0n
hq7zo2wRrGy+d2Zk0nil1YU5cdXRJORZv/28oEXsoar9uq6AIXV+9BkPY3Sj1upu
usjsB6BIvKeewdnWVnEE/MONrSv0T98quvFDLWsRrxfC3t38MQJQGD5xhSllQPpL
6/kKzSEqVqVFKrDhfjQ9XPsqhCFfHBHWhKw7H6Q3Jc72FwXhkx/dTAcuqBe3XnE=
=0MFw
-----END PGP SIGNATURE-----

--NItTc81Idf7xVQWV2WAQgb9drGnTM85hT--

