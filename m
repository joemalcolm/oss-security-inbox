X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4318" "Tuesday" "24" "March" "2015" "20:58:57" "+1100" "Garth Mollett" "gmollett@redhat.com" "<55113561.3060305@redhat.com>" "104" "[oss-security] Re: CVE request for OpenStack Compute (nova)" nil nil nil "3" "2015032409:58:57" "[oss-security] Re: CVE request for OpenStack Compute (nova)" (number mark "        gmollett@red Mar 24  104/4318  " thread-indent "\"[oss-security] Re: CVE request for OpenStack Compute (nova)\"\n") "<20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>" ("<20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17519 invoked by uid 550); 24 Mar 2015 09:59:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17498 invoked from network); 24 Mar 2015 09:59:16 -0000
Message-ID: <55113561.3060305@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>
In-Reply-To: <20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="tXu8uLI2Vc94ojBu1cfbbhJnbcNhS4qSD"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
CC: oss-security@lists.openwall.com
Date: Tue, 24 Mar 2015 20:58:57 +1100
From: Garth Mollett <gmollett@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for OpenStack Compute (nova)
To: cve-assign@mitre.org

--tXu8uLI2Vc94ojBu1cfbbhJnbcNhS4qSD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I am not a member of OpenStack VMT, so this is just my opinion, but I
think the CVE should probably apply to all versions.

It's worth noting that the C1 rating mentioned in the launchpad bug is
referring to this:
https://wiki.openstack.org/wiki/Vulnerability_Management#Incident_report_ta=
xonomy

Which is "Not considered a practical vulnerability (but some people
might assign a CVE for it)".

So it's not necessarily saying there is no vulnerability/CVE needed for
other versions. Just that it's not considered serious enough for an
OSSA, by my reading.



On 03/24/2015 06:36 PM, cve-assign@mitre.org wrote:
>> https://bugs.launchpad.net/nova/+bug/1419577
>=20
> Use CVE-2015-2687 for this issue with an unintended loss of access
> control after a failed live migration.
>=20
> For purposes of CVE, we typically don't think of vulnerabilities in
> the way expressed in
> https://bugs.launchpad.net/nova/+bug/1419577/comments/4 "without a way
> to make the migration process fail, this is a bug with security
> consequence, but not a vulnerability." In other words, for a CVE, the
> attacker can be a person who wishes to have an unauthorized volume
> attachment after the bug is triggered. The attacker does not need to
> be a person who has determined a reproducible way to trigger the bug.
>=20
>> if live-migration is executed while process keep using big size of
>> memory by benchmark tool or something like that in VM instance and
>> then the waiting status of live-migration could be persisted,
>> eventually live-migration will be failed.
>=20
> We think that nobody commented on whether this is a feasible way to
> actively trigger the bug.
>=20
>> you're suggesting potential exploits involving
>=20
>> 1. disconnecting physical network interfaces
>=20
> We think the intended security property of this OpenStack product is:
> "if network connectivity is disrupted by anyone (authorized or not)
> during a live migration, then access control for volumes still must
> match users' expectations afterward."
>=20
> It is conceivable that the intended security property of this
> OpenStack product is instead "if network connectivity is disrupted
> during a live migration, then access control for volumes afterward is
> undefined." In this case, maybe you mean that the CVE should apply
> only to Havana, because the only relevant root cause is a Havana bug.
> The reasoning in that scenario would be:
>=20
>    1 - a Havana bug (e.g., 1362916 or possibly the combination of
>        1362916 and a second bug) makes it possible to force a failure
>        of a live migration
>=20
>    2 - this was not previously considered a vulnerability
>=20
>    3 - however, the relevant OpenStack product has a required security
>        property of "There must not be any software bugs that allow
>        live-migration failure attacks, because these attacks are
>        equivalent to attacks against volume access control."
>=20
>    4 - therefore, the bug in item 1 is promoted to a vulnerability,
>        and is the bug directly associated with CVE-2015-2687
>=20
>    5 - consequently, CVE-2015-2687 would not be used in an advisory
>        because Havana is unsupported by the OpenStack VMT
>=20
> So, does the OpenStack VMT have a position on whether to choose this
> latter scenario? In other words, if live migration fails because of a
> disconnected physical network interface, is access control for volumes
> intentionally undefined afterward?
>=20
>=20



--tXu8uLI2Vc94ojBu1cfbbhJnbcNhS4qSD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVETVhAAoJEPjpLwZKQ8GpbYoIAMgH8iT66yj7SVkSdAFyhPhw
P0iYm2biNtKPpOnYOWFlcY+l8bLT32GQyR69SRBIyF1yJqrWnpRf1rqbeZNcJhEy
lWgb6Rdm8jxMh5LivfoOSsBTX2oR38pNRkmiOPrMTTPq83hz+eiEt8095siAOLbL
fQAPC5HoKFrMF7/OE/U5VN40oRKRWE1WW4Ax82vqjYYSjygYrfJ+kOe2QgAccIF+
tc+gPQ2w2HK0PyrR0CwkzO12PpQzQLhawDQwc5trJVXhYWbjYp+mphvYnrup2Fxv
XdrS4xF4Des0kF2+/hUVSHdb3TeAnDkcb44tBsyOf5PUbM1EZmEM7lf1LV++0+A=
=wCFP
-----END PGP SIGNATURE-----

--tXu8uLI2Vc94ojBu1cfbbhJnbcNhS4qSD--
