X-VM-v5-Data: ([nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4544" "Saturday" "2" "May" "2015" "22:25:46" "+0000" "mancha" "mancha1@zoho.com" "<20150502222546.GA23148@zoho.com>" "102" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050222:25:46" "[oss-security] On sanctioned MITMs" (number mark " r      mancha1@zoho May  2  102/4544  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>" "<20150501233935.GB18039@zoho.com>" "<E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0003
X-Mozilla-Status2: 00000000
Received: (qmail 16304 invoked by uid 550); 2 May 2015 22:26:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16286 invoked from network); 2 May 2015 22:26:10 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=Wk9n3gaRLlAj222mENax54uLZUNWWSUIx+Ci4ZlaFFP08Zr8peO+lAd3z5Y7zoJa48WefiTlxCLX
    ryrZb9kWbqCErFslyfzXl+wTnKwyeovGx8F4hFijDf4+YiEAdW4h  
Message-ID: <20150502222546.GA23148@zoho.com>
References: <20150501191522.GA18039@zoho.com>
 <5543DDB5.7030900@redhat.com>
 <20150501233935.GB18039@zoho.com>
 <E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: lyndon@orthanc.ca
Date: Sat, 2 May 2015 22:25:46 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 01, 2015 at 07:40:51PM -0700, Lyndon Nerenberg wrote:
> >> On 05/01/2015 01:15 PM, mancha wrote:
> >>> Though Hushmail email credentials, for example, can't be sniffed
> >>> in the segment connecting the client to CloudFlare, they are
> >>> available to CloudFlare's infrastucture. Moreoever, there is no
> >>> way for the client to verify that the segment connecting
> >>> CloudFlare to the destination server is similarly encrypted (i.e.
> >>> it might be in the clear as would be the case when using
> >>> CloudFlare's "Flexible SSL" product).=20=20
> >>>=20
> >>> Hushmail's CloudFlare usage serves as an example that brings me to
> >>> my general point.
> >>>=20
> >>> How should the security community view this growing use of
> >>> sanctioned MITM in light of the ever-increasing amount of
> >>> sensitive content sent over SSL/TLS encrypted channels (e.g.
> >>> email, electronic banking, medical records, etc.)?

> But also ask why they might use it.  E.g., in the presence of a DDOS
> attack, many companies rely on infrastructure such as what Cloudflare
> provides in order to keep their services running.  By their nature,
> those mitigation services have to bust the SSL pipe to do what they
> do.

I kicked off my post mentioning DDoS mitigation was one of the reasons
services contract with CDNs such as CloudFlare.

> What I am not hearing anywhere in this conversation is a proposal for
> how Cloudflare can provide the service they do, but in a manner that
> doesn't require busting the SSL pipe in the middle.  There are MANY
> people begging for an answer to that.  Do you have it?  If not, are
> you prepared to see the services you "need" go offline when someone
> decides to DDOS the provider?
>=20
> That's not a rhetorical question.  For some people, the answer is
> 'yes'.  But for most, it is 'no'.

I agree achieving end-to-end (E2E) security with interposition is an
interesting security research area. In fact, it would be great if as a
result of this thread more members of the infosec and oss communities
were motivated to tackle that.=20

> In the specific Hushmail example, would it alleviate peoples concerns
> if the Cloudflare MITM-busting behaviour took place entirely inside
> Canada?  If not, how do you propose an alternative?

Dean Pierce points out that outsourcing across national borders can have
legal implications but this is outside of my area of expertise.

> And what, exactly, is the attack vector you are trying to close down?
> Is it the only one?  How do they interact?
>=20
> --lyndon

I've already alluded to the general security issues that arise in MITM
setups. More specifically, breaking E2E security with interposition adds
well-known complications/issues: rogue employees at the interposing
service, increased attack surfaces, more points of failure, inability to
verify path integrity, inability to verify content integrity,
misconstruing of communications as E2E-secure by non-experts, among many
others.=20

As you said, lots of people are interested in ways of achieving E2E
security with intermediation - precisely because there is recognition
current TLS interposition models are not satisfactory.=20

My specific interest is how OSS projects (e.g. browsers, TLS stacks,
etc.) can address security issues that arise from SSL/TLS interposition.
Also of interest is leveraging the intersection of infosec/oss/crypto to
develop related innovations (e.g. interposition that coexists with
uncompromised E2E security).=20

--mancha

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVRU7qAAoJEB4VYy8JqhaDePsP/iYAlJv4MJL603/Pp86KXqid
J1Nn1TKpGv3GQJHuPpadlN+ykpIiqS1ZxKzYLpsKE2s4gAxhVmzhdBJKy5WphWLl
EMKr/cWyHz1CYXFgsc1x1PeiA7REDqMvLZVoJVIkVSL1irafMGJiqcQ1REKgc/ee
Cni9om03Dgw8LDdlHj+oAwI9kVlwcZBD22iT437M+Eu057izFkKLghIJUKTzgYYZ
FPX/mKjhgO3wfNX3Ptd7rStkc/zAgbmbS8eYaS9dqIDYv7sIME8RP6PoeGjmcyVq
KKy4xYgz5+oNbRbXxtBJyjB4Rq8NmMRnJkSdWgL3YOkS5g2AFRmN1LA5H8HM/i8M
d9yOT72nvXYj9Olz/Z+IoJWYpH3Q8yQdB2TfP01/QUBvGT72jOhfXRCUn/+mDb8N
YmLMX8EuHxm8s4lofJFbSUun8wzklZEFejUIt2K0q/kadlyzEl8ySvmpltBoVYGs
U7PG/U7xS3xhLRf22Afe/N2Uq93l1IcIIMSdUP8apZ9+kZ9Ounc6tI0AXpE1Tmbq
JsgN2KSSNv8ZmGFc88koQ9nScZbB/Yn9wTgw4EbakedgEAm4rvOYvVI1CpmS7jGl
Eoo07XzTbjDcWA6sMRIG27bOvEmc/a1I6yZblI0MyzjWwCV8E6drADFSOQhEnPPu
uTWqW+sGKKBDPG2foarQ
=chDv
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--

