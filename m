Received: (qmail 30560 invoked by uid 550); 7 Feb 2025 04:33:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1420 invoked from network); 7 Feb 2025 04:28:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738902527; x=1739507327; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOzT8029HiCOcE0gMpykd+wHotDdE3x+VNQRsiyrFmM=;
        b=PwAAVPE5YRKaIuUwYJ2RUJXP7QetTCD9OvxPbLA80iJd0QhqOcqMeY3d4Gc3Hcp1sB
         Fxzvr+RMJW7GJqrYpTegiBL7h2D3Rm39nExeAQNyiIpmt8b/k3UsDgPENfAznIhNg1on
         /+m0WbSdMlPPxhFTYP0fYVxrN/SLGyDWEMh6kQAxe5HU4X6FaurSXGSvpWouKyFY3HNA
         3T6DV/YUOClh4oB2R1f12L71tpe4f4PntYyLP/s4ygYfvh2BNnhfk015H7wsrhfzZbIj
         rUMnb0d7aF9IIMDgLCzZi3LlfA0X7buxtvCXQHRsscrmwzXHjRuKw4u0R7KuXopWg9Kn
         p3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738902527; x=1739507327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZOzT8029HiCOcE0gMpykd+wHotDdE3x+VNQRsiyrFmM=;
        b=iIO4fd9sGZ1mm1itw8rhraBeM6Y242dXAtUAtJSekvi7DxmboEPv9NQ+vc8l3JUyHC
         X9hfF2+jGcsqxoDH/jHBuFugyFnRkjCryr5GzTaTUYOEC8zvkGSlW4v982dyY/mxjlmx
         +4XEySoxAPc3CZn+SNnqF8kpRHQ/VAUyHltY7YIqL8+zB183uY2ChgR1nfppkCsXg6Zd
         8KMoNorOGflGH0w++u2HXuRLRsIVwkQFkj/rkIgmrexAXWORQ2xdiNJXNEOe+t1oq4mN
         7q6kTBcAyOkfwzNPg01bJdjMGjjPZ/Jz+KY5dvPTWApTspsQfH44sjgCKH3s2/QqTWri
         5iJg==
X-Forwarded-Encrypted: i=1; AJvYcCVcOIvfEDzIEtAaFwwdZEFbCSvdRzd67H3xFckof4D8PplMme7IrFdJuciJnS2og7cIw1TbaBs26xl+5mU=@lists.openwall.com
X-Gm-Message-State: AOJu0YzpxXy1F21NxU4FFwIbqHMm5GleZMsyRZ624n/jSxUsmksOjr8L
	EftN1EhH0SQ0OfsKjR18zzrda24g1BO7gdXgskYjISf+Q+LYS1pt
X-Gm-Gg: ASbGncsxQfsidr1/wFst6woi5k42VtiyQQ44w+7TXTFQC9yYxnj4WsKJocHeH5jOLBP
	xCJkJAeBcLZq/TposI0ffF3Uz2EUJHOEn85SCNXScFxGexis3fQT74ns0Jv7cvWCXh565JAQLFR
	SgbHsr8BX+huZPMTQt8tKfmOw1HxdK+gKwUcaB7Vb3y0qqxN1yjhwr94fSp0uHKXYEkmsvflS7A
	GrCcT7WonZkVYK4sNNGYJH7YFGZzbquoglxEndPzLCqJUxPtzMq1whjto79sODPV8nrxyZmPdIX
	0yZPFtd7MMdC
X-Google-Smtp-Source: AGHT+IElFNiaOelqFRW/B7fHXzJoALBEod46gn2lmc7DxvMK2oNACnUMPuqvVLe86seSDCbJpdjgVg==
X-Received: by 2002:a05:6830:4493:b0:71d:6543:e83f with SMTP id 46e09a7af769-726b87f5758mr1143659a34.11.1738902527570;
        Thu, 06 Feb 2025 20:28:47 -0800 (PST)
Message-ID: <1ac403a4-6ab5-4943-9cd9-ed3b8edde661@gmail.com>
Date: Thu, 6 Feb 2025 22:28:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: trinity pointard <trinity.pointard@gmail.com>,
 oss-security@lists.openwall.com
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
 <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net>
 <20250204101028.GA20864@openwall.com>
 <32e961ce-1088-4e21-803a-3539a0ceaa3a@gmail.com>
 <CANiTRwf0+j7AZGfURup2PqE-QG2WiWmKnmc0d8N8G7MAASPhiA@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CANiTRwf0+j7AZGfURup2PqE-QG2WiWmKnmc0d8N8G7MAASPhiA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

On 2/6/25 17:04, trinity pointard wrote:
>> If an attacker is able to control the hypervisor (necessary to load
>> rogue microcode) and the processor microcode, how can the VM trust that
>> it is actually verifying that attestation and not being sent down a "oh
>> yes it is exactly what you want it to be" garden path?
> Attestations are cryptographically signed by the cpu, and meant to be sent
> elsewhere and verified remotely.

That resolves the issue for the VM owner, but still does not address the 
more interesting question:  is there a way on current AMD processors to 
perform calculations that cannot be upset by tampered microcode?  (There 
*was* a subset of instructions on the AMD K8 like that.)

> The key used to sign (VCEK) are dependent on
> the microcode version, so it shouldn't be possible to forge new-looking
> signature with old microcodes (i would hope this hold would someone be able to
> decrypt a microcode, though i couldn't find information on that subject).

If you are correct that the /actual signing key/ used depends on the 
microcode version, then (logically) the signing key *must* be somewhere 
in the microcode.  If someone finds a way to decrypt the microcode, for 
which all keys required must be *somewhere* in every processor that uses 
that microcode, they would clearly be able to extract the attestation 
signing key.

I would hope that you are mistaken in that statement that the signing 
key depends on the microcode version or that we are both missing 
something somewhere.


-- Jacob

