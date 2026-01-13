Received: (qmail 26117 invoked by uid 550); 13 Jan 2026 05:41:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16374 invoked from network); 13 Jan 2026 05:33:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768282420; x=1768887220; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MFz2B6TEb6NMxtIlw4ACLstv+lFT/BbjSXIsKGfPcaI=;
        b=eQXWY7xrtSm4v05AgwtrPOAKSPO+V8Yz7W/vCEgjcH4W3sBqbvKnClRC65x1u+Kokn
         jPXHQig6ZndRlenSQCsCj/Q88jibOf0nbjmexj4LjTHEhwj4pj7bZdooN+CbocpGzc8C
         89zd4fXSAV/I7C4geMVMuJhQB3rpft3XzQ56DrsnFYv/ZRYbQzdRB6+sSIvxfAhZfmYl
         TVpUo1rGYjE9uDXRxCjEjfK5D778CAKsCelRP/MH/AwVa1SvGcWGLR5CVwCT034il8VY
         dCYT8V7JQtPAkNHEFXovSPLFsua0Zdq36eKSMJl4XMry0jnTp252UP4QBsyRgIHMA+1e
         hHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768282420; x=1768887220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFz2B6TEb6NMxtIlw4ACLstv+lFT/BbjSXIsKGfPcaI=;
        b=WD4iHANDH9ZdSLCqioEMaDLrhnQm6SkIUFeZOO0WEt45D0OW7aFO/Ob72TBcMcHCq3
         MXFyedwFJ0ZLkEFjAryFxolEtZEjkCKrPIM4xNNOhjAwI1C458+FpIzmV0DebHWQjwNU
         FkRFVUWzb7SploOYqqqEtOAO5B3lwPEwYzLlAdzM2jXW9HSu7cjyqPgDuBFGpOeLeUXu
         RN3edpUgZxGY/g3jJKzUdZG2nSna+HjL5kZ9+VPmuyIA2b7AO61zDChIFX0H75K3C/v9
         K5TQvTR6CN4nGbQni+RZUeyXzXmAT3i1GjiAtNJsMdjvxBCXPuhwl+BhGfbNDR00hnWl
         JiTA==
X-Gm-Message-State: AOJu0YxiCdgHfS9q41x6OdzyMogorqUlY3YvbtZtNvNQ0O0/WKHBqY3k
	Uha8R6m0eeMf5h62eyRwzuXmJi2fMbMM7qo/suUeZ79e+Md3ox/r3ru9FOJY2CNv
X-Gm-Gg: AY/fxX4z2nBu48/GtopH5bG4qyogqsFyR79WC5isaKwkQEfuuQ0adbjmxiF006A8XEY
	bzV+rAQe6qnQVEr1CF9IAB9jHOAYgZ1knOWA7nCcruBbmjau2KvAT+FsOxgfdOsq0gmcZGlwWuL
	LTRQTaC/zE2M0F/B0WDpi7xLB2KvBD+oX79aKzf+yWefVfQXpUyeFZJg2iPVWnsX1Ay+gxjPMgn
	7m3Kxp8wx9nKS5mDq0WyYpQ1DhukdJsKgCy3CfgK11ADJ3AYEbOEu/iAMD7e8g2hQPygF0pvr4S
	QI5HEbLoyF4NRK8mNnSlqDzeJZaFjwHvrCYxurppXIzeFzl+4lwFYIC1ahaGgVuFXMLhRqhC3lV
	AUETiDaurNEeHzV7Aok+RVdEsp5HlbUjv8eRUPPJ56jx0D3CE0I2i/V+SIdiwIzSD5dVNUw87YK
	B7/tt2lOg=
X-Google-Smtp-Source: AGHT+IFLZlSWiQzHzBQHW1DbG1qSGe3EXt4HR4OSRKUx7M3eTo11XjauLyecTBF9P70UZrxqddqnQg==
X-Received: by 2002:a05:6830:254a:b0:7cd:b383:ce37 with SMTP id 46e09a7af769-7ce50bddba7mr11102505a34.36.1768282420323;
        Mon, 12 Jan 2026 21:33:40 -0800 (PST)
Message-ID: <6c34559b-d38a-49d3-8917-8ea3d235f77c@gmail.com>
Date: Mon, 12 Jan 2026 23:33:37 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
 <20260112142559.GA974242@joooj.vinc17.net>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20260112142559.GA974242@joooj.vinc17.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 1/12/26 08:25, Vincent Lefevre wrote:
> On 2026-01-11 21:09:55 -0600, Jacob Bachmeyer wrote:
>> Aside from the dubious patch, this is a good example of a legitimate bug but
>> bogus CVE:  how exactly does an attacker trigger this without either having
>> *already* completed a DoS attack (consuming all memory) or achieved
>> arbitrary code execution (altering the allocator to return NULL even though
>> memory is available)?
>>
>> In short, this is a crash bug, but not a security issue.  This is different
>> from (for example) a parser bug that results in NULL being dereferenced if
>> crafted input is processed.
> Note that according to the C standard, dereferencing a null pointer
> is undefined behavior, not necessarily a crash. This means that
> due to compiler optimizations, unexpected code might be run with
> uncontrollable behavior. And it may be difficult to prove that the
> code is actually safe despite the optimizations.

The issue reported here is a write to address zero causing SIGSEGV.  I 
doubt that compilers can optimize placement new to avoid writing through 
the given pointer without introducing undefined behavior in correct 
programs, since the contents of allocated-but-not-initialized memory are 
undefined.


-- Jacob

