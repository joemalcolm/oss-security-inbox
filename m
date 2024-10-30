Received: (qmail 17761 invoked by uid 550); 30 Oct 2024 02:13:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9510 invoked from network); 30 Oct 2024 02:09:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730254146; x=1730858946; darn=lists.openwall.com;
        h=in-reply-to:from:references:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKxu+6PfCSD+ryVeXKw5bazxzpaQzRgV8YZdqe9+r8w=;
        b=WSStlKyNL4TsoXw9Jn0VtT7MmCT1rYi+B9qCLTzeSBds2sqWdwtVZPW9ANJH5iFBZW
         Fbdh3r1v6o3TQbUJO3QXzSKsGbdG286ptp+sssANTlhtUfD/2Bq81xH1tkCoJO5Uuhoy
         o0Ps5Av4uz2MMRQW0bgNumARGxB9uApPWP9c3+ZzqRAcjBRtun3XLdaZcR754s9TVo9B
         HKS1O6nDgFeLyNpV1eWEtwbQDpE6uN/kzAT+iU3fqgsANq3/lzw7oFAb7DYORrlj7fiC
         2xibSO74l/M89aafg6z3inBTivan1/3OtBXbgzPv0MoIM4JbTR2byrdluPatifcTnkmZ
         AvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730254146; x=1730858946;
        h=in-reply-to:from:references:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MKxu+6PfCSD+ryVeXKw5bazxzpaQzRgV8YZdqe9+r8w=;
        b=OOOnK2yXa/0qu3QTwQ2CcEsZ6yXNR+4pqq8tzitup6mZCifbDyGIM1E9WSdO2lxmV4
         9FncVecyHKQ0tWT7NSRiWnkFCzDeEnBJw79YAutsEJT9xuU3iLCdYePpPvJMi4IB3oIG
         F99ReBwlMPfhLu78jW6nsLiJFjQ9hU890/NE1dor4mSVGmtm4L7RPj9nmluTCAhmQOdC
         7f42ZqJYISvVvSka8lThe2gM+SDM+9E7gGwwtOfndWYGuMwejTGoekMvueJ2PCNevT9P
         pDyA96i7jsEWLBdglQznUkVmI2ZKMED42JBe8HSKVN8fDAPoV5NYgzEKDzLgoNzMdWt4
         Fi1A==
X-Gm-Message-State: AOJu0Yx2EeOyUVAr3XH7f9KwW+kuiu0bCgZEKGjOByZsT1GtM0+G+yGE
	QoXfdZ5TVWCgnDZumzC5mX08xhwnXvHlvVj6wLXYu269U7l3tCSNUanEcQ==
X-Google-Smtp-Source: AGHT+IGQ82O7EDQrwHex7PzqYiDo6fwAtMRh8jvVMZtnYy09nPXb28dEU9vIomQK+hcon3SSa+LXEQ==
X-Received: by 2002:a05:6820:1b8f:b0:5eb:d1ac:21c6 with SMTP id 006d021491bc7-5ec23a66c3bmr9552275eaf.5.1730254145146;
        Tue, 29 Oct 2024 19:09:05 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------r2C0sLBxAgu7kUxyGHCXkfKR"
Message-ID: <95ddd38e-2e23-4dee-b03c-a376d8cb9814@gmail.com>
Date: Tue, 29 Oct 2024 21:09:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <AM9P192MB13169D3C23104FC22ECCFD3AD74B2@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <AM9P192MB13169D3C23104FC22ECCFD3AD74B2@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
Subject: Re: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero on
 shutdown of TCP_SYN_RECV sockets

--------------r2C0sLBxAgu7kUxyGHCXkfKR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/29/24 08:03, Joel GUITTET wrote:
> We would like to ask your advice about the CVE-2024-36905 (tcp shutdown vulnerability).
> NIST indicates a network vector while AWS and Red Hat indicates local attack vector.
> Our cybersecurity team has difficulties to justify that a local vector is appropriate here.
> Can you help us to understand this specific point for this CVE ? The hypothesis we have is that a TCP socket need to be open/closed quickly, and maybe it's not possible remotely ?

 From my understanding of Git commit 
94062790aedb505bdda209b10bea47b294d6394f 
(<URL:https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=94062790aedb505bdda209b10bea47b294d6394f>), 
this appears to be a race condition where a program (running locally) 
calls connect(2) and then shutdown(2) without actually attempting to 
transfer any data, with a further constraint that certain packets (I am 
unsure precisely what) must have been transferred such that the TCP 
connection is half-opened.  It *might* be possible to cause this crash 
remotely if a program attempts to set up a unidirectional TCP connection 
(achieved by shutting down the undesired direction) but I am unsure if 
any such programs are actually in use.

I would need to further study the Linux networking code to be sure, but 
a comment updated in the patch seems to imply that this is an edge case 
that was previously believed to be impossible to reach.  I suspect NIST 
labeled it "network" because TCP is involved, but as of this writing 
<URL:https://nvd.nist.gov/vuln/detail/CVE-2024-36905> says "This 
vulnerability is currently awaiting analysis." so I would expect NIST's 
indication to be revised after that analysis is completed.

Again, this issue is probably only remotely exploitable if the host is 
running a very unusual client program, but a local exploit can supply 
the required oddly-behaving program.


-- Jacob
--------------r2C0sLBxAgu7kUxyGHCXkfKR--
