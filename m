Received: (qmail 1032 invoked by uid 550); 30 Sep 2025 13:49:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32736 invoked from network); 30 Sep 2025 13:49:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector1; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=L9ukb/5LvSwsVqV5aTrk42JmCCsAyZitjxgw6QsYp98=; b=WE40wrNo9HQOSCMAWo+xsUSycd
	1XIRVvmTd4CoT1EBPsyyynzbbwIMkfrMGEl4T21Hifowk/2phv6IFwf1Qh6fBLhZ7beqRsqYWz/tc
	7fuywUU2VfJ+ytnv5TYMaUr2pTW2xHdOkhOgIg59bkrb5irowYrSWBxRAUJ5+34JRjuKlfQI8ikaG
	oi0O2w3EtFinWNeW5GK0MWvwo/+IJLYDaR58JjiL56hM11JzDun5wAMvNAUR2vIvG8uSmn7u94EHL
	WIDctirYkUpwQeQonH+akErRsH5nO0vJLIk/JKpOXbemye5TWf8LSuf3Cyd/bjf91gPdSvrRLrXeN
	knrSbnvA==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.21\))
Date: Tue, 30 Sep 2025 09:48:42 -0400
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <20250930052352.GA23546@openwall.com>
 <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com>
 <20250930061823.GA26871@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20250930061823.GA26871@openwall.com>
Message-Id: <77ECC3BF-4766-4B48-A865-57D43412B374@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.21)
Subject: Re: [oss-security] Shellshock (was: How to do secure coding and
 create secure software)



> On Sep 30, 2025, at 2:18 AM, Solar Designer <solar@openwall.com> wrote: .=
..
>=20
> On Tue, Sep 30, 2025 at 01:02:01AM -0500, Jacob Bachmeyer wrote:
>> Small nit here:  Shellshock was clearly a vulnerability in Bash and I am=
=20
>> unsure if the way Bash exports shell functions was documented at all.
> ...
>> If presented with an environment variable value having the correct form=
=20
>> for a shell function, but containing more text than the body of the=20
>> function, Bash would immediately execute the trailing text as commands=20
>> while importing the shell function from the environment.  That was=20
>> Shellshock.
>=20
> Yes, there were multiple Shellshock-related code issues in bash, and
> several CVEs were rightly assigned against bash.  No arguing about that.
> Also, the proper Shellshock was exposed as a vulnerability by far not
> only through HTTP servers, since it parsed variables of any names.

All true. Shellshock's story is complicated in part because
early "fixes" didn't fix it. Its revelation was over 10 years ago, so
some readers here may not be familiar with Shellshock. I wrote a detailed a=
rticle
about Shellshock here, including ways detect or prevent similar vulnerabili=
ties:

https://dwheeler.com/essays/shellshock.html

--- David A. Wheeler

