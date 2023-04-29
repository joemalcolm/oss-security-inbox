Received: (qmail 9802 invoked by uid 550); 29 Apr 2023 10:20:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32018 invoked from network); 29 Apr 2023 10:04:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1682762651;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p/VRUjBPbdtNsSGQzW1v9eWAIDNK1yF13Zzx0GwvaIs=;
	b=Uf1g9BzmXmENpI3d+33WrDDWILfoNdMfWZXX+unIAcy4o6xqKIoz2pb2TkGw+9H7/7gT+g
	/2GAy6gqi3ymmmF5OBdfhrL/cdHmCFxoR7w+bI0ZlMypUUOMPCAafKiXNFIHdLmRRtYVSe
	Ei8Wjssex4o9AXGf67Oy2WsDvNBm0PNA2zxlJwZAO1gUyURL210pbzx73OJhNbwBLJx4/P
	husVtbBZNNqkesKcJ1sqf8vRTuNZbnZDS3NfDmym1XcpcDs9t6mIubUUMgYWkqk2wFWcdK
	0ywm0cXivAwJI9jMyq78ZeMkRPDdY8JAbhB6ThJhftW1c7pX8us7et2hNz4K5w==
Date: Sat, 29 Apr 2023 12:04:07 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Message-ID: <20230429100407.3yqdy2vtzokv3t5l@stig.io>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230418154630.eoheygqyom3c7ovw@stig.io>
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules


- CVE-2023-31484 for CPAN.pm 
- CVE-2023-31485 for GitLab::API::v4 
- CVE-2023-31486 for HTTP::Tiny

On 2023-04-18 17:46, Stig Palmquist wrote:
> HTTP::Tiny v0.082, a Perl core module since v5.13.9 and available
> standalone on CPAN, does not verify TLS certs by default. Users must
> opt-in with the verify_SSL=>1 flag to verify certs when using HTTPS.
> 
> We grepped trough CPAN to find distributions using HTTP::Tiny that
> didn't specify cert verification behaviour, possibly exposing users to
> mitm attacks. Here are some examples with patches:
> 
> - CPAN.pm v2.34 downloads and executes code from https://cpan.org
>   without verifying server certs. Fixed in v2.35-TRIAL.
>   https://github.com/andk/cpanpm/commit/9c98370287f4e709924aee7c58ef21c85289a7f0
> 
> - GitLab::API::v4 v0.26 exposes API secrets to a network attacker.
>   https://github.com/bluefeet/GitLab-API-v4/pull/57
> 
> - Finance::Robinhood v0.21 is maybe exposing API secrets and financial
>   information to a network attacker.
>   https://github.com/sanko/Finance-Robinhood/pull/6
> 
> - Paws (aws-sdk-perl) v0.44 is maybe exposing API secrets to a network
>   attacker.
>   https://github.com/pplu/aws-sdk-perl/pull/426
> 
> - CloudHealth::API v0.01 is maybe exposing API secrets to a network
>   attacker.
>   https://github.com/pplu/cloudhealth-api-perl/pull/2
> 
> ... and more. We have generated a list of over 300 potentially affected
> CPAN distributions.
> 
> More info in our blog post:
> https://blog.hackeriet.no/perl-http-tiny-insecure-tls-default-affects-cpan-modules/
> 
> -- 
> Stig Palmquist <stig@stig.io>

