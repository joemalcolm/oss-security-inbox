Received: (qmail 16057 invoked by uid 550); 15 Jul 2024 00:31:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1967 invoked from network); 15 Jul 2024 00:23:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721002974; x=1721607774; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNMpZp7TNlGSHnnpYWGMbKYLzaYDt6Rrg5TlWjSkaH8=;
        b=dWQWfDxwNT36BTDqU0dOsE49eb5wL9mv2ywJwqrwobr/mnOW2Gkgaij4Z7HBPKgaXp
         SAxHIrs+DhEbsvYCoS7oRhb1xSU1K6nUieTq8swRFGNfyN9a/afSStqGopuze1f3NrkV
         lj50SGVFF196Iloh9p+RAU3SijxUyp9KolYFR04l2M0qShaUSYks04ERtHHWmeEi6UWD
         qZcXkWSfDwMffdomjDalKMEmuvRfrA6W/GHK8kLYZfp3AK6YCsXpeckM36FlIahihpyh
         GAKjIkizvzB3jYO9YfwYdcAfho4EciHdciTZChWs6dVP/sk7FGowvv6lXesbtSlsmu/G
         mLwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721002974; x=1721607774;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nNMpZp7TNlGSHnnpYWGMbKYLzaYDt6Rrg5TlWjSkaH8=;
        b=TRPHxMW6+ksyBE55N8tHfkSWNbPQYaK/+zgx73s4XuvLvbOEjQK5DsmxIr+dKJzfDM
         23nAatfF/8EhwzmfPpxO5bAf7wbiZlGDLCLBzrRaJxUYJf4zssySh7CrfVM5p/Gskg8X
         1SVi6g0RTwwLHI1Zj8byh+EU5OF7T3wEnioc/K5cQUstCPnhzLXkvzw2D7ytOnm7Mz4O
         zDkS3jF5w19U4QI/4Remik5ajZdSgLW3ZWs4IRQwRGsGScTv6qTXs9kKkt+QCUgKUZrJ
         ntibowST0yQE9rV8a6zFPmRK6gDTuwDrC0DXzCOkBktHSO97HuVNgSaxD5rgXkcsVO+5
         rINA==
X-Gm-Message-State: AOJu0YzaH0sSe03Bit0F8aFd9cvPZ5zi3YDJy8RiOP5YYBvv405ygN2i
	Kt0R8NXbss0FotD0WrGNjf/MElV79/JX85If9xXMTj6VseqG7aOXJoIBBQ==
X-Google-Smtp-Source: AGHT+IGGjmphTyN6vb/VoVB5NF7CiYGi/y6LQner7VymaYW9Fz1Ei0oeyGAhGOjes0DNjazwSOg/9Q==
X-Received: by 2002:a05:6808:14cf:b0:3da:aba0:8243 with SMTP id 5614622812f47-3daaba08b76mr11611170b6e.28.1721002973560;
        Sun, 14 Jul 2024 17:22:53 -0700 (PDT)
Message-ID: <66946BDB.4070709@gmail.com>
Date: Sun, 14 Jul 2024 19:22:51 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com> <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org> <20240710214412.8IXhxf8b@steffen%sdaoden.eu> <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com> <20240712170603.XJ6iwd6q@steffen%sdaoden.eu> <6691E39C.8090600@gmail.com> <20240713205858.LSnJJGoo@steffen%sdaoden.eu>
In-Reply-To: <20240713205858.LSnJJGoo@steffen%sdaoden.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

Steffen Nurpmeso wrote:
> [...]
>
> Some findings:
>   . I note that the mentioned files are writable by only root (and
>   i would assume MAP_DENYWRITE to only work if i could do so
>   myself).
>   

I believe that most executables are writable only by root, but available 
to unprivileged users.  Since the purpose of MAP_DENYWRITE seems to have 
been ensuring that executables cannot change out from underneath running 
programs, it would need to work when unprivileged users map the file; 
thus the DoS problem.

>   . Capabilities have become more fine-grained.
>   . I always whimper when i have to rm(1) a running executable before
>   placing an updated variant on Linux, on BSDs i simply over-cp(1)
>   (and i do not understand as long as one gets either the one or
>   the other when executing the path).
>   
Simple solution:
    - write the new executable under a temporary name
    - use link(2) to create a new name for the existing executable
    - use rename(2) to atomically replace the existing executable
    - use unlink(2) to remove the old version after any needed checks

You can dispense with link(2) and unlink(2) if you do not want to 
preserve a backup of the old executable.  Using this method will change 
the executable's inode number (meaning that it really is a different 
file) and that means that the old version can remain on disk for as long 
as it remains in use, even after its last name has been removed.


-- Jacob
