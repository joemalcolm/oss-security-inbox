Received: (qmail 24171 invoked by uid 550); 21 May 2026 16:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2004 invoked from network); 21 May 2026 06:51:34 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779346280; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=Ld17PKnGw3nbAmhJb8AlYSlwisuYsVqvzpoSakut7SwWWgS+Q+BOMbzO2sRYMH0T8Xe6vxzwohYGUBILHe2JQtJ54gVeMp3qXTYiL3lflcH6zou9wqMAQcINmygMLm5ii4nOmijlvewLZbYWE5l4N94WNzpafcp2NlcCe/eVqEw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779346280; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=FTT/LEJrz00u//PnI9xOyDotkuPLoiknj8g+9mNEhtQ=; 
	b=mzH2e1E/FbPkpNuXGigDc75D+VYktobYX0Gbds/SVQweW3JHg1B0So1LQEb5yWl9uKKIZmlCiosMJqVsXic/CcRJ/u7KTSKEYLVPDGtJG85Hsh1NTNyTKcpzrOJRC01pttOuk2thi6NKbUIWP8uEJyeY2M9xYKj+w7hAoLY0Mgs=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779346280;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=FTT/LEJrz00u//PnI9xOyDotkuPLoiknj8g+9mNEhtQ=;
	b=bTb684ktabhWtAdS8uJCDpTQTbCP4W4ky5hoaV17o+p0VPFE/JUf+JEQ35Lfiv//
	SMq7puNA256JiKNFGGn5ExVe5RpP048VorFM/L2qotEE7ZUbTBKq/Zp/Di6CIaf83HT
	ACpKqecWiou733eQL5nC06rnKDsz8XJRko8BWRfQ=
Date: Wed, 20 May 2026 23:51:18 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
In-Reply-To: <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
References: <afDLFWVMK-r70PB0@yuggoth.org> <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com> <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_191387_186356166.1779346278644"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_191387_186356166.1779346278644
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also the entire nonsense about making the found issues public - this is abs=
urd and just exacerbates the asymmetry problem.=C2=A0=20



By keeping the reports private, the OSS teams can deal with the issues more=
 on their timeline.=C2=A0



 By making them public, they add timeline pressure and enable attackers.=C2=
=A0=C2=A0



Why are you making it harder on yourself?=C2=A0 It is the opposite of what =
you want to do.=C2=A0



If it's giving CVE credit to people who've taken the time and tokens to rep=
ort these issues that concerns you, than just bundle the issues in one CVE.=
=C2=A0=C2=A0


ROI AI








From: ROI AI <sales@roiai.ca>
To: "oss-security"<oss-security@lists.openwall.com>
Date: Wed, 20 May 2026 22:26:21 -0700
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age



People are shooting the messengers here.=C2=A0 =C2=A0The fact is - we are g=
oing through a generational security event due to the advancement of LLMs.



It is also both trivial and extremely effective to use Agentic analysis to =
filter security reports.



As for 'duplicates', people are claiming this when I have seen little evide=
nce.=C2=A0 I reported a dozen or so to one major project and no one has yet=
 claimed invalid or duplicate.=C2=A0=C2=A0



Moreover, if 'duplicates' are found, then that is a good signal for priorit=
ization.



Let's stop talking about how the vulns are found and start fixing them with=
 urgency.



ROI AI








From: Alan Coopersmith < mailto:alan.coopersmith@oracle.com >
To: < mailto:oss-security@lists.openwall.com >
Date: Wed, 20 May 2026 10:52:37 -0700
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age











On 4/28/26 07:58, Jeremy Stanley wrote:=20
> I'm sorely tempted, both due to the increased volume and the risk of prem=
ature=20
> disclosure, to just assume that any vulnerability reported as a result of=
=20
> research using an LLM is trivially discoverable by others, and give up tr=
ying to=20
> pretend there's any point to working it under embargo.=20
=20
Other maintainers under similar floods seem to agree:=20
=20
Linux kernel:=20
 - https://lkml.org/lkml/2026/5/17/896=20=20
 - https://docs.kernel.org/process/security-bugs.html=20=20
=20
DNS servers (BIND, Unbound, PowerDNS):=20
- https://indico.dns-oarc.net/event/56/contributions/1233/=20=20
- https://indico.dns-oarc.net/event/56/contributions/1233/attachments/1180/=
2539/presentation.pdf=20=20
=20
--=20
 -Alan Coopersmith- mailto:alan.coopersmith@oracle.com=20=20
 Oracle Solaris Engineering - https://blogs.oracle.com/solaris
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_191387_186356166.1779346278644--
