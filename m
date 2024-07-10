Received: (qmail 11288 invoked by uid 550); 10 Jul 2024 21:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22263 invoked from network); 10 Jul 2024 21:44:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1720647854; x=1721314520; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=mVUm8Uw5XbKVw+WZag9axKtgewzdX4qG3ZpS50bQUuQ=;
 b=gJ6UfoMgLjinhnqpTG/utvKFOOoFXIeBheaMphuNCLTrgZuEtaBYTb68KXnPfMFM5QLUvmNH
  dN3vxrV18SPkUdzcWSpJndYU1y8l8nHj+76uQMgsb2E7GUWtTVixNLnLsAAYZDNnZv2u0iJGYC
  sOW21e6Hv/TDBMiWJrlkkY0wLIKejnADHUDuQzLr+wjFV7EFyFLcxSdKmTQ5vaa1I3poe+rh66
  X9ys91F3NXzonzQPcMBP7B3Rku3e3ROIr3mRrqCMQjItwYe5KP11e++TNoEwE6XT1Pu8dz41tC
  F8TkWPNpswIoqeFWeDJOwOH6WDDrlel4Ndn6ih5lzHPMN/zA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1720647854; x=1721314520; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=mVUm8Uw5XbKVw+WZag9axKtgewzdX4qG3ZpS50bQUuQ=;
 b=HGpoZ74TyH0DuH4AQqBQQ0JtZBcREjtTqim22ZfaSVH5t5RRAK1+EDXK0tVRv+xFNU/QD6po
  Sb+aYIjxJyMuBg==
Date: Wed, 10 Jul 2024 23:44:12 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
In-Reply-To: <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] ASLRn't is still alive and well on x86
 kernels, despite CVE-2024-26621 patch

Yves-Alexis Perez wrote in
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>:
 ...
 |mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) = 0xf7df\
 |3000

I thought on Linux MAP_DENYWRITE is actually an ignored flag.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
