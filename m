Received: (qmail 26385 invoked by uid 550); 12 May 2026 03:02:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3870 invoked from network); 12 May 2026 01:22:30 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778548941; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=hE1R+Q/InLyjc+YuuxapHB2xJTcNyzznGnDFqe1hjlTEak+1w2CchqRB4L4dmrPS7atSRoU7DS9ijkC67tMor4dtr7HVSmjKilvbAgziDlBCbaXW1/9+oAqvIjylIUHPRfiy+AVdILJ58UMgPULTLHCL3RBVSY6vov1Rhb6CeT0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1778548941; h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=Gbxr7+SPhEXDyYockDejBCiqr2zu4SQsuTOl/ylVeiw=; 
	b=gpaZ/i+gCzJDYLGQ05Ks5CLOQhB+2ZMYnGlPER7detq0GQK53Ss7yG7fJv7wVzBDmVS9sLCatJjKUZvh72YWT2Gs5Ipv38k7XTP/nFcAblNIgQDq9BZyR6dien/uMJobu5Jb3GjiI8f0q4Yl3inC6vbahq/gQ3lMQlBrM0LzHIw=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=tim@roiai.ca;
	dmarc=pass header.from=<tim@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778548941;
	s=zmail; d=roiai.ca; i=tim@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=Gbxr7+SPhEXDyYockDejBCiqr2zu4SQsuTOl/ylVeiw=;
	b=nBKWUyquvm4DnADSHHd9bWTpVP5YJL0qMYmSs7MsQBfocQrvD4pY3SuGkHOd37cK
	MaH4hDz7QUIWTjbDgkONYxfZ0WRt1GA2SR0GTZn5/s0053PhMxXHWFSs8huN4q47WtR
	2SE0VW+NKFvwLYm+YZQnzjcTN8PrYqIxyTv3sPLc=
Date: Mon, 11 May 2026 18:22:20 -0700
From: Tim Shephard <tim@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>,
	"fungi" <fungi@yuggoth.org>
Message-Id: <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca>
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_453718_461513554.1778548940004"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_453718_461513554.1778548940004
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for starting this discussion.=C2=A0 I have reported a number of issu=
es recently, including -=C2=A0#2149789,=C2=A0 #2150261,=C2=A0 #2149775,=C2=
=A0 #2150316 - three of which are identified by the team as critical, and o=
ne as high.=C2=A0 The oslo rabbit MITM is also critical, IMHO, but I agree =
it cannot be fixed without potentially breaking many poorly configured depl=
oyments and so must be 'Class B'.=C2=A0 An awkward situation to be sure, bu=
t the solution is understandable.=C2=A0 =C2=A0 =C2=A0

For what it's worth my goal is not to 'mine security gold', rather I am try=
ing to find and test potential solutions for sovereign cloud.=C2=A0



More to the point of the thread, I think there is also a more pressing issu=
e adjacent to the disclosure-process question: large, long-lived projects s=
uch as OpenStack have a substantial backlog of legacy vulnerabilities and i=
nsecure patterns that are now becoming much easier to discover with LLM ass=
istance.

That changes the risk calculation. Issues that previously required deep pro=
ject knowledge, persistence, or specialized tooling may now be within reach=
 of many more people. We should assume adversaries can use the same leverag=
e, including for insider attacks and for chaining individually modest bugs =
across trust boundaries.

In that sense, this feels like a generational security event. The urgent qu=
estion is not only whether embargoed details might leak through LLM use, bu=
t whether maintainers can harden exposed systems faster than attackers can =
rediscover and combine old weaknesses.

That argues for shorter exposure windows, more proactive hardening, and mor=
e attention to eliminating vulnerable patterns before they become practical=
 attack paths.

Furthermore, it argues for assertive use of modern LLMs, especially for cod=
e review and vulnerability discovery. I have volunteered to help with this =
for the OpenStack VMT, and would be happy to do so again here.



Cheers,



Tim.

PS: LLMs helped with this email, and with more and more of the work I do. I=
 think we need to move forward with these tools more deliberately and less =
fearfully.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_453718_461513554.1778548940004--
