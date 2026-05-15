Received: (qmail 1430 invoked by uid 550); 16 May 2026 00:19:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16088 invoked from network); 15 May 2026 23:52:39 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778889149; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=WcpFzJf7O8Htl+Y09sVt8tq5ZTukh+A8OhsLuYdbEfy0L10dZZxvnVFodXUbl4djqOjIyiHwWqWEjFu619PT2zZNHSUL22oOTK4qcmH82GXbyUPOa6lUq1iuqwDhg7Pmcg0ZrnhxBnyTkhlVNrCMCxMm6/JrbjRP6Bn/QWsPG1I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1778889149; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=GVR8e874/bZugX9Qbw+Gwa2sqXRxpBv8YlgxrSVduEI=; 
	b=RLYF9XpFom9DjQX8mI6WpovJauZLOs7YHrjUQoOaDr88oScTvUy0a0KkC9MHxZluh5GEtpMYCXdvmd8e8+lIJf86JcqlOrO7CLKgI3P4yd9j+2AmQtPojL8YKDYtF34n1bQAzKlQQ1V58QEtnf9kQuy1cNqnvOG52GgsmqE/MKk=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778889149;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=GVR8e874/bZugX9Qbw+Gwa2sqXRxpBv8YlgxrSVduEI=;
	b=bueTCPeWrXoitb0dIGrfyPKktWKH4ZF0TX9Z3khn1A7zt0n8L3zNMi8/tWGP8dDY
	fCrehKzvTlKW4J6g8DBl5ICGCD+lsDgEC/nw5ylRwY8QnBV2N+WdkhQDtKkRQ7eYyms
	g5bhHPiJ/9IjJUh6EMNBaBOJq7JpIkPbrX+ODgcs=
Date: Fri, 15 May 2026 16:52:28 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e2e0e48e7.65e04bb445073.6153883981537660891@roiai.ca>
In-Reply-To: <FRWP189MB3328A68F0DA5B59C7740E411C3042@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca> <FRWP189MB3328A68F0DA5B59C7740E411C3042@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_68766_309238788.1778889148647"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_68766_309238788.1778889148647
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not sure I understand this feedback.=C2=A0 Openstack has a lot of low hangi=
ng vulnerabilities due to legacy code.=C2=A0 This is the central issue, not=
 me or LLMs.=C2=A0=20



A lot of people are clamoring for sovereign cloud right now:=C2=A0 https://=
news.ycombinator.com/item?id=3D48120629=20

An example:=C2=A0=C2=A0 https://bugs.launchpad.net/swift/+bug/2152384/comme=
nts/14=20


ROI AI








From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com"<oss-security@lists.openwall.com>
Date: Fri, 15 May 2026 08:27:57 -0700
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age



If you want to process your all your internal thoughts and personality thro=
ugh a statistical probabilistic function, then you are of course absolutely=
 entire free to do so. But please keep in mind that LLMs are also overloadi=
ng open source projects with fake PRs and "fixes" that ruin the codebase (d=
o I have to mention ffmpeg and curl?), the code quality and the lives of ev=
eryone.=20
=20
If an LLM is used to find potential bugs, it is up to you to ensure it is a=
 real bug and that you can replicate the behavior. Offloading that part to =
the LLM and the need for human knowledge is a loss for everyone involved.=20
________________________________=20
Fr=C3=A5n: Tim Shephard < mailto:tim@roiai.ca >=20
Skickat: den 12 maj 2026 03:22=20
Till: oss-security < mailto:oss-security@lists.openwall.com >; fungi < mail=
to:fungi@yuggoth.org >=20
=C3=84mne: Re: [oss-security] Coordinated Disclosure in the LLM Age=20
=20
Thanks for starting this discussion.  I have reported a number of issues re=
cently, including - #2149789,  #2150261,  #2149775,  #2150316 - three of wh=
ich are identified by the team as critical, and one as high.  The oslo rabb=
it MITM is also critical, IMHO, but I agree it cannot be fixed without pote=
ntially breaking many poorly configured deployments and so must be 'Class B=
'.  An awkward situation to be sure, but the solution is understandable.=20
=20
For what it's worth my goal is not to 'mine security gold', rather I am try=
ing to find and test potential solutions for sovereign cloud.=20
=20
=20
=20
More to the point of the thread, I think there is also a more pressing issu=
e adjacent to the disclosure-process question: large, long-lived projects s=
uch as OpenStack have a substantial backlog of legacy vulnerabilities and i=
nsecure patterns that are now becoming much easier to discover with LLM ass=
istance.=20
=20
That changes the risk calculation. Issues that previously required deep pro=
ject knowledge, persistence, or specialized tooling may now be within reach=
 of many more people. We should assume adversaries can use the same leverag=
e, including for insider attacks and for chaining individually modest bugs =
across trust boundaries.=20
=20
In that sense, this feels like a generational security event. The urgent qu=
estion is not only whether embargoed details might leak through LLM use, bu=
t whether maintainers can harden exposed systems faster than attackers can =
rediscover and combine old weaknesses.=20
=20
That argues for shorter exposure windows, more proactive hardening, and mor=
e attention to eliminating vulnerable patterns before they become practical=
 attack paths.=20
=20
Furthermore, it argues for assertive use of modern LLMs, especially for cod=
e review and vulnerability discovery. I have volunteered to help with this =
for the OpenStack VMT, and would be happy to do so again here.=20
=20
=20
=20
Cheers,=20
=20
=20
=20
Tim.=20
=20
PS: LLMs helped with this email, and with more and more of the work I do. I=
 think we need to move forward with these tools more deliberately and less =
fearfully.=20
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_68766_309238788.1778889148647--
