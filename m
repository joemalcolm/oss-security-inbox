Received: (qmail 6100 invoked by uid 550); 21 Jul 2023 01:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6069 invoked from network); 21 Jul 2023 01:05:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689901494; x=1690506294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PzQBdZ2bvxDoVH9tj9DUl3Wgj/aQclKtgu3giGEoxc0=;
        b=Zpl/wB9uERpxc4xvejsHXi3aRXhI0Kczr9Apv7c2Basp6pG5I5K+HbCnc4FuLYUzP7
         j12n3II4ZgW7XMq85xL1FRolNmRw+rHJqvz2ZgKCnTKkCoryMi3Q+bOjxdjJa1sxLsOH
         s7hMijceGJqYrM1kQB/HhO0FH7LDdwALW+CMmF8e27ZpLnQMVK0oqYDEQfJtxBVMxkVB
         jR6/NiRwF1c7ie921qsGMv79CNu+GgnI6yWuKqNJDV81oLPlD57hTmPnwx5KcTwjyLup
         IKzIf3D90PYTpNrfP7uw+a/4ZrsX429aUV3IpGmC13c/MTKmb2+RZFZx5eKD0/jYd0bx
         NQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689901494; x=1690506294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PzQBdZ2bvxDoVH9tj9DUl3Wgj/aQclKtgu3giGEoxc0=;
        b=R0iM5GPDAA7XTAGhi9JgJQCbosy/cVQl7x6X2+N2DrCvxODsFGiV7jwVUETPm0wl1g
         QwGW7ld52Dkcjy/tbrvkwD2X4rfhU1SugY6akaTbO6v4asFFnv1y/u3smz3jV3j5ZEPg
         Dfyy41Sgl9UME0PK+XGunipz0+aXTMW75/zr6H6m1UR+Xx7ce+Z5otEpN8pKdpO2dtt4
         sE0yVoyqltZCoh3UrCOPpFibz9kVB0z3/cRkhTJcHAfqfiTrfIxYX7AQ95v6Yaryop99
         0+dKsidI48siQTOs9fbuYcnmt9/Q3+KOAW1VWGg3mSFN5up+FnWQQRf3IrSR3Jy1fD+p
         MY+A==
X-Gm-Message-State: ABy/qLZz25GRZezUp0RUDoxE1QlVXomuLFcumtFi4ebRoinW6n6g1xMr
	iL6KmpgFHSuPmXdQj8UDhTfG8gDrOB8jEw==
X-Google-Smtp-Source: APBJJlFnFH0NRzYv3QgjeUYw972Blmr9IZi0wTVQZcyqYlXzDy6k0LLWF/RO9iK/VViZwGfYpow6Vw==
X-Received: by 2002:a05:6e02:156c:b0:346:b5d:c0ee with SMTP id k12-20020a056e02156c00b003460b5dc0eemr751502ilu.0.1689901493900;
        Thu, 20 Jul 2023 18:04:53 -0700 (PDT)
Message-ID: <633ff42d-052a-df7b-dc34-6264e9d4eb77@gmail.com>
Date: Fri, 21 Jul 2023 11:04:49 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: oss-security@lists.openwall.com
References: <e9c022742fc07cee@cvs.openbsd.org> <ZLk1hSUEt00caovk@itl-email>
 <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <1c005469-a540-5cd1-642e-5aebc35dd17b@geeklan.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Announce: OpenSSH 9.3p2 released



On 7/20/23 23:41, Sevan Janiyan wrote:
> On 20/07/2023 14:24, Demi Marie Obenour wrote:
>> Should there be a system-wide configuration file containing a list of 
>> known-good PKCS#11 libraries? ssh-agent having to guess if something 
>> is a PKCS#11 library is less than awesome.
> 
> There's a compile time setting for paths from which you are able to load 
> libraries from.

I don’t think this helps much though, right? The Qualys research that 
motivated this found an exploit chain using only libs present in 
/usr/lib in a default Ubuntu install. If you want to lock down loading 
to a specific non-/usr/lib path that you have control over, this 
suggests you know and are in control of the PKCS#11 providers you’re 
going to support. In which case, why not avoid dynamic loading to begin 
with? I guess the allowlist and new defaults are the answer to this 
conundrum though.
