Received: (qmail 26145 invoked by uid 550); 3 Dec 2025 13:28:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20197 invoked from network); 3 Dec 2025 09:12:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=greenbone.net;
	s=MBO0001; t=1764753137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=dCSUn93eN1gZAxBHO/JZRsjwBv3FUNJAiShGmXJH2L4=;
	b=yYIqMf5qxMqKad9peDt/fc+jzjDMHjTo/8V2aygOUshOsy7KFX27Ns7AmdwpmU5pGOkTqQ
	k0t8hnPOFS6Eiysf8MnDwDVed0dCnS2T/TAj8O5ZkuTfAEScQ9Jy6ieHa2tnf9MUlDpS/Y
	BGn/47ymtzVTfRWo4jS/NhaL+cfPFeK2us0GZUwHVrEj7U/O+cTXMb27PvQ1S45kZ7wqez
	vlDocHAYCH+cIVP2bu5VXiFCq/ZbmXy2sThdPJKpgzge2tYOIGkgguDRq+Su3V+uS713Ax
	XaX4014GDqJnDZ+wCasRXA3Zs9LaHYKBqmGsDHi4DTpvKeT3027ek/Cnlf7SXA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of christian.fischer@greenbone.net designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=christian.fischer@greenbone.net
Message-ID: <702d6b9c-136c-4921-9b5f-481b3e287057@greenbone.net>
Date: Wed, 3 Dec 2025 10:12:16 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
Content-Language: en-US, de-DE
From: Christian Fischer <christian.fischer@greenbone.net>
Autocrypt: addr=christian.fischer@greenbone.net; keydata=
 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
 nSh/BvVF+Xp6Dow=
In-Reply-To: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 10/27/25 5:34 PM, Alan Coopersmith wrote:
> Among the new CVE's published this weekend were these from the VulDB CNA:

only attaching here as related (not from VulDB CNA) / another example:

There was another questionable CVE (CVE-2025-45311) reported against 
fail2ban which seems to have been turned out to be bogus / nonsense and 
which has been disputed in the meantime:

https://github.com/fail2ban/fail2ban/issues/4110
