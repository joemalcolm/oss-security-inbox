Received: (qmail 20176 invoked by uid 550); 24 May 2026 16:43:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25913 invoked from network); 24 May 2026 11:58:39 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779623908; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=puxd0NNC7HTmTo6eXsy8J5+yrWVL/aGgzSPIAPnBPEqbppfaMjIQKnzmDqXF292upEPXl3x/pX+GkywdWD6tpFR10qTNYY1UAPPbiZJ//N7J9m87eTj0fcHCFCM1On+Y82sbHT6jOQkFhYn++DSRJywtueb5dR7UlIiDkkp0X1Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779623908; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Cv6R+hYCtYD8/aS0grJ5qlJ4bhmAU62PIVWjCcGcgR4=; 
	b=FPpxvDP0WlzTey9uWLHLHiDK6W//VK0TZW0PTN9QtN5p7GVpq3Mlr6OXvnIGn2CAT/UXnvjtEqgU4RIrZ4l7TsSsXWnvfGjgulQpYTZpKmAspdtVKIah8E03pELUDGrHI5gGSDwjp9x5LnjtI2H8XkGIMyw6dBilMQRucJhmq4A=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779623908;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To;
	bh=Cv6R+hYCtYD8/aS0grJ5qlJ4bhmAU62PIVWjCcGcgR4=;
	b=ne1QtuC63+cZsBsZG4TdGoEQxqabQ5BcG6OzJdvqG+lcU4n30ZALLDPYrc0OsgJG
	Nk8aG/3EehKP9C2NBeVvdN5vn36tnDb14wweSsassFjDIDvktO+P13bimySusmTmp0p
	tpEBBRke4Z/f9uURxE8Vxh289wziuih5GVod8/xY=
Date: Sun, 24 May 2026 04:58:26 -0700
From: ROI AI <sales@roiai.ca>
To: "jcb62281" <jcb62281@gmail.com>
Cc: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e59d9cddf.5c251df4215598.6259862364259739522@roiai.ca>
In-Reply-To: <bab07bb5-aa3c-4a06-b8a7-c33efd179b41@gmail.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
 <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
 <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca> <bab07bb5-aa3c-4a06-b8a7-c33efd179b41@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_324000_415198543.1779623906783"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_324000_415198543.1779623906783
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> In case you have forgotten, this discussion *started* with a maintainer=20
suspecting that LLM-detected vulnerabilities


I replied to this thread because I reported a dozen issues to OpenStack, wh=
ich the OP is a VMT lead for.=C2=A0 He has yet to claim any of the issues I=
've reported are invalid or duplicate.=C2=A0I believe people are overclaimi=
ng this.=C2=A0 I also believe duplicates, when found, are a good sign for p=
rioritization.=C2=A0 =C2=A0=C2=A0



I was also disappointed to see a serious security bug I reported on OpenSta=
ck pushed to public.=C2=A0 If I had know that would happen, I wouldn't have=
 reported it.=C2=A0 I don't want to be a part of what I feel to be negligen=
t and unprofessional activities.=C2=A0 My goal was not credit, but rather t=
o improve the security of OpenStack as I wanted to see it as a solution to =
sovereign cloud.=C2=A0 Pushing it to public undermined that.

=C2=A0
Using LLMs, I am farming careless engineers who reveal security sensitive i=
nfo in bug reports, commit comments, and code reviews.=C2=A0 This 'public' =
attitude is just making it much easier for me to do so.


Security sensitive communication should remain in a restricted discussion a=
rea and teams should be using LLMs to analyze it for further issues to clos=
e.




-- Jacob
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_324000_415198543.1779623906783--
