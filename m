X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2335" "Tuesday" "30" "June" "2015" "10:32:56" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5592C4B8.4080803@redhat.com>" "53" "[oss-security] Re: Question about world readable config files and commented warnings" nil nil nil "6" "2015063016:32:56" "[oss-security] Re: Question about world readable config files and commented warnings" (number mark "        kseifried@re Jun 30   53/2335  " thread-indent "\"[oss-security] Re: Question about world readable config files and commented warnings\"\n") "<20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>" ("<20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23976 invoked by uid 550); 30 Jun 2015 16:33:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23957 invoked from network); 30 Jun 2015 16:33:11 -0000
Message-ID: <5592C4B8.4080803@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>
In-Reply-To: <20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="roBnwOCQ6G8KIUgbJBFcPd9DxqB77biM6"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
CC: oss-security@lists.openwall.com
Date: Tue, 30 Jun 2015 10:32:56 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Question about world readable config files and commented warnings
To: cve-assign@mitre.org

--roBnwOCQ6G8KIUgbJBFcPd9DxqB77biM6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 06/30/2015 09:55 AM, cve-assign@mitre.org wrote:
>> # Database URI for the database that stores the package information. If =
it
>> # contains a password, make sure to adjust the permissions of the config
>=20
> In the "If it contains a password, make sure" scenario that you
> mentioned, it seems entirely reasonable for the default permissions to
> reflect the author's preference for the normal case. (A password in a
> URI might be rare.) In other words, the author may want to optimize
> for situations where configuration data is read by users or
> administrators who login with an unprivileged account for most
> day-to-day work. Alternatively, in some cases a configuration approach
> could be redesigned to use separate files for sensitive data elements.

Ok, so does a situation where the author creates the config file with
that warning, and then a vendor repackages and ships it, still world
readable, still with the warning, warrant a CVE?


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--roBnwOCQ6G8KIUgbJBFcPd9DxqB77biM6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVksS4AAoJEBYNRVNeJnmTincP/RJeYaH88LR+QlLqyB3Hc0P6
bpdhkSBbzMKsBX6XbaASJlgQ2+C2s8cGGwN3dYwGW4T9ZYj408vcjjbGi0gyasHK
G/rlx7DXIxo9A0IQX7TlDNOEEWW0aNNup6z/f9Il8LlEMiryncp/ZryaB+6sQ4Ae
g1jfoJHZnUHtbYOTSkNwynGumpMgKd+eBJzulklCH92W2Lna4cYeFPbdCSxYGZdD
Y5s1rTtvtG7VrafZBtamtNG0DxBzc54sfqe2FXHIp9vUXMmKooHtMXcJVsWfmNiI
dKC8rGW3nBSP3chgC3lBawSQGZZ3O/yqiVhj6IN9oe5c7gTx11lfyzBo1eCUi416
HZHG4GDD6CC3bjIpiZbJWs1bGCYwrWqDxq8dAJvRWQdPrhUS6FVnYo06Cowl9Jp6
1dPvnU/M9jBQga2JN618I+zm/AYOoE7HZ6Zu/ezt1sU5h6X37OIJ3iIfT0qZUFWu
Oq9M6FsTIZFRByb9XMfmuhENT75gIP4z44Ok/uup9W6/l+2RTFcZimIP4UYHz5v6
JqO6lHOS7Es0mtG70A8Pt2DQ03Iol+lIv4quRuJMwSKUeb2NLZZNo6iWhf89IBSk
E9FZDV1Hr09tZf51CColJ3wSU6n7uwiqtdtv+KMRRK/x3WcvH2obEolHBOJ9e0nn
g6VunEsrhitcetDHIX0O
=02Mh
-----END PGP SIGNATURE-----

--roBnwOCQ6G8KIUgbJBFcPd9DxqB77biM6--
