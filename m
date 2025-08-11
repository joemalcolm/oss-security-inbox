Received: (qmail 32758 invoked by uid 550); 11 Aug 2025 13:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7568 invoked from network); 11 Aug 2025 01:16:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754874988; x=1755479788; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SeDoHhG9GK4fDpLAPq22jdT7zA8N+A50KLjWBMM7XpY=;
        b=PuxQrQoqDonB3JoRKnxWZfJ8DvuaDLbTUhfA2+/0dddZy9feVFd75SPWYo9dOXxt2e
         R49/fj0MXQ33FQSi19E8HLMl4YsyAX2GeQd1KWwREYeiYE/J/ELqbgap96Xr4iNZprGj
         124iqB8kmPVvrt7ueaxG8c48hha6JLAg3divCvRIJGv6+KH7Xc17avyxqRMeifMhFqRc
         Msi7DxZ6sZdZEpWar3Zn+BMiXcLxKlA+h1UZzae3NWDwWWbZMShpjUqOVh2GnFPtw7FA
         qkwJzWrxb3MHt0lr7kXRJ34uUpH6hBJGOc+jEe/gfZ3ZNEdxCmKnUicDlk7ZdoFpAyZL
         vJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754874988; x=1755479788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SeDoHhG9GK4fDpLAPq22jdT7zA8N+A50KLjWBMM7XpY=;
        b=cAZSG+g4ieS0b/6tjSZdjE1L4Kbgd7xGY+EAHEVNd3dkfGpD2q9pKHOlyhpzVKHXnV
         JygbyvLm3KAsHvjQoaOKQ6tvD59dHPhbhQ26oV7Lnnoe8fpaNYViqdihuZ5Gs2DffxCT
         zTHPZkK14DMQyRswmpul/pVNMqZAUmRocBvJtrefuYCiRPDLeZLpcNmr5lRWqXf8F4oB
         MJJ1l+kH0FMG+nNn313bN/CNyD5N9fKwOyP8T6woYVq5cms4z50t/tMGDfibJ3EiRhsX
         URiftQEMAehQMOLkFxo8f3DCcuUI1aQ1N1jAfaP4TjeQqV4o1V9bf2STkqll90d6k+jJ
         zpJw==
X-Gm-Message-State: AOJu0YxVciARSfYjGcdf2FfQqMBAizTz0tWITV+53dLTjRbSzZqfA9J0
	R+LOZCex0DEDxkMXGCOETcuHdsiJeb1iec9tXxHpUGjzJJ1zAc14HglZ
X-Gm-Gg: ASbGncvlocmKmf6iBU8CLNbOfgIgi5LgjSCiF0rDm9OH7A7G6Zv5I9840ePPe2uP8MK
	5UjdoqqnmzZ1lMrkXddbS3nJOuYNnq/eXObtDID7w2kIBaibFSXffS2KnmdIFbMWoF2MLOaILF2
	SAUXpuTAZnOHFkZKwDkbGk/gdUxve9Ag5eSAeT974ZnYzOeb10CymXgupgqQrocgjFcreUxl2mP
	/gvMjfqb1rZBUXAK9YoJST1SsRJhp/4tdwmdPq9wdQ/oILQEfeMrcJOSK4Ky+H1OtSh9Z+yf512
	Pnnm7g/xfcffJYyxsnt62uaA5N8en/HZ6L3+FX2Y95Li9cKDWSw0a7gCM5SRKGJz+bv/G+Q3T0T
	3FVKKvir3Wxs2i09x//c=
X-Google-Smtp-Source: AGHT+IFyl/D/XLg6KH3Ts0dhTG36fbOOyPJUfsf4RsOmoAWdrWsCYgnBTynppRynVZSQSao+RJ/PPg==
X-Received: by 2002:a05:6830:6408:b0:73e:9d8d:ba8d with SMTP id 46e09a7af769-7432c77b19amr9304137a34.9.1754874988082;
        Sun, 10 Aug 2025 18:16:28 -0700 (PDT)
Message-ID: <13b2d236-d2cd-4c70-9040-328127a0a88e@gmail.com>
Date: Sun, 10 Aug 2025 20:16:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: lunbun <lunbun021@gmail.com>
Cc: oss-security@lists.openwall.com
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
 <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
 <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com>
 <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

On 8/10/25 19:04, lunbun wrote:
> > What does 7-Zip do if the symlink implies a nonexistent directory?
> > (Example:  attack targeting ~/.ssh/authorized_keys is unpacked in
> > ~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh
> > which maps to ~/Downloads/.ssh which probably does not exist.)
>
> If a symlink targets a nonexistent directory, the write will fail. 
> 7-Zip by default will print an error message, like:
> ```
> ERROR: Cannot open output file : errno=2 : No such file or directory : 
> ./malicious_link/file.txt
> ```
>
> This applies similarly to other filesystem errors, like insufficient 
> permissions or unwritable directory.
>
> However, 7-Zip by default continues with extraction regardless of the 
> error, which is why an attacker can use this "shotgun" strategy. These 
> errors, though, would hopefully help notify the user that something 
> suspicious is happening.

This at least prevents this from being a "silent" attack in all but the 
most targeted scenarios---and in those cases, the attacker probably 
already has another way in.

> [...]
>
> > Can the malicious link be silently replaced or does extracting a
> > malicious archive leave links to every directory that the attack hit?
> > (That could at least make cleaning out the attack relatively
> > straightforward.)
>
> I could be wrong, but I don't think there is any way for an attacker 
> to silently remove or replace a malicious link.

If the link cannot be overwritten (another entry in the fake archive 
with the same name?), then there are immediate indications pointing to 
everything the attacker planted.

Thank you for answering all of my questions.

> I don't know what the general policy is for releasing exploit PoCs 
> after a patch is released. If it is okay, I can post one on this 
> thread (publicly) so you can play around with it.

At the original announcement, you had basically released a PoC, there 
would be only a matter of programming to generate malicious fake archives.


-- Jacob

