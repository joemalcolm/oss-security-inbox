X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3942" "Tuesday" "30" "June" "2015" "14:36:22" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5592FDC6.3050507@redhat.com>" "92" "[oss-security] Re: Question about world readable config files and commented warnings" nil nil nil "6" "2015063020:36:22" "[oss-security] Re: Question about world readable config files and commented warnings" (number mark "        kseifried@re Jun 30   92/3942  " thread-indent "\"[oss-security] Re: Question about world readable config files and commented warnings\"\n") "<20150630190336.8434972E3F4@smtpvbsrv1.mitre.org>" ("<20150630190336.8434972E3F4@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16372 invoked by uid 550); 30 Jun 2015 20:36:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16351 invoked from network); 30 Jun 2015 20:36:37 -0000
Message-ID: <5592FDC6.3050507@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <20150630190336.8434972E3F4@smtpvbsrv1.mitre.org>
In-Reply-To: <20150630190336.8434972E3F4@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="PXKbLS8CLHOpvalEv1Bfs6CbW62TkVM6d"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
CC: oss-security@lists.openwall.com, seth.arnold@canonical.com
Date: Tue, 30 Jun 2015 14:36:22 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Question about world readable config files and commented warnings
To: cve-assign@mitre.org

--PXKbLS8CLHOpvalEv1Bfs6CbW62TkVM6d
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

So in past these got CVE's, e.g.

http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=3Dconfig+file+permissions
http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=3Dweak+permissions+password

and so on.

So has policy changed for the specific case of:

Configuration file takes a password and has world readable permissions
by default (and let's assume no explicit warning in the comments in the
config file).

Thanks

On 06/30/2015 01:03 PM, cve-assign@mitre.org wrote:
>> so does a situation where the author creates the config file with
>> that warning, and then a vendor repackages and ships it, still world
>> readable, still with the warning, warrant a CVE?
>=20
> No, in general, repackaging doesn't mean that there can be new CVEs as
> a result of a reevaluation of whether any part of a product's
> configuration/behavior would have been chosen differently if it had
> been the repackager's own original code.
>=20
> There can, however, be new CVEs for new interaction errors. For
> example, if a Linux distribution shipped that product with upstream's
> standard default config-file permissions, but simultaneously shipped a
> setup tool that required a password in the database URI (without
> addressing file permissions during setup, and without showing the file
> contents to the user), then there would need to be a CVE for
> something, because there is no way to use that combination safely.
> Most likely the CVE would name the setup tool as the primary affected
> product/component.
>=20
> This would apply in essentially the same way if it weren't a
> standalone setup tool, but were instead a module for a larger
> configuration-management product. If a module is intended to modify
> configuration files, it seems that the module author has (at least
> some) responsibility for avoiding introduction of vulnerabilities into
> the configuration. This configuration-management module topic may have
> some open questions. However, as far as we know, people haven't been
> submitting many CVE requests about vulnerabilities that were caused
> when a module didn't incorporate complete knowledge of
> configuration-file semantics.
>=20
>> Date: Tue, 30 Jun 2015 11:04:04 -0700
>> From: Seth Arnold <seth.arnold@canonical.com>
>=20
>> Did the vendor also fill in a password? If so, that's worth a CVE to me.
>=20
> We agree that this is a straightforward case that would have a CVE.
> This is, more or less, an extreme example of the setup-tool case
> described above: either way, the vendor has forced the product into an
> always-unsafe state.
>=20
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--PXKbLS8CLHOpvalEv1Bfs6CbW62TkVM6d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVkv3GAAoJEBYNRVNeJnmTwssQAIGbm+j29zV/BoddQYybuiFD
UXCYCt60oi/2oabO3CTdqTVTbU8R/xxO1d7N36Sz3Y15FgCXhD9YRjZWz9GWSHmo
+6fwUfm+3F85l8Dsibc3UYEv8OshDILKkh9YQ/2K7QR6dcKGZj+2SkOlaB0c9yKi
jDOMRfprJ62aLTRk4ckUNYyvNYzWraNp99xf6jeJAQgqLPa+So/EaLpTKUe+mvQD
nrb6Q/ajf0wfGZgn0+b55unmCiVHwtcScV8cN7XETO4qjKW7L9AG9A1TtDXuAfQ3
Dn5nezQneN0onoZWkVTvV5sFaMzWwwHWqYC5GAz+9mfKbBXlhcF6xqyVkoy4nK3B
kKwAqn5QUe4TW+5Yfo1lMUi+ZODaAK9GZknIoXIBAMYUp5c3fgzgwLYSjelApD5p
Tm40ayXVl1b9P2lgThDlnnCiZSVeKCOiJNLO3fSwiYoMysUfv/OTz4NWxfit8E62
Quc0m6u9d3jtUxfXEO56lj8NA1TVbUEH4+YjTqDR3k+eop6OODZS8ZO6mxdsNFdH
39Q1sVZOOr2PusH97NrwzFa1LwIxUvwUP7u9It/8b5dtE+qo3ONrik31dpMI3CHr
6qg4ZioTcYoksNZOvBOfLLumUncKCRgmxDkzTPgd40A7KPfJHIjuATUTbHiDT1gQ
XBP3sClwYRWyybvi1olM
=wdIH
-----END PGP SIGNATURE-----

--PXKbLS8CLHOpvalEv1Bfs6CbW62TkVM6d--
