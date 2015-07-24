X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3141" "Thursday" "23" "July" "2015" "22:58:10" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55B1C5E2.8050203@redhat.com>" "73" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072404:58:10" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        kseifried@re Jul 23   73/3141  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30293 invoked by uid 550); 24 Jul 2015 04:58:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30270 invoked from network); 24 Jul 2015 04:58:23 -0000
Message-ID: <55B1C5E2.8050203@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <20150723170954.GA17931@localhost.localdomain>	<87h9oud89s.fsf@lysator.liu.se> <CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
In-Reply-To: <CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="E4taHFL890BqWscrOS6uwRAJRGdnJ98Fc"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
CC: philip.pettersson@gmail.com
Date: Thu, 23 Jul 2015 22:58:10 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper
 - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

--E4taHFL890BqWscrOS6uwRAJRGdnJ98Fc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/23/2015 05:50 PM, Philip Pettersson wrote:
> On Fri, Jul 24, 2015 at 3:43 AM, Leif Nixon <nixon@lysator.liu.se> wrote:
>> Qualys Security Advisory <qsa@qualys.com> writes:
>>
>>> Hello, it is July 23, 2015, 17:00 UTC, the Coordinated Release Date for
>>> CVE-2015-3245 and CVE-2015-3246.  Please find our advisory below, and
>>> our exploit attached.
>>
>> *Why* are you releasing a full exploit just minutes after the patch is
>> released?
>>
>> (Disclosure: I am employed by Red Hat, but this is my purely personal qu=
estion.)
>=20
> That's how coordinated release dates work. Instead of trying to shame
> Qualys for not following your arbitrary views on what is and isn't
> "Responsible Disclosure", perhaps you should make sure Red Hat
> releases patches hours before the CRD, like Ubuntu does?

So... we released within less than an hour of the CRD, the reason we
were late, ironically, is that we were waiting for Qualys to go public
(we were keeping an eye on oss-security, their blog and twitter feed),
and Qualys was waiting for us to go public before they released (we
finally asked after about 20 minutes and then it happened).

Here's something I love about Red Hat: internally we have a wide range
of views, literally the full spectrum, and we quite often debate things
internally, and even externally, both from professional and personal
perspectives (e.g. my views on embargoes actually encompass several
incompatible ideas/views, the trick is trying to find a least bad
solution that optimizes globally without completely harming various
groups/needs).

Our CEO even wrote a book about organizations full of such people =3D):

http://www.forbes.com/sites/adrianbridgwater/2015/06/22/red-hat-ceo-how-ope=
n-organizations-are-unmanageably-awesome/


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--E4taHFL890BqWscrOS6uwRAJRGdnJ98Fc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVscXiAAoJEBYNRVNeJnmTbr0P/1Yz1I0dkUZhT9IVcObAx0IX
HVDZz1/HhIWZyughKTemjlg3jzmQPrBgzAkCfOy3Qpej1siIyAGQ6OFgyczhqy4b
Z2jZGRRZSUOty6wVsPG8gZ4u2w0GHHNVmcK/gy+rmxoQ8mbHxvXmHvQvqjfKsAA7
6Yy/sHSenCrQKC4RB+GNQXGmAuqPB0H9wLAfnMQr1Jfwgh7kyJcwX4WFPNdni7wB
+L/Y3uUaWjemIru+9kk97oYUi/38PgVf6lj3oxMNtxVGHsdvjkpK0FbM4G2n7ZgT
wEEsfOnpZSzfkI6stOUmGpcq67pmAyC1Zeft6v8Oxhc5CGBAB+PnXHFU8Ekq14DN
MoJqlk4eW/bgVZQcTYCwoSTIAmnLvRkFGeTgMwFOADnXKr6sG0ZGgewaJWnZWcIy
N4/AvbIAG17GvYLi3LWEDJfG3QU11B66BhLUFXV4wbonGAxcEb0/ILE41lEiIfN5
O2mzr5y16+gOkdR3L/u7ADVVQ3M68q7ByqdXF8ZBhcL0tSQlBH8HhzZmdelQdNHQ
t4PQLxp7cWb1jEjnNasch4sZK090e73IFlK7P9qHxw/cqplkPrn8poevgLkVxoqM
ipLjlVIfWDfzqiTothqBwDnE+qF3qNQlxItQXHdjyL5etrxEqfIg3uyE11S2RBxL
X1IGEh6VWRigseqdp9Zy
=StLA
-----END PGP SIGNATURE-----

--E4taHFL890BqWscrOS6uwRAJRGdnJ98Fc--
