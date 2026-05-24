Received: (qmail 19732 invoked by uid 550); 24 May 2026 16:43:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18288 invoked from network); 24 May 2026 11:45:57 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779623146; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=qbE8RTsI0OASOKphqnbSb2DWystbZlttqPZfCnteyW4W8lJW/ydOgk67+0kgums6VR8WSSjdJqGhvXh22IptJsq22GdNc4qAnhJYKDiqlOd1HntTPOvSCuQeZmed/oi8si49TF0uKbC3IrbwRqWogBBhyCJJYn/s3dKmRlXeuwQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779623146; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=AHC2MVY+n04ryFX6zw05RctT5dAmjiFMi0DOOXeUukA=; 
	b=Sq+MUyFUKaDlfNZm/pPjFGThqXQiYWA1vTQteGOvqPRX0ydU6y4Z4Gk7Fun+tRYfi19waPGKvWwSrtetpzdrDtuhzUPpnF7bGWdJYyPifGE4QDgagONpCKb7icYZTnuVt0KpRXfH/wxc5wK1Irvg1eOOAO9sv4VRw6EokJEqhbk=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779623146;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=AHC2MVY+n04ryFX6zw05RctT5dAmjiFMi0DOOXeUukA=;
	b=St47JNUi3yKVAqWpKqahubPNQ938YDwq8xykOsOINXtfy0IVkqXLLM4hx9JkEtdf
	djQC93mkf7DDl1vZgLmIDN77DHhtj88sYF4AJvno7riz3sKc4CsZMfVdXH/6e9qDY2N
	k4jA95aI0MctgqTTyzn7QW/6yu1UPL2mfQDucMPE=
Date: Sun, 24 May 2026 04:45:46 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e59ce32b1.64c1444e215427.1022640089003741802@roiai.ca>
In-Reply-To: <FRWP189MB332883120D877F66089C46BFC30F2@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <19e19c71ce3.89e18d29194892.4293867009907644019@roiai.ca>
 <FRWP189MB3328A68F0DA5B59C7740E411C3042@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
 <19e2e0e48e7.65e04bb445073.6153883981537660891@roiai.ca> <FRWP189MB332883120D877F66089C46BFC30F2@FRWP189MB3328.EURP189.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_323801_1498252994.1779623146161"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_323801_1498252994.1779623146161
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, reporting issues without proper analysis is and always has been grossl=
y negligent.=C2=A0 For that I strongly encourage people to fight fire with =
fire.=C2=A0 AI assisted reports should always go into a queue which utilize=
 agentic analysis.=C2=A0 I can't stress enough how effective this and we sh=
ould stop shaking our fists at the inevitable.



Everyone also needs to appreciate the amount of donated tokens and money.=
=C2=A0 When I reported my dozen issues, I burned through very significant q=
uota (much of it verifying).=C2=A0 That was a real $$ donation I made to th=
e project.=C2=A0


ROI AI








From: Markus Klyver <markusklyver@hotmail.com>
To: "oss-security@lists.openwall.com"<oss-security@lists.openwall.com>
Date: Fri, 22 May 2026 08:18:35 -0700
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age



And my point is that it is up to the submitter to make sure that the bug ex=
ists and is real.=20
=20
I also agree that, in practice, embargoes are not costless coordination mec=
hanisms. They impose delays, administrative overhead and a nontrivial burde=
n on maintainers who must preserve confidentiality/track disclosure windows=
/manage downstream communication. Public reporting means validation, encour=
age duplicate detection as a signal of prevalence and improve collective de=
fensive awareness once a responsible disclosure process has been satisfied.=
=20
=20
________________________________=20
Fr=C3=A5n: ROI AI < mailto:sales@roiai.ca >=20
Skickat: den 16 maj 2026 01:52=20
Till: oss-security < mailto:oss-security@lists.openwall.com >=20
=C3=84mne: Sv: [oss-security] Coordinated Disclosure in the LLM Age=20
=20
Not sure I understand this feedback.  Openstack has a lot of low hanging vu=
lnerabilities due to legacy code.  This is the central issue, not me or LLM=
s.=20
=20
=20
=20
A lot of people are clamoring for sovereign cloud right now: https://emea01=
.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fnews.ycombinator.com=
%2Fitem%3Fid%3D48120629&data=3D05%7C02%7C%7C973c98c5b1bd4aa480ea08deb2e1041=
4%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C639144876663331996%7CUnknown=
%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIs=
IkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DaM7HS448XCDx0Vl51hCEe=
L8pS8e%2F8SoxiOTR8KULJmk%3D&reserved=3D0 < https://news.ycombinator.com/ite=
m?id=3D48120629 >=20
=20
An example: https://emea01.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fbugs.launchpad.net%2Fswift%2F%2Bbug%2F2152384%2Fcomments%2F14&data=3D=
05%7C02%7C%7C973c98c5b1bd4aa480ea08deb2e10414%7C84df9e7fe9f640afb435aaaaaaa=
aaaaa%7C1%7C0%7C639144876663352635%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGki=
OnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3=
D%7C0%7C%7C%7C&sdata=3DqIeyDjkamPlFaLlq%2FfQRAIe5OXJjR4xX9%2BJgyHw6l68%3D&r=
eserved=3D0 < https://bugs.launchpad.net/swift/+bug/2152384/comments/14 >=20
=20
=20
ROI AI=20
=20
=20
=20
=20
=20
=20
=20
=20
From: Markus Klyver < mailto:markusklyver@hotmail.com >=20
To: " mailto:oss-security@lists.openwall.com "< mailto:oss-security@lists.o=
penwall.com >=20
Date: Fri, 15 May 2026 08:27:57 -0700=20
Subject: Sv: [oss-security] Coordinated Disclosure in the LLM Age=20
=20
=20
=20
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
Fr=C3=A5n: Tim Shephard < mailto: mailto:tim@roiai.ca  >=20
Skickat: den 12 maj 2026 03:22=20
Till: oss-security < mailto: mailto:oss-security@lists.openwall.com  >; fun=
gi < mailto: mailto:fungi@yuggoth.org  >=20
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
e prohibited.=20
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_323801_1498252994.1779623146161--
