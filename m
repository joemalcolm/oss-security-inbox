Received: (qmail 13340 invoked by uid 550); 21 May 2026 16:08:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10100 invoked from network); 21 May 2026 05:26:35 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779341182; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=DAmN0aR0FcOLWWHkddx7BwVf/kqLLAKu6n/wVE4KA0uWwVZ/RQWFZ61I48E3lr1BlEWPS5TTEOHMxJ+/92vopuo0vmjQ0Gwv5iKXyxYez06BsXyrsvX9bE63jFiFiHF/VCn58ZT+DPNZE1qL6jPE/XqwxvpS7BKcumYYt2SZUG4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779341182; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=Vy3V4FYJ583vZr7PoegSmD/iJkKsDEgS12bn3SSgU0s=; 
	b=F756Iz7uta3bPhqtAAuhVJonwBRGWk/nYZBMJWrTXXOOrywf4as5KJol9O35WICpt9km1PWH5Q7If5iNCCJ1D2+DUXZoHoKeKuG3I8k+dBp77xtRt9sipr/7BAqpX4oRTv3O1cy7Z+JV2YUH12+3MXfd0akno+/sRkqXqzGUIWE=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779341182;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=Vy3V4FYJ583vZr7PoegSmD/iJkKsDEgS12bn3SSgU0s=;
	b=NGXs+1k2ngnmqTUGOLIR5x+zr8mYiIMZgGtEqypnfrNeZz1C+tyJabQCWk58xfi9
	Bx9WE+DfNY7A3VPHKEJOxDXUhfKYtU1JIeJplAd9S1QEv2qDKPXX/k7iXESnRxWOgsO
	waR5T7rKCnX2L6OuAA6E9Ida80VEWwrdmpxpE5pg=
Date: Wed, 20 May 2026 22:26:21 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
In-Reply-To: <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
References: <afDLFWVMK-r70PB0@yuggoth.org> <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_189705_1863805582.1779341181042"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_189705_1863805582.1779341181042
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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








From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: <oss-security@lists.openwall.com>
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




------=_Part_189705_1863805582.1779341181042--
