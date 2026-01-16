Received: (qmail 26294 invoked by uid 550); 16 Jan 2026 15:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18336 invoked from network); 16 Jan 2026 15:41:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768578072;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=oUGroH019tDWSmeuntAFcVHfOglIgaifbWUXHIT2Frs=;
	b=Rp7qvqEZHgQl80D3CpSs9nUAvMFjY7PwNk8eKSw2vTP9z3UoVc3Bj55DeOUl+ogbEJXBgj
	jbVVgcUkrSCo6N1pO/Ux6/6yNSyexZCBWUIvujz3C7bzJ4YFfiyEe3Prai7XaNDUMTKzIn
	JuNsTfIjT7AHDFux87+zFmvclb/GWUY=
X-MC-Unique: 7b_-3o0cPE-M6VtsVD3-zA-1
X-Mimecast-MFC-AGG-ID: 7b_-3o0cPE-M6VtsVD3-zA_1768578070
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768578069; x=1769182869;
        h=content-transfer-encoding:organization:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUGroH019tDWSmeuntAFcVHfOglIgaifbWUXHIT2Frs=;
        b=Z8wQHTZyE1B7rj2ssMIHu8bHyx5HoisZ3IgaFab5lAwvlLaneZ3bck5aTfoPYlq1lh
         Zqd2fQlrCpWCqRUDBpnknnVBGI09GX43cNzZ+Moqh01Uj5wkwHuqPGK3EhrLkPTjYf/I
         aKeyX7QKQAhotPGQLEZKzizYtwk7rqcrEY/ftohwUzKsVFHQEiCCbIEfSX/JOx/jImDR
         itcAytvhwY5SGLFZjGbqOR394/H0xeiu0BF1wH4ZPPD3XFpDXnzEzUTk8l53EAuBX3Ui
         ancEWKsnTaLs8ltBGKAdZCbs3CBo0ndFDPbb/jjoXfRXHrNoRG0lSAbKl+RwRI/VkrN2
         rURg==
X-Gm-Message-State: AOJu0YyyQLSttZxKxfmyCFmd61U34ILEwdLo9E/rkul4UEXU8qqZyAV8
	7AhRYCHsfEFpPCr6MtZ94NiGmkspMRNbS8fKUt2jL+RfyTpE9dLq3/8VBodnZUcHkozE2EyUbzh
	4g5zTSf8EKYN4sENNIlRmRVSnK7NKWw/QakvDwA61WJWix8dKlOUKmSzjUxWf5OvpfAt3XDmb/Q
	TBV1sYx9mpgCwBBOw73rJk2B01EMgI0Zsq77xQ9sW27qB2CJ9+mLs=
X-Gm-Gg: AY/fxX6aQrZOtOtpzDXnSl1rSoqSvFU8smwsw1Q2o7ijursgbLIthT6ddUZNSaaP6NA
	phrmkUq4Nm2Baz7U1eY1bmxx0E1hmJsHUQDQ9/TOTH+7tUzG3oHMQVOYWXkNpIr0BuhDNjvwPIh
	FReeGjKJzE4xJPBI/Ts4FSMefvOMRQ6ZHtqWLpBsH+dhcqdA6QdCeD0NvKdnjKU7IBe8Htx5QMZ
	mRVXMMNRUiMXWHPKVa2fpHtWq2eZAzAmX+vKi8YU3n01bSZfd9l0gWdkaKfglx+DaZQ9KBz6lSU
	2BwdhI4nUvv4lA8Bekwg+UDZkNs3XF2hg9k7i5F6FJkCYXtT2k8UhxfDGFrdrPsmT4lnN1wsskn
	lMm6H+O2JRKrqAew/+RDaksAQZNom55fmjLLQznmBsZMlmNJe+MbLvULpvAQoKtB1vTZqeM/yr1
	Ai9dDjMwV8mQ==
X-Received: by 2002:a17:902:e552:b0:2a1:3e15:380e with SMTP id d9443c01a7336-2a7175a624dmr31146605ad.34.1768578069293;
        Fri, 16 Jan 2026 07:41:09 -0800 (PST)
X-Received: by 2002:a17:902:e552:b0:2a1:3e15:380e with SMTP id d9443c01a7336-2a7175a624dmr31146375ad.34.1768578068783;
        Fri, 16 Jan 2026 07:41:08 -0800 (PST)
Message-ID: <66157670-62bf-4c5e-a175-71c53b67a7dc@redhat.com>
Date: Fri, 16 Jan 2026 10:41:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3EaMUfIRPL558062uZDimzfHF5vAqHLsUYW1x9i17Gc_1768578070
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2026-01-16 (part 2)

The following security advisories have been published:

GLIBC-SA-2026-0002:
===================
getnetbyaddr and getnetbyaddr_r leak stack contents to DNS resovler

Calling getnetbyaddr or getnetbyaddr_r with a configured nsswitch.conf
that specifies the library's DNS backend for networks and queries for a
zero-valued network in the GNU C Library version 2.0 to version 2.42
can leak stack contents to the configured DNS resolver.

A defect in the _nss_dns_getnetbyaddr_r function which implements
getnetbyaddr and getnetbyaddr_r in the dns-based network database can
pass stack contents unmodified to the configured DNS resolver as part of
the network DNS query when the network queried is the default network
i.e. net == 0x0.  This stack contents leaking in the query is considered
a loss of confidentiality for the host making the query.  Typically it
is rare to call these APIs with a net value of zero, and if an attacker
can control the net value it can only leak adjacent stack, and so loss
of confidentiality is spatially limited.  The leak might be used to
accelerate an ASLR bypass by knowing pointer values, but also requires
network adjacent access to snoop between the application and the
DNS server; making the attack complexity higher.

CVE-Id: CVE-2026-0915
Public-Date: 2026-01-15
Vulnerable-Commit: 5f0e6fc702296840d2daa39f83f6cb1e40073d58 (1.92-1)
Fix-Commit: e56ff82d5034ec66c6a78f517af6faa427f65b0b (2.43)
Reported-by: Igor Morgenstern, Aisle Research

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

-- 
Cheers,
Carlos.

