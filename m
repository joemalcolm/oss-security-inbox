X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5058" "Friday" "1" "May" "2015" "23:39:35" "+0000" "mancha" "mancha1@zoho.com" "<20150501233935.GB18039@zoho.com>" "115" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050123:39:35" "[oss-security] On sanctioned MITMs" (number mark "        mancha1@zoho May  1  115/5058  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<5543DDB5.7030900@redhat.com>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15742 invoked by uid 550); 1 May 2015 23:39:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15721 invoked from network); 1 May 2015 23:39:58 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=VMT/Mzpvi+FMq0NOpBE+uKkBOW89Kb0zqimQ5FhAuTJqA5ZxFi9YHpsphrFUUG2ugjiaRqFwakEZ
    IfeLKey/wQ/GwZPHfyjdajF1kdRV3OtRIUyIWqni2AjZnfwb35Ks  
Message-ID: <20150501233935.GB18039@zoho.com>
References: <20150501191522.GA18039@zoho.com>
 <5543DDB5.7030900@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5gxpn/Q6ypwruk0T"
Content-Disposition: inline
In-Reply-To: <5543DDB5.7030900@redhat.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 1 May 2015 23:39:35 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--5gxpn/Q6ypwruk0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 01, 2015 at 02:10:29PM -0600, Kurt Seifried wrote:
> On 05/01/2015 01:15 PM, mancha wrote:
> > Though Hushmail email credentials, for example, can't be sniffed in
> > the segment connecting the client to CloudFlare, they are available
> > to CloudFlare's infrastucture. Moreoever, there is no way for the
> > client to verify that the segment connecting CloudFlare to the
> > destination server is similarly encrypted (i.e. it might be in the
> > clear as would be the case when using CloudFlare's "Flexible SSL"
> > product).=20=20
> >=20
> > Hushmail's CloudFlare usage serves as an example that brings me to
> > my general point.
> >=20
> > How should the security community view this growing use of
> > sanctioned MITM in light of the ever-increasing amount of sensitive
> > content sent over SSL/TLS encrypted channels (e.g. email, electronic
> > banking, medical records, etc.)?
>=20
> This is me speaking personally:
>=20
> This is nothing new. Front end load balancers that handle SSL/TLS and
> then do HTTP on the backend have been around for decades. This is
> simply outsourcing it to a trusted (hopefully, because I use them!)
> party rather than doing it in house.

Using SSL/TLS in-house front ends is an entirely different animal than
breaking up end-to-end TLS encryption into multi-segmented pathways via
3rd party interposition.

> We have had outsourcing of far more sensitive things for literally
> centuries, e.g. legal and accounting firms, my lawyer and accountant
> both have literally all my personal info and could easily destroy me
> financially if they wanted to. But they don't because we have
> contracts, and more importantly contract enforcement in the form of a
> civil legal system (as does most of the world). The same applies for
> CloudFlare, Google (my email), and so on.

I think your analogies are confusing the incentives and priorities of
different actors (service consumer, service provider, 3rd party
contractor).

My own lawyer analogy crystalizes things a bit more clearly:

Say you called your lawyer's cell phone but unbeknownst to you she's
been getting flooded by telemarkers. To help with this she's contracted
a call service that screens her incomings and transparently relays valid
calls. Maybe this service is trustworthy or maybe it just irreparably
deep-sixed your attorney-client privilege. The clincher is without doing
IMEI/TMSI analysis, you're unable to detect the interposition is even
there. Moreover, while your connection to the call center is A5/1
protected, the call center might be relaying to your lawyer in the
clear. You have no way of knowing from your end. s/lawyer/doctor/g etc.=20

> So in my opinion this is really nothing new, like any outsourced
> activity pick your partners carefully.
>=20
> This is me speaking on behalf of the Cloud Security Alliance:
>=20
> Make your partners/vendors/etc. fill out at least the self attestation
> level of STARS, which is free:
>=20
> https://cloudsecurityalliance.org/star/self-assessment/
>=20
> If they refuse to do so that might be a good hint as to how secure
> they really are.

Those are good suggestions for service providers seeking to outsource
part of their processes but not so relevant to grandma e-banking or
checking her medical results from her chalet in the Swiss Alps. As
grannie is finding out, more and more sensitive transactions are being
conducted over HTTPS these days. So, she's happy when she sees a lock in
the url bar and gets no alerts from Firefox.=20

In recognition of this reality, browsers are assuming ever-increasing
roles in safeguarding the security of their users. Traditional measures
such as certificate validity checks and blocking weak primitives like
small DH moduli and MD5 are constantly being augmented with innovations
such as static pin lists, HKPK, etc. SSL/TLS libraries are similarly
evolving.

It is in within this evolving context that the increasing usage of
sanctioned TLS MITMs should be examined.=20=20

> -- Kurt Seifried

--mancha

--5gxpn/Q6ypwruk0T
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVRA63AAoJEB4VYy8JqhaDLKAQAJoAtXXa/qIVG552Li3xwZP5
x3vZcSh2XbsGwdVmJ171eGYFDx0l5F4yPwW7tICIvouNOipA7j+29ngy2T7VXcaA
CLu2MreyOtSYlJOSVk8pVcTw8HmDIXQJoB1L+imHnkcdYWnNwww/Yi9OkaYbWkJB
S4ZsIaYg4XDndDbubpd7R/UpcacY5XhHzu3AbLLyNyuxmfuhtQe4dsL8EmlX+2xw
4BxmGMYCsP8P731AGolZ1zCNuXCyUxJXdfJu1phj0/7aVjiG4wjCFMD8gNa78Cgn
f0eCxj2p+P+8LZKA3Qsrj9aDfuintzBX5sgtupgXmwQbFEuSccDQPUhY4tPkr9Aa
5ww1iQLyEtri2uLa50o6Tatu+lmqa1kUMMA5DfW91w0YgBTVNFBvY3FtUHh1he9t
lT1nx9UCNTFcWapZO8oNOdHBNslPUxN4p7USAbSlq0M0nMMm9NYjM6zDdtkjyz6C
B7dV98vzqVlf0ZV2PAgfSZHT5Ws1S+KPKfCqIbzrp7nq6mWuQTcL2g3StI9uZKwv
MVPWU+uureo+2k1+0+KPDGqum6QVHI45bLcWNfG65daDdS4tHXcE8sHYaN7xZII9
xP4JUW+DjHDO+xnjCM9uHiD6Gk5eljOuJePj2VKXxUtUTEsBTi0C6O9Zk9zQZajw
HUw06UPFhdYMGbouONH/
=w+gU
-----END PGP SIGNATURE-----

--5gxpn/Q6ypwruk0T--

