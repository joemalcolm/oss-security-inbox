Received: (qmail 16308 invoked by uid 550); 7 Jun 2025 14:56:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29964 invoked from network); 7 Jun 2025 14:53:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thinkmo.de; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received; s=mail202312; t=1749307990; bh=veK
	ORQLdRaEo/uUinLsQ+O9nAR4Um/dtRGYbxzEsqGA=; b=zFxK9Ahc6wTjMsGFgzH
	fZTYjY480egYKtRJFl2x91EM6lZRol0ygDDPa4OBWQIeDdbKiXDaL6lI5Cm1tkt3
	kZovVL4R+r+SHIhOPw7DmnLnbiZ53xcenYnelQMijswwKA7CI0v4DHcFq342BVJb
	cog8xacYSp4z3vQOSBpZIfuteGoxO/ieOQ19vSKm0jkkJP7F6VhOBN9ijtEEoT2O
	RoUkwLZ5OriBvSkN8QxwnY4S+Fu3B8G4Bt6VCiA478IPyVtNDm/2Cbw/u98bSiOI
	XGjF7qVzMdspF9RUF/JcQlTc/Cugj26+mRARb5ZdlPSKghBp37i+9bLd7JKLSeHZ
	J+Q==
X-Virus-Scanned: Debian amavis at 
Date: Sat, 7 Jun 2025 16:53:07 +0200
From: Bastian Blank <bblank@thinkmo.de>
To: oss-security@lists.openwall.com
Message-ID: <20250607145307.owt2hpb3xkqsdxjt@shell.thinkmo.de>
Mail-Followup-To: Bastian Blank <bblank@thinkmo.de>,
	oss-security@lists.openwall.com
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <aEROmObEfB-k2IW7@lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aEROmObEfB-k2IW7@lappy>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Sat, Jun 07, 2025 at 10:37:12AM -0400, Sasha Levin wrote:
> The scope, which I assume was quoted from
> https://www.cve.org/PartnerInformation/ListofPartners/partner/Linux also
> lists cve@kernel.org as the right email to contact.

This page also links as step one to
https://www.kernel.org/doc/html/latest/process/security-bugs.html, which
does _not_ list cve@kernel.org anywhere.

> Note that this isn't just a technicality: for example, I'm a member of
> cve@k.o, but *NOT* of security@k.o.

But it already reached the right organisation.  Did security@k.o respond
with a referal?

Bastian

-- 
There are some things worth dying for.
		-- Kirk, "Errand of Mercy", stardate 3201.7
