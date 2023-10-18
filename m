Received: (qmail 7584 invoked by uid 550); 18 Oct 2023 13:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30094 invoked from network); 18 Oct 2023 13:30:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1697635824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=zdvGj9P4zaKMR3zYq0PS53XGpy6KYgUHQjmeaa/IlFU=;
	b=TzEdXfS4xbV48NdImi5kemRRfbwcdiL0Ws+roM2ktmBWtbE4r1Uz+4gWQ0IcoVQgy/sr7A
	D+SstXwblB7y1tcnfu4OuqJcHzGT40cKaGwRcwO1gtN0FcRWuaamcz8NQyF18EHLJ6u/fW
	wmO+BSSm5KBKTOmUqXn3pUCXo+2IKTC236UWyEeDtut+CYAQXE0/rfdbrV86c71/G4ECsC
	NK2B7RZ43eFIWCSAE1ILZ0OgKORQXvPGjbNiGgprNl6EzrFDu/qdScRzCFvYIspYBeE2cQ
	oLLt2Nf6K/Uih7U9mm3ex/urOiTm1cSCK8b0Gc3zMP1IKKT3H6fKkX+QhrDokw==
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=matt smtp.mailfrom=matt@openssl.org
Message-ID: <3c762be4-6102-4642-92df-b2e4fee3d4a5@openssl.org>
Date: Wed, 18 Oct 2023 14:30:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
References: <20231017180600.GA10598@openwall.com>
From: Matt Caswell <matt@openssl.org>
Autocrypt: addr=matt@openssl.org; keydata=
 xsBNBFGALsIBCADBkh6zfxbewW2KJjaMaishSrpxuiVaUyvWgpe6Moae7JNCW8ayhJbwAtsQ
 69SGA4gUkyrR6PBvDMVYEiYqZwXB/3IErStESjcu+gkbmsa0XcwHpkE3iN7I8aU66yMt710n
 GEmcrR5E4u4NuNoHtnOBKEh+RCLGp5mo6hwbUYUzG3eUI/zi2hLApPpaATXnD3ZkhgtHV3ln
 3Z16nUWQAdIVToxYhvVno2EQsqe8Q3ifl2Uf0YpaN19BDBrxM3WPOAKbJk0Ab1bjgEadavrF
 BCOl9CrbThewRGmkOdxJWaVkERXMShlzUzjJvKOUEUGOxJCmnfQimPQoCdQyVFLgHfRFABEB
 AAHNH01hdHQgQ2Fzd2VsbCA8bWF0dEBvcGVuc3NsLm9yZz7CwHgEEwECACIFAlPevrwCGwMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJENnE0m0OYESRoD0H/1lEJXfr66rdvskyOi0z
 U0ARvUXHjbmmYkZ7ETkdXh7Va/Tjn81T3pwmr3F4IcLGNLDz4Eg67xbq/T8rrsEPOx5nV/mR
 nUT97UmsQuLnR2wLGbRBu24FKM7oX3KQvgIdJWdxHHJsjpGCViE1mIFARAzlN+6p3tPbnQzA
 NjRy7i/PYU/niGdqVcMhcnZCX5F7YH6w6t0ZmYH3m1QeREnWqfxu7eyHsIvebMgKTI/bMG8Z
 7KlLZha9HwrFXQAPIST6sfc1blKJ9INUDM9iK6DR/ulkw7e0hmHLqjWqYs5PzyXeoNnsPXJt
 69wiADYqj4KNDIdNp1RoF9qfb1nE+DM6rgbOwE0EUYAuwgEIAM9nUJAEpsVBYwK92PP9Mlo1
 /etXp6JgBI68sOCJxTwzBrbTzIlevVQXqW9zdODD6ObKcgGNuG+G6Nwn54P6McRpd2dxor9Y
 A+yaI0yT6CVnhxsXjwc/vuQ4tBAL6tfuMAXRVIeEVk22cKk4HJB68ImXCCRdyRi9HIE5iTrZ
 HsHC4sjAsirhlc0o8hU3gqkKh2Ehwa6+U8lzNx06hoFEZxIVRteoz1jzCHImF7EXztEcDIam
 O8uckVKAuKbJgFGkU3bkvNgWlc8Pgx4tRUNJGC1LE4nYqaSEwee1SpA/VewiDObj97PozCTF
 zRCUBCnSvaAlTnpA90TnODH7ar+L5aEAEQEAAcLAXwQYAQIACQUCUYAuwgIbDAAKCRDZxNJt
 DmBEkQs2B/96XB9hyFpX/bhu41YNr7nSA65dDi9d+PkMqvLppickG3VR4xXWywzEJTw6W2DN
 MyFO6mOtdXWgNdgDF7HKZYvHBr6pyttLAMP7BfWBvU7YY59uKmUSc5vl0NzsaSbx5PDSQEkS
 ICLI+/hIwuEXOb6Z7gOrX7F1uy83TmHFOOjD2mLl5isUzFhaLVk0fZSY+mCgg3/inbwb8g31
 91Ybk2LfXmndaEsdEzMLrT0g6wIgmybz6UdVuVPfSPGly0VWVAG1sNPOCpAuJpNV6+VxrdVi
 Ax3vQPbx3XzqDFS1ISlnd0qS/7RXwMuFDpVH/BDvzQcoikWnpRY/loPGkSg4TB7a
In-Reply-To: <20231017180600.GA10598@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: upcoming release of OpenSSL 3.1.4 and 3.0.12



On 17/10/2023 19:06, Solar Designer wrote:
> Matt, I'd appreciate it if you (or your team) would also be posting
> these to oss-security going forward, roughly at the same time with
> posting them to your project's public lists.  Also, more specific
> Subject lines on these and on the eventual security advisories would be
> helpful.  Thank you!

Ok. Are you only interested in release pre-announcements for releases 
which contain security fixes, or do you want to know about all OpenSSL 
releases?

Matt


> 
> ----- Forwarded message from Matt Caswell <matt@openssl.org> -----
> 
> Date: Tue, 17 Oct 2023 18:48:26 +0100
> To: openssl-announce@openssl.org,
>   "openssl-users@openssl.org" <openssl-users@openssl.org>,
>   "openssl-project@openssl.org" <openssl-project@openssl.org>
> From: Matt Caswell <matt@openssl.org>
> Subject: New OpenSSL Releases
> 
> The OpenSSL project team would like to announce the upcoming release of
> OpenSSL versions 3.1.4 and 3.0.12.
> 
> These releases will be made available on Tuesday 24th October 2023
> between 1300-1700 UTC.
> 
> These are security-fix releases. The highest severity issue fixed in
> each of these two releases is Moderate:
> 
> https://www.openssl.org/policies/secpolicy.html
> 
> Yours
> The OpenSSL Project Team
> 
> ----- End forwarded message -----
> 
