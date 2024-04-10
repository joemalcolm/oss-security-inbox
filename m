Received: (qmail 1615 invoked by uid 550); 10 Apr 2024 11:49:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17485 invoked from network); 10 Apr 2024 03:13:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712718807; x=1713323607; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BJy+jLc84NnjUNOcGuw+w0ewid/JdRwcPZYV3jIBh0E=;
        b=JkxTQOG+gFq/BeBIt1o+g8NImKORLeXUdSRDZ0R5yDLsJ64w2fRIX9+Ru/eNX/Z8gC
         f09LyfYF6cVJYJHRddInh5UkPYcvm23IhTw2xZRAeJ4daGbAWAXdCPUmOiTlFOjffjxT
         tl9wTxeUBOwJYjz4J97KSyZTtI8K4amVjGid80DaMHmLhVxaetS3G2OADzgLuqruuYkE
         M3h2+rZDgc64NPyx4A3Ma3uwK6Mm0IbYjcbJT+pVypqT6Qcp8eajxu2hS7eiFzpReiZf
         mSZu+OP/JOCvhXUuVNjs9kHBAa92wRKhRINjdNNCNotiHNN6kcMnLJQfyoBubhnWNZHB
         g3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712718807; x=1713323607;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BJy+jLc84NnjUNOcGuw+w0ewid/JdRwcPZYV3jIBh0E=;
        b=ITI0Y8bn+YjEe+7afPdnEMfHtTVOtCuXbIyk5pdv381AN8zJTq3LSlazwiRpJoDVil
         b+eX0y0MSh2OcPfu9GuL00maOsQ9xLzk6pm/2bFyfmCTRDbmNQFcoJWIDSGSb/UofOzm
         Qxs3I2DwgU2QFZhbf4PE20EORlWEOe4tR+fo966ZYuN7mPu624YLRsyTe6p2YvKA+QtB
         HgCmFNEhzEA+3mxdBZk9fCRkl6sEjA9tn0louNpaZ5NxIyHouwil2RXuTyCXGGne92vs
         V33IsplOlyvVOETxxw3x5m8w83RZQ/K1Q3hjNJ3aEJC+mbka/eQxDSlC5do4fZjJ96fW
         D3rA==
X-Gm-Message-State: AOJu0YyJGevoowy9KIRZc6KgBQ04aq7DqUvvim29FOrgrp0XmJdS5pHq
	PUXl/CZkDVeA/lH3//MA5MgfzmvfZ1PVNoilXWe2QHyXye/SuMzpLH5q143p
X-Google-Smtp-Source: AGHT+IFFfm3MpHmJ/nNs4LPZgVGRoD9fjJ+RpH2BnxPKIiPpfVARbI+4udBpdrBGwVWltD+9IDkI2w==
X-Received: by 2002:a05:6870:aa8c:b0:221:9c97:69eb with SMTP id gr12-20020a056870aa8c00b002219c9769ebmr1899784oab.50.1712718806626;
        Tue, 09 Apr 2024 20:13:26 -0700 (PDT)
Message-ID: <661603D4.4020908@gmail.com>
Date: Tue, 09 Apr 2024 22:13:24 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me> <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net> <6614BD70.8090200@gmail.com> <20240409233648.igiak63z7ep2nmco@awork3.anarazel.de>
In-Reply-To: <20240409233648.igiak63z7ep2nmco@awork3.anarazel.de>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

Andres Freund wrote:
> Hi,
>
> On 2024-04-08 23:00:48 -0500, Jacob Bachmeyer wrote:
>   
>> I am not so sure about this.  The original discovery of this backdoor
>> observed a slowdown in refusing a session for a nonexistent account using
>> only SSH publickey auth, *not* SSH certificate auth.  Reports have also
>> suggested that testing began after common botnet scans were observed to be
>> causing sshd to use an inordinate amount of CPU time.  I doubt botnets are
>> presenting certificates either.
>>     
>> I am unsure how sshd would call RSA_public_decrypt in those situations,
>> which suggests that the backdoor blob is more complex than we currently
>> think.
>>     
>
> The slow part of the backdoor is *not* when actually calling
> RSA_public_decrypt(). It's the "initialization" of the backdoor, which happens
> very early during sshd startup, well before reaching main().  Note how, in the
> initial report, even "sshd -h" is slow if called in the right environment.
>   

Yes, but the initial report also gave timings for "ssh 
nonexistent@localhost", see the quote below.

> https://www.openwall.com/lists/oss-security/2024/03/29/4 :
>   
>> In fact, openssh does not need to be started as a server to observe the
>> slowdown:
>>
>> slow:
>> env -i LANG=C /usr/sbin/sshd -h
>>     
Also from <URL:https://www.openwall.com/lists/oss-security/2024/03/29/4>:
> == Observing Impact on openssh server ==
>
> With the backdoored liblzma installed, logins via ssh become a lot slower.
>
> time ssh nonexistant@...alhost
>
> before:
> nonexistant@...alhost: Permission denied (publickey).
>
> before:
> real	0m0.299s
> user	0m0.202s
> sys	0m0.006s
>
> after:
> nonexistant@...alhost: Permission denied (publickey).
>
> real	0m0.807s
> user	0m0.202s
> sys	0m0.006s

This seems to indicate that sshd takes more than twice as long to reject 
a login (using SSH publickey auth, /not/ a certificate) to a 
non-existent account with the backdoor active.

>> In fact, I would expect sshd to reject the connection without ever
>> attempting to verify a signature if the requested account does not exist,
>> yet a significant delay in that rejection led to the discovery of the
>> backdoor.
>>     
>
> See https://www.openwall.com/lists/oss-security/2024/03/30/37 for the path
> leading to certification validation before certificate validity, users, etc
> are checked.
>   

Yes, but that is for logins where the client presents a certificate, 
which I understand that your client did not, only requesting "publickey" 
auth.  How does the backdoor have such a large effect in that scenario?


-- Jacob
