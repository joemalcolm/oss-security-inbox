Received: (qmail 5581 invoked by uid 550); 12 Aug 2025 00:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9561 invoked from network); 11 Aug 2025 21:13:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1754946808; x=1755033208; bh=fxC2VbIU+XfzSkmWqwiXKXCRzq6BI3MEdZe
	2o7nqjJU=; b=RzgREfxJAGNvQRA8ZZNaG5ev1fIQH7wb4zuLYeQ1vO6oEm4VbUH
	Z/LZSbRd4Ugzk+o70i5wEtUoJIAFGX73jhlL0OqEVccr6LfTPOMOH2LFEn3+GRCx
	G94A6fr1PAydffCnODWpSbhqWzwyyrFPcypOcKSBAEUJlhKkg6vHbL5NihZWNkIU
	07n8ddZ9upu+V3Fv43JUOxlRpcdnkjXtz0YECvRGZ8KVvCAJFVL08xBAel5Y2g13
	Qu8JzSFXTxTBsOe9f4biqSO0VvB+Yzxo1Y7i1YAQxey4mRxwPXGwnGCK7vvpbdkG
	sVAiMp6CM39jAoLIPoDzgRm1ooarN56I9dw==
X-ME-Sender: <xms:91yaaF5Q1c5Qpv5ce6Ddas1-E5TptMNYf7PwKmYAWlROhgIVY2ucGw>
    <xme:91yaaE4X0s2FL3LjV9GokX1qFKQy31xqKVc8lDtB9pMFQ5aeMbCF7MH1Gl2J0CtFh
    XzCyIoxq6XRcAg_>
X-ME-Received: <xmr:91yaaF2BwevfqhCTbqL8Ub1hbMBydElK4vUl9bG3KAper8wBnyQqG9CJBOIbEdghLeaN7rosXMBRCdwtMWUC2MPoQYUFRAoa>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufeefhedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfvhffutgfgsehtkeertddtvd
    ejnecuhfhrohhmpeftohgsvghrthcutfhothhhvghnsggvrhhguceorhhrfihosegtphgr
    nhdrohhrgheqnecuggftrfgrthhtvghrnhepudeuleekiefhudetkeeiveetfefgjeeufe
    ffvdekkeetgfeuveejkeffteekuefhnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhr
    ghdpghhithhhuhgsrdgtohhmpdhhthhtphdrphhmpdhivghtfhdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrrhifohestghprghn
    rdhorhhgpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:91yaaAWYfsQ2z99fFH1VbD1eVbG8xK7wk_VtNggZMvuO2-DBwlO3tg>
    <xmx:91yaaA4lwqI85Av2V8dzWr4RvKnBvExcYZ7PnS461gRTYf9fAaKkOA>
    <xmx:91yaaHJk2xXu3Xts4fj5iUk9Z3eRFNF_Z96svWbWqkQkp1rILR7HNA>
    <xmx:91yaaBLQU7i_NZKaiM_giC5D7Y4w3E6cWq0yMppC1os12FkDmElNPg>
    <xmx:91yaaNW5gGmg4aaWbDMoBGunmBf4YaqRZmHeDI-SAv-OvDXdIOCKVA>
    <xmx:-FyaaLAANPlKGXM9cnsyI3Cfi8OQA-XRlKUVKLcisS53peyUXCOmAxWZ70Lj>
Feedback-ID: ia0f04183:Fastmail
Message-ID: <b27e93cf-fa71-4a7e-80f5-4f714866caaf@cpan.org>
Date: Mon, 11 Aug 2025 22:13:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: en-GB
From: Robert Rothenberg <rrwo@cpan.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-40920: Catalyst::Authentication::Credential::HTTP versions
 1.018 and earlier for Perl use insecurely generated nonces

========================================================================
CVE-2025-40920                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-40920
   Distribution:  Catalyst-Authentication-Credential-HTTP
       Versions:  from 0.06 through 1.018

       MetaCPAN: 
https://metacpan.org/dist/Catalyst-Authentication-Credential-HTTP
       VCS Repo: 
https://github.com/perl-catalyst/Catalyst-Authentication-Credential-HTTP


Catalyst::Authentication::Credential::HTTP versions 1.018 and earlier
for Perl use insecurely generated nonces

Description
-----------
Catalyst::Authentication::Credential::HTTP versions 1.018 and earlier
for Perl generate nonces using the Perl Data::UUID library.

* Data::UUID does not use a strong cryptographic source for generating
   UUIDs.

* Data::UUID returns v3 UUIDs, which are generated from known
   information and are unsuitable for security, as per RFC 9562.

* The nonces should be generated from a strong cryptographic source, as
   per RFC 7616.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

References
----------
https://github.com/perl-catalyst/Catalyst-Authentication-Credential-HTTP/commit/ad2c03aad95406db4ce35dfb670664ebde004c18.patch
https://github.com/perl-catalyst/Catalyst-Authentication-Credential-HTTP/pull/1
https://metacpan.org/release/ETHER/Catalyst-Authentication-Credential-HTTP-1.018/source/lib/Catalyst/Authentication/Credential/HTTP.pm#L391
https://datatracker.ietf.org/doc/html/rfc9562#name-security-considerations
https://datatracker.ietf.org/doc/html/rfc7616#section-5.12



