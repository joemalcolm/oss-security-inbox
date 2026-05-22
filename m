Received: (qmail 11722 invoked by uid 550); 22 May 2026 05:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14157 invoked from network); 22 May 2026 05:31:54 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779427901; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=IXS2GGZXYuXFjp7g5QTfuJEyCGEukXm2eJXzi8oHUTkMkXtw7Uc6UQrJHFZeIZFh+VXJgSOZZQ+TW+TfbHo0ZJQ175UBy0M/4hHDCaTk5OYySZopz77UVNN1fBTay+zqcgVTKD+/SvjjXO4wsIBTi+i56N1Y/kMlbluXiw+mUDE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779427901; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=WtLWUrPl4fuxXVRqcJdAVm2y0zFIknrBc1dZ3hr/8WY=; 
	b=COgUqpUlZhZFzc5zVK6kI/LsT6QwncKm0jDxwMFIWGjYOsldtMO7G0AO6O8/t44PmpD5fb3ZJo74gNxxi9pP/cO1DXkaMoMg4dBUGOfJb4qLMLs/0rw0INFVcQoRS3+QqEqNBQePxTWF+4WX8DImq04bOjpTeyIhIem730dSk3A=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779427901;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=WtLWUrPl4fuxXVRqcJdAVm2y0zFIknrBc1dZ3hr/8WY=;
	b=W941owlu8I4jBbe1c+YFj7x4DMhrIexHRU8meeX9Khg94FJaN/seJiU3CxBdl03k
	eaOCqvGf8fj0B8Aeq//rTad9g1SfGN8R1I0tfukw2WqNarYZNKXg6U/+txYU3/ZB/fX
	BB+/sgPMnLFaKfkOfYYzf/IP0plrtcW5PFV9qMs0=
Date: Thu, 21 May 2026 22:31:39 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca>
In-Reply-To: <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca> <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_240653_671896017.1779427899703"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_240653_671896017.1779427899703
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I understand the costs, but simply hanging all the dirty laundry out is cou=
nter productive.=C2=A0 =C2=A0Working a change in public without going into =
sensitive details is reasonable, but pushing vuln reports to public is care=
less.=C2=A0=C2=A0



One of the most effective white hat approaches I've found to using LLMs is =
to farm reckless engineers who spell out these vulnerabilties in public and=
 create roadmaps to exploiting and attacking software.=C2=A0=C2=A0


ROI AI








From: Jacob Bachmeyer <jcb62281@gmail.com>
To: <oss-security@lists.openwall.com>
Date: Thu, 21 May 2026 21:02:51 -0700
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age



On 5/21/26 01:51, ROI AI wrote:=20
> Also the entire nonsense about making the found issues public - this is a=
bsurd and just exacerbates the asymmetry problem.=20
>=20
> By keeping the reports private, the OSS teams can deal with the issues mo=
re on their timeline.=20
>=20
>   By making them public, they add timeline pressure and enable attackers.=
=20
>=20
> Why are you making it harder on yourself?=C2=A0 It is the opposite of wha=
t you want to do.=20
=20
You apparently do not understand.=C2=A0 Most projects take keeping embargoe=
d=20
security issues private rather seriously---and that *itself* has costs.=20
=20
Further, the key issue here is the question of whether those costs have=20
any benefit when the issue was found using a tool to search for issues,=20
due to the risk of someone *else* using the same tool and finding the=20
same issue.=C2=A0 If that other person is another whitehat, you get a=20
duplicate report.=C2=A0 If that other person is a blackhat, you get an=20
in-the-wild exploit while you were carefully maintaining an embargo.=20
=20
> [...]=20
>=20
>=20
> From: ROI AI < mailto:sales@roiai.ca >=20
> To: "oss-security"< mailto:oss-security@lists.openwall.com >=20
> Date: Wed, 20 May 2026 22:26:21 -0700=20
> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age=20
>=20
>=20
>=20
> People are shooting the messengers here.=C2=A0 =C2=A0The fact is - we are=
 going through a generational security event due to the advancement of LLMs=
.=20
=20
Maybe... we are definitely going through a generational event with the=20
amount of "AI" slop that has buried maintainers of major packages.=C2=A0 Ha=
ve=20
you forgotten already that curl had to cancel their bug bounty due to=20
excessive "AI" slop submissions?=20
=20
> It is also both trivial and extremely effective to use Agentic analysis t=
o filter security reports.=20
=20
You advocate that maintainers blindly trust systems that are *known* to=20
be incapable of precise analysis.=C2=A0 I understand talking your own book,=
=20
but there are serious externalities here and I cannot let this go=20
unanswered.=20
=20
What if that "Agentic analysis" incorrectly filters out a report of a=20
genuine issue?=C2=A0 Now the issue does not get fixed...=20
=20
And just how effective is that analysis supposed to be at filtering out=20
"AI" hallucinations?=C2=A0 Remember that the *same* hallucination-prone mod=
el=20
might be doing the analysis as made the bogus report.=C2=A0 How, exactly, i=
s=20
a model supposed to recognize its own hallucinations?=20
=20
> As for 'duplicates', people are claiming this when I have seen little evi=
dence.=C2=A0 I reported a dozen or so to one major project and no one has y=
et claimed invalid or duplicate.=20
=20
The claim came directly from someone who *works* with those issues and=20
manages inserting them into a bug tracker.=C2=A0 I am inclined to trust the=
ir=20
experience over your hand-waving dismissal.=20
=20
You might also want to realize that "AI"-generated submissions are now,=20
in many projects, sent straight to the bit bucket, especially if found=20
to be invalid.=C2=A0 You should not expect a response informing you that yo=
ur=20
report is invalid, as most maintainers have likely stopped bothering to=20
send those.=20
=20
> Moreover, if 'duplicates' are found, then that is a good signal for prior=
itization.=20
=20
Maybe, if only in that duplicate reports indicate that a particular=20
issue may be "low-hanging fruit" and therefore already quasi-public.=C2=A0 =
In=20
other words, duplicate reports could be a signal to dump the embargo and=20
move faster to fix the issue.=C2=A0 (Remember that working under embargo ha=
s=20
costs?=C2=A0 *Those* *costs* *can* *extend* *the* *time* *to* *patch.*)=20
=20
> Let's stop talking about how the vulns are found and start fixing them wi=
th urgency.=20
=20
Know what?=C2=A0 This reads like "AI" slop... and now I look at the source=
=20
(< mailto:sales@roiai.ca >) and realize that I am probably debating a slop=
=20
machine tasked with promoting a product.=C2=A0 I will send this anyway, for=
=20
the benefit of my fellow humans who will read this discussion and who=20
might---just might---recognize your marketing efforts as the slop they are.=
=20
=20
> ROI AI=20
>=20
-- Jacob=20
>=20
>=20
> From: Alan Coopersmith < mailto: mailto:alan.coopersmith@oracle.com  >=20
> To: < mailto: mailto:oss-security@lists.openwall.com  >=20
> Date: Wed, 20 May 2026 10:52:37 -0700=20
> Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age=20
>=20
> On 4/28/26 07:58, Jeremy Stanley wrote:=20
>> I'm sorely tempted, both due to the increased volume and the risk of pre=
mature=20
>> disclosure, to just assume that any vulnerability reported as a result o=
f=20
>> research using an LLM is trivially discoverable by others, and give up t=
rying to=20
>> pretend there's any point to working it under embargo.=20
>=20
> Other maintainers under similar floods seem to agree:=20
>=20
> Linux kernel:=20
>   - https://lkml.org/lkml/2026/5/17/896=20=20
>   - https://docs.kernel.org/process/security-bugs.html=20=20
>=20
> DNS servers (BIND, Unbound, PowerDNS):=20
> - https://indico.dns-oarc.net/event/56/contributions/1233/=20=20
> - https://indico.dns-oarc.net/event/56/contributions/1233/attachments/118=
0/2539/presentation.pdf=20=20
>
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_240653_671896017.1779427899703--
