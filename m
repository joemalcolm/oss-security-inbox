Received: (qmail 23588 invoked by uid 550); 9 Apr 2024 13:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32094 invoked from network); 9 Apr 2024 04:00:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712635250; x=1713240050; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZdaKxQf2eGw+pxcSOCaMuuehgGGg4F5ezRMwbnRF+CU=;
        b=YbwZw8hWEMkmUHjWHw/CzTzkzmVzZanz8TBN4l3Wx9kS2QKhvUNVkc7PxcjOKitAn5
         LTPUx5dtdjv9MnyAEnPLsUJ7+gyU14nItiZvUh5Yntfo6kZ4LNpQMoZZspRPbWEFje++
         U6KwkttAMbRUJ3bqPPpniovRxCuSzxBsFhw5On+AqFzhQV6F5Az+NUN+vMlHvUOFZWc0
         uuwkXzVkEgpy8qY0DeXTQtiP58cYpbO8vgwbM36Gm33dqy7ZtK4dKeckedifjuPv0yG/
         Zf6NXjYukV+GZ/+lKy6rdKVPXZiO0eI5qLMaplifclCquonr30roQ9HktFwpEj43YJiD
         o+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712635250; x=1713240050;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdaKxQf2eGw+pxcSOCaMuuehgGGg4F5ezRMwbnRF+CU=;
        b=OVDVOEO+arPlaa/elSq8dRgQPaGF5PNZHXEW7oHplDB9JM6lzn1MWjn6Cu4inNTmOY
         boe1mparQ+w8hjW0/ZuX4nfn67Bxf9ujUvm55cCrLTZTjmwIMxxIhCL8oQBoc1jofva3
         37LMENPKwdQLgMZShBgq67Tl68KnU2+aTQKV+c5x4j8ef/lyPpaqHgPEzOP2/ZUQvV0f
         8RPK93FZlgDWTpjKl6I3WqoMl3UNiDzthEWBSnZzlZVhSHIUxHi2N8Sc4oQM8zqGdfSY
         RbI7u7ZpLO7TAJk8+r42ad8dPnY6y0tHTaau/7r4U1X9IAqXMf/jY5K2UVcHGXY/PSa2
         qx2g==
X-Gm-Message-State: AOJu0YxqzfYr3yk64t/Jq9U7nZ2PIyfN/x75ti6Ya/01lzZgcQZr/DMd
	iP35K3mlE9H7gLyoAZ1MCO33ZxoB98u1xw5rLQHJOMn3NZhGxx8rZ7vJIvsWPlg=
X-Google-Smtp-Source: AGHT+IH1LqOBxkorfCHDHo/ZfpK971pxDOOKX0FBGNys9GTLjYvIma16ptNyMxaEOsxMxEb9AJ9rJA==
X-Received: by 2002:a05:6820:20c:b0:5a9:d53a:4859 with SMTP id bw12-20020a056820020c00b005a9d53a4859mr11638881oob.0.1712635249867;
        Mon, 08 Apr 2024 21:00:49 -0700 (PDT)
Message-ID: <6614BD70.8090200@gmail.com>
Date: Mon, 08 Apr 2024 23:00:48 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me> <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net>
In-Reply-To: <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

Ángel wrote:
> On 2024-04-03 at 03:31 +0000, Nick Sal wrote:
>   
>> Hi,
>>
>> Assume we filter SSH access only to a public domain subnet using the
>> files hosts.{deny,allow} as seen below.
>> Would this prevent an attack if a malicious payload was *not* sent
>> from the allowed subnet?
>> Trying to figure out if an attack like this was still possible, for
>> the few days in March the backdoor was active and undetected in
>> rolling distros (e..g. debian testing).
>>
>> /etc/hosts.deny:  sshd: ALL
>> /etc/hosts.allow: sshd: "a_subnet"
>>     
>
> If your sshd uses libwrap, blocking access except from that subnet
> (I would check it is indeed doing what you expect, by trying from an
> external ip) then yes, it would protect from that.
> The libwrap filtering happens before the exchange identification.
>   

Does libwrap filtering happen in the sshd process?  If so, do not be so 
certain.

>> Moreover, allowing only public-key authentication for SSH does not
>> help, isn't this right?
>>     
>
> Right. It doesn't help in this case, since the backdoor happens at the
> preauth phase, when it would be validating the provided public key
> (certificate).

I am not so sure about this.  The original discovery of this backdoor 
observed a slowdown in refusing a session for a nonexistent account 
using only SSH publickey auth, *not* SSH certificate auth.  Reports have 
also suggested that testing began after common botnet scans were 
observed to be causing sshd to use an inordinate amount of CPU time.  I 
doubt botnets are presenting certificates either.

I am unsure how sshd would call RSA_public_decrypt in those situations, 
which suggests that the backdoor blob is more complex than we currently 
think.  In fact, I would expect sshd to reject the connection without 
ever attempting to verify a signature if the requested account does not 
exist, yet a significant delay in that rejection led to the discovery of 
the backdoor.  (Lead the client through a fake exchange to hide that the 
account does not exist, sure, but a non-existent account has no 
.ssh/authorized_keys file, so where would sshd get a public key for 
verification?)


-- Jacob

