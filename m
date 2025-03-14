Received: (qmail 10036 invoked by uid 550); 14 Mar 2025 03:01:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9236 invoked from network); 14 Mar 2025 02:55:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	 h=cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1741920894; x=1741924494; bh=D4zKsTUrnA
	/XaIa+oiPkSJHk+lgLvVsqO7lJSSCFiU0=; b=Y61yakQAOuLt1URwF1mAaiyDam
	ZffHJxW/97/IqNnqOeHc/fEy3jAN8LwJLGuuEi/fg/T5Otm1rfHwpXUUwLOdBlMx
	ta3ityydrcas10wH1PBbMQCzJOaXIcDtNL5gUXWxA2cmL2Zj6a9qZK25On6XCRqT
	jZJIEUkPQRIWWJ6IR2jUxjBwAbgwmOj08qyXWfyuyli5CUl1iGS55XBH5MdxbNKj
	rqGvhjmKS/seENKXEP6Rven7hQDQox1koYLj0/GlQV4JnU6U6BYqf5OsjmuDJi1v
	xyGQdpa3crwgBXp4tlbqdFRpc6kwEmQsN3eLEw4W6V6NLqWcQE+P/tcktYjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1741920894; x=1741924494; bh=D4zKsTUrnA/XaIa+oiPkSJHk+lgLvVsqO7l
	JSSCFiU0=; b=OZZMrrDcE/sCPH9z4LVOs7Jd6DtoqK46uFvGcylAY27AHtxrfB8
	ZJPHjmwDbUxZKPpiFHArH+seM6tLi8bRJnRV015UymnawrUSlxegn5G3ViGUSWPg
	1cf7Ee7I4Eleg9VEzQs61QQ7UgAtkRLM9M933rJXgDwpPFmwZ2/fLg1P39VEZXDc
	aJ7jpxPsyQzL6sbAHifiLqvbFQPjNBF/JgpXOHFfZRUQHwzjv7PelS1RDacZS4n6
	iSPLvWWzDqNmp0eUiTWCDn5pHfv18ZD+Q0jmyvRiiQzhjuJ3VavURPaTNQHCNnjq
	ihTmQCKjuZpnhdKqf+/ziQ+cnzqSOawsDMg==
X-ME-Sender: <xms:fZrTZyDino00rblE_0mYo8zpLInA0Vwk_OVbnh6_S9CcMDOR8Tf_Bg>
    <xme:fZrTZ8gjRYnOtzpSA1sRa6T0QGb3R9_0J1If0sBqwGdXfyaDgBtp6KhWHND7yfOOH
    gQLZUsGFIFCfb9MWYs>
X-ME-Received: <xmr:fZrTZ1lEVvSwzwLcSyu7Cs7-di1d-Ap-sUOcnBTWqwbU0BD1CJHwegyYlznJnHgYG48ZIP7tfVT4anPBhFbdr0EvsbUnOUzSpW_3>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdelieekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefkuf
    fhvfffjghftggfggesghdtreertderjeenucfhrhhomhepofhitghhvghlucfnihhnugcu
    oehmihgthhgvlhesmhhitghhvghlqdhslhhmrdhnrghmvgeqnecuggftrfgrthhtvghrnh
    ephedtleejudeijeeikeevfeekfedvjeelieeitdetgefgkeeikeejveevgfefudelnecu
    ffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgpdhgihhtlhgrsgdrtghomhdpkh
    gvhihogihiuggvrdhorhhgpdhfvgguohhrrghprhhojhgvtghtrdhorhhgnecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhhitghhvghlsehmih
    gthhgvlhdqshhlmhdrnhgrmhgvpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhp
    ohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfi
    grlhhlrdgtohhm
X-ME-Proxy: <xmx:fprTZwx8Ev-QB16bIzbRZ8lqqUUmWDHJ1lFZ6CEx9ens2auFSdiszA>
    <xmx:fprTZ3RdpTWfWOcFxYW4Ng76QPV0tVcHujX8JiWu1Pj1r3sDSFB6dA>
    <xmx:fprTZ7aeNalv0BVc8A-5jp-QqTKE3dt9OvuMTbeYCEpbt7lB0prF6A>
    <xmx:fprTZwSp0c6xz6C4uMd95rcTsooH0F4XgbfDMab9iwBN7vCq385-cA>
    <xmx:fprTZ-dw3QqYOPxrqnLb8m-dm4oIr_4qWg9SygyxKTjCYZISjdRvmtI_>
Feedback-ID: i71264891:Fastmail
Message-ID: <0e83fd0ed11d376814baaa98c1c3deed5ce50295.camel@michel-slm.name>
From: Michel Lind <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Date: Thu, 13 Mar 2025 21:54:43 -0500
In-Reply-To: <SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
References:
	 	<SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-YbY/VkUd8Dn5oF3e1c5G"
User-Agent: Evolution 3.55.3-1 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType
 <=  2.13.0

--=-YbY/VkUd8Dn5oF3e1c5G
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2025-03-13 at 20:50 +0000, Vulnerability Disclosure wrote:
> In the following change
>=20
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ( FT_QNEW_ARRAY( outline.p=
oints, limit + 4 ) ||
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 FT_QNEW_ARRAY( outline.tags, limit )=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ||
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 FT_QNEW_ARRAY( outline.contours, limit )=C2=A0=C2=A0 ||
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 FT_QNEW_ARRAY( unrounded, limit + 4 )=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 )
>=20
> The out of bounds write requires a short integer overflow with a
> limit value of 0xFFFD - 0xFFFF. In the patch when we change the
> second call to FT_QNEW_ARRAY to remove the addition of +4 the size
> value is now negative and the call to FT_QNEW_ARRAY call will fail
> with an error code causing the logic to short circuit and prevent the
> out of bounds write from occurring. While limit is still signed the
> security risk is mitigated by the early exit condition.
>=20
> If we also want to make the limit variable unsigned, we can
> additionally patch based off the following FreeType commit:
>=20
> https://gitlab.freedesktop.org/freetype/freetype/-/commit/73720c7c9958e87=
b3d134a7574d1720ad2d24442
>=20
As a follow-up to that (sorry to keep trickling in information) - it
turns out a third commit is required

https://gitlab.freedesktop.org/freetype/freetype/-/commit/c71eb22dde1a31018=
91a865fdac20a6de814267d

FT_QNEW_ARRAY does not do the right thing without this commit, as it
was calling FT_MEM_NEW_ARRAY instead of FT_MEM_QNEW_ARRAY

The fixes I'm working with both the Meta security folks and the EL
community (CentOS / AlmaLinux) can be tracked
herehttps://gitlab.com/redhat/centos-stream/rpms/freetype/-/merge_requests/=
8/diffs

https://gitlab.com/CentOS/Hyperscale/rpms/freetype/-/commits/c9s-hs?ref_typ=
e=3Dheads

(we've had to fix it several times in Hyperscale too)

I've tried to keep it well documented so hopefully it's of use to those
trying to patch older releases such as 2.10.4

Best regards,

--=20
 _o) Michel Lind
_( ) identities:
https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc04f2
     README:     https://fedoraproject.org/wiki/User:Salimma#README

--=-YbY/VkUd8Dn5oF3e1c5G
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iI0EABYIADUWIQRdzi5+nDsc/9M1wdeLIp0vfMwE8gUCZ9OacxccbWljaGVsQG1p
Y2hlbC1zbG0ubmFtZQAKCRCLIp0vfMwE8odyAQDZ62AFrRHaT5x05jePh19o7LtU
Shb3qRNYLpaotxsgIgEAx+xSVdRJkYue/v2g2aw7nSdT6pHJGDWJiDP2Y7GQkgo=
=+7p2
-----END PGP SIGNATURE-----

--=-YbY/VkUd8Dn5oF3e1c5G--
