Received: (qmail 9520 invoked by uid 550); 21 May 2026 23:36:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18122 invoked from network); 21 May 2026 20:53:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1779396815; x=1780063481; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=9VEPZwRDaAgmnZ38iSFRz1Ls/crpw0eJfsnsY7Gm7yI=;
 b=YhDb/9EmNn7EiFbj7In0Kw40kuWAhrcGX2AfRibpVVjC2Au+VDcRuba4lAWaO58xVrBgp7R7
  Wq2XoXdBUE6TQjPBC5fENmpgsSmOez51ijyKNwyBdLqyZEk2J6YkqQoceo7vTD023Biddn+5Cp
  0WGlNyT576XncNRGFP4qKN/Rndpbo42Kj6w6kb39sWuvyTC+Q3+wwBlv54kDTYOSip+mDQZK7S
  4jS0w+pTG6heIM9ChDXiVjPo0d++GGShL8A6fXntT/ZVz5537yJPhLBLGPnWUH/1Hh1vxTxV+F
  XlSliuaZfRSJlmCvILYppq45pyEBlNwZJjOq/BI7zDezqs3g==
Date: Thu, 21 May 2026 22:53:33 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260521205333._LNHlSaf@steffen%sdaoden.eu>
In-Reply-To: <63a2f265-6bbd-4799-b33d-1e9939d5c004@frasunek.com>
References: <63a2f265-6bbd-4799-b33d-1e9939d5c004@frasunek.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.10.0-alpha-32-g06ea4d6fbf
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] CVE-2026-45250: FreeBSD setcred(2) stack
 overflow -> local privilege escalation (FatGid)

Przemyslaw Frasunek wrote in
 <63a2f265-6bbd-4799-b33d-1e9939d5c004@frasunek.com>:
 |A kernel stack buffer overflow exists in the setcred(2) system call
 |introduced in FreeBSD 14.x.  The overflow occurs before any privilege
 |check, allowing any unprivileged local user to trigger anything from a
 |kernel panic to full local privilege escalation.
 ...
 |   Not affected:
 |         FreeBSD main (silently fixed in commit 000d5b5, 2025-11-27)

You mean 4cd93df95e (2025-11-14), then got fixed by the mentioned
due to some other problem.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
