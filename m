Received: (qmail 32760 invoked by uid 550); 14 Nov 2023 19:07:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24113 invoked from network); 14 Nov 2023 18:58:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1699988305; x=1700074705; bh=w9ev0WKUO9xRl0yorZpRb0lRTdrAIl+Y7s6
	jq9+d2CI=; b=qM/h2HBSqutobuNMsoFM6RgB/R8zYHHSNLmIDxCVDwzqh4PQ0C9
	6+LZNbgyzpDhi/Z2hA7eHWYoAsK0INiqiBojVF/intBmerFh7A9maYztDFJSD2JB
	tlRwCYpCf6F12SXsRh1FgGmifPBKKJVnUoFmjEgufWQbjbDxn5T4zmlo13YJo9SH
	SVaCRmwMeUFou83L2MPqxbdLCyd6oSVYfTWj2DEMHdqOgw5UQopDuXgMZqW8557C
	GArf5RQM4KHdk5Ir1vzz3c3GE5QQlcLynzO+awqtxsskw3K4Fk2w3Pp6/0q5yhez
	9XBSfWQJMksw3TLt2zhrBE7CKfgvI7irM7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1699988305; x=1700074705; bh=w9ev0WKUO9xRl
	0yorZpRb0lRTdrAIl+Y7s6jq9+d2CI=; b=uGK0xBrKs3AST30LEC8ZKWgWfaNif
	5a8ValZrUegtrMSssg8MpzlGBn0wmPPN6SBBg5U59Wu0kVDOPWRhAIGxsbz2m7WQ
	st20/6zOH9ezpJ4R4+1ndoY2FwmRBjJieHhC/HQvtoyAkP82PvjsWtESjCLznLQM
	tC9CNQXx3AuQYi3t2l5xVN1FjzM4yAYb9elZNtMv6EHN9eL59A7+V8SkGqvlucPW
	//hnPbGqyhFrbbgDwKS8/g1tPo3Kfw/gzuTl/rGt9KGhIcLUxI0Et3hPF7Cr0vgQ
	EQ5cfwVDDe3nfZj5LHcUX2qnYvpPlZAbAQ3T3PXJLxlqDrVrpcb0iAR6g==
X-ME-Sender: <xms:UcNTZUqA9pBjBzxLU4mTW-dVGFARkd3G8fRROdgf3XiLxdPhulfRtQ>
    <xme:UcNTZao3Zehp2iHPualXefpT5A1APUHUjZ3PmNfCW0FJa110wU-EXdviEH7MD4NKK
    mbDRieYeJiZbp0>
X-ME-Received: <xmr:UcNTZZPHM5dPjW-lfyVZ0eJ3p27YPC6G5a11cu6jn9k4Vj0DWAL4JpnzeOJawXA1EtxPaiF_kEJH2Yjf1tWN-Axoz9Oos6fKSpMS2B1INEwVYdrx>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeffedgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtro
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epfeeiudeiteegfffgkeeijeefhedttdffjeeluedufeduudejueegffefveeugefgnecu
    ffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:UcNTZb53waCKSXy929naV2rr6IEnTDI5WNR5q9pba7eE023tklqFQQ>
    <xmx:UcNTZT50YKezDDbGZKeaifGKTR6FffYiTQjimwFTUyCh7RFor5N8eg>
    <xmx:UcNTZbjOj1po8aZ81SC4mrhaR9ld2AmA8_5WRt84EQoRTtTcQIrUAQ>
    <xmx:UcNTZVHqdtaQTvrXVB2VKxh_1TSsVdM3V5xyibG5MKHK892TStKmgw>
Feedback-ID: iac594737:Fastmail
Date: Tue, 14 Nov 2023 13:58:21 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZVPDUJndrHVBadOt@itl-email>
References: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wYxRJQI36YtgnBQF"
Content-Disposition: inline
In-Reply-To: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service -
 Privilege Escalation (Reptar)

--wYxRJQI36YtgnBQF
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 13:58:21 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service -
 Privilege Escalation (Reptar)

On Tue, Nov 14, 2023 at 10:31:51AM -0800, Antonio Gomez Iglesias wrote:
> Name of the issue: Redundant Prefix Issue
>=20
>=20
> Description of the issue
> Under certain microarchitectural conditions, Intel has identified cases
> where execution of an instruction (REP MOVSB) encoded with a redundant
> REX prefix may result in unpredictable system behavior resulting in a
> system crash/hang, or, in some limited scenarios, may allow escalation
> of privilege from CPL3 to CPL0.
> This Redundant Prefix Issue is assigned CVE-2023-23583 with a CVSS Base
> Score of 8.8 High CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H.
>=20
>=20
> Mitigation
> Intel is providing a microcode update to mitigate this issue: https://git=
hub.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/tag/micro=
code-20231114

Does this also allow privilege escalation from a VM guest to the host?
What are the limited scenarios?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--wYxRJQI36YtgnBQF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmVTw1AACgkQsoi1X/+c
IsEsfhAAqUVYeXmoSa/bxCdWzk1ELzFuiw9ocOJ/44ZSH8vsoZFYGU/JwHSz1OQv
BF8G8NnOY4Aq5a7X3+IInDi/fPaKMCxZRdf0239/lRxvaV83WQ2zAPqhzKWDG+UG
cpqoOcBVrF6Zg6xfMMwFt1wHLls42XD+mLEP6cm+wiIrXKuqifjsh/8iUHZPMQd6
SPlEew7sdlk1M0gneqwhih1KQqMdJN6QsoL3rM6gBNL1D7eob2gHlET1wdIv3JFk
juBQ6Ag5rqvvFVA5f2qRR2lPp/frZvW0IxNQ2Vl1dRi7Kksgk6Th4GVyGUnlbnxU
k2knSdBsGoZCmoyGBKk6+YReyeQJ7MIRKMtulUCWZI6ZZ7gauhoMjRzgtAjk8uCY
vGYl0S1yag+fxH+o+NgQHCkG3dDEtNkGfVTMILDBrYFPQOb7knsidw8qqiSogPZe
XPQ1q8Ui9lWBb8ptuXUMAfCGJDjUxOnRaDfKeUMnPauxHY5tJkrvaB5S6zcXJaDT
74IADHkKW6Xg6xM1eIXw0hnaFB96NcuXKB2wVm4W8FTOi9TVB4ZRWVGJPtJhxM2T
ZU2Pt/UAq4/CDcnRp2Xc70yzDfnJ5gdaUNB2SMVVoImHjZi3jeJ3RspatBhYfzeh
GdZE5xMAf4HWyPXnuThjFc0238LKhOkd4YCdMIAc9Rl0pLuh9Y4=
=0i9q
-----END PGP SIGNATURE-----

--wYxRJQI36YtgnBQF--
