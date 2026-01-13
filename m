Received: (qmail 19998 invoked by uid 550); 13 Jan 2026 16:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17408 invoked from network); 13 Jan 2026 07:20:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768288812; x=1768893612; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PUMfTkqP3JdTyWQrpXQCO8UtmfuKBFWKaB9PgPs62iA=;
        b=UXzp+f8PtVGXvWtlgmSSEgG8PAElCrVof+fK3XxjlaIXX92LlpdjBc3pLHnWou8b9q
         pMLRV8ngmko2JHLV9oe60QNQaIykEpXfs+5Ks8IQ/E/cem7CTXdEU9NAXyrKmgt6ETzI
         h7tXjxAfr5QYl8kUicHvUeFykcCbW/nJFW3Bn3sbYwUlJJERRCO4RFTKl4IvFLHH0hoO
         nK1kgz90H4JJXTAiGxkwkkXOttNnMlvV9gMpis0uvGHEdkL+X+ML4rw7lsCqTnKI5aEQ
         eUWr7F4ziwwk0D1yAuVJgUwu/gQt5H3e8FUmNpsI8xpQ/d5qwjaFPJjlGuElDtlhcmlk
         q0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768288812; x=1768893612;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUMfTkqP3JdTyWQrpXQCO8UtmfuKBFWKaB9PgPs62iA=;
        b=q9ZemVpuXVfY1iEh+TMD4UO0e1fzVwIF6i/xP34kWOijVD4xj+55n6z0FLCpWPYAsG
         I3g5BwN0+kd77BwvpZevfhg2RmzZ/b9QGE8ROdaw3cDHroc4sWMNyEac8MdQ3Kq5rk4Y
         +dSd9fOmCAg/LHMOeU7t5DIw+x7tN84ceCtZg81JUsp4kxpYfhc8zu5MjKmj3eg7cyGm
         zv3CzP5JXicaBqD5RZAQ56+TKA99I6lxJMi/lmGAHw4OYoEKlDtoKFDidIpwNDKI8JMk
         MNpxYoIIPXB2Opq+w15yWkbodrX0CFoitdjcDdmQCWnLsV/MccDWgkB72UToKr3C4RJD
         bJkQ==
X-Gm-Message-State: AOJu0Ywor4ztV9++L8mGsvWtl9Hjyu1bTSeQJtwdIODGpOFaPbbIqvOE
	fBBKU6GPPDhjGrrk/ur2QZtqFDWgsdO2Cf1gpuIiLJw6vEN1dcKVVN5MY/dxxchH
X-Gm-Gg: AY/fxX5VMZtZwaBHtyAKGgy/J0q1BcZSQ0Su7CL9GSfQzh/snpLgY70yHMjRZu9vlpy
	OKDFTnMxOl0kEwNElQObE2vvWURTPwv1zBkH2EPLasb73G9wLULxu/hAIP/BPaBa+LT7J/CBqse
	NjmSzU5rqxCQF+Ez9jwo3PIP5ertC51uuGUvJeOfdpRCG5w/4UjUYt9C7ElVHnGh6gFvMlf9bCk
	1erf8dCqijUYxkuFmBGdM3jWAur9FEySZ8EaF7KILv+OU6GyvTKN2iPKUsguVsIbJLNfEhNbAY5
	VYQLwWXf6Y0rUH0fgrM2MDYl6ChQEdU3FIZCHifkW3LrpMX5kMhTX6/fQCENa1KzBmWmmIrsHHy
	VIIcszuFELXD8UgWFfmdz5xjN3ZWIq/94IG5+6KatZhrJvGN4KBQSIOjtb9+Etwo6BBUOj7hQqW
	UCD0USKCA=
X-Google-Smtp-Source: AGHT+IH3qDEyW5JtOyi/dniWBMyE55FjAXCM/CHY5snsM6PZTjAEQiGCABu+8/L2+X2qMMjt6xRduA==
X-Received: by 2002:a05:6830:901:b0:7c7:586c:846a with SMTP id 46e09a7af769-7ce507f846emr11991795a34.0.1768282415287;
        Mon, 12 Jan 2026 21:33:35 -0800 (PST)
Message-ID: <5abff9bf-99f8-41ad-a0ee-0f0b072d7910@gmail.com>
Date: Mon, 12 Jan 2026 23:33:29 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>
Cc: Alan Coopersmith <alan.coopersmith@oracle.com>
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
 <9151rn19-0on4-96s6-p3oq-qq07188p9n0r@vanv.qr>
 <2026011249-radiantly-scrambled-299e@gregkh>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <2026011249-radiantly-scrambled-299e@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 1/12/26 07:43, Greg KH wrote:
> On Mon, Jan 12, 2026 at 10:42:33AM +0100, Jan Engelhardt wrote:
>> On Monday 2026-01-12 04:09, Jacob Bachmeyer wrote:
>>> In short, this is a crash bug, but not a security issue.  This is different
>>> from (for example) a parser bug that results in NULL being dereferenced if
>>> crafted input is processed.
>>>
>>> Are we now using CVE IDs as some kind of global bug tracker?
>> Isn't that how the Linux kernel works these days,
>> as per <https://docs.kernel.org/process/cve.html>:
>>
>> "almost any bug might be exploitable to compromise the security of
>> the kernel, but the possibility of exploitation is often not evident
>> when the bug is fixed"
> The kernel might be a bit "different" here, given that any type of bug
> that happens at the level of Linux can cause a system failure (i.e.
> vulnerability), while I don't know if harfbuzz is at that same level
> (i.e. does it claim to support any invalid input, like the kernel does?)

The bug only occurs if allocation returns a NULL pointer in a context 
that does not appear to depend on input at all; the attacker does not 
get to cause an attempt to allocate HUGE_VALUE here.

If an attacker can craft input such that millions of 
"SubtableUnicodesCache" objects are allocated when normal processing 
only allocates one, that would be a security issue leading to DoS, but 
that is not the bug reported here.

Such an issue would also *itself* be a vehicle for DoS by allocating all 
available memory.  This NULL pointer deference would make that 
hypothetical DoS harder to exploit by crashing the affected program as 
soon as memory pressure is extreme enough for an allocation to fail.


-- Jacob


