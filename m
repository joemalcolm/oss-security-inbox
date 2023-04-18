Received: (qmail 12114 invoked by uid 550); 18 Apr 2023 20:18:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5282 invoked from network); 18 Apr 2023 20:00:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681848036; x=1684440036;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TXE3RS2AzNktFs2+oxetAuBSuYJGnLQphGyz3L8/XqU=;
        b=n7QFDOJyDK6nTOyBqLrhZk6Pz8McfnCUoOubluwwC1khr62H7Qs0/MLkmk0MzwDjTb
         7wXy8/7PU00D1GhEa6dpYYJbv4boqDJuqIfCa0uTHdzG4tcbdbeixIiZU2Y4hu8wM/Lp
         468eMG7Eu6APMn2jwb0kTrnRjPjZ5yubp1oYoy80DCk/ys4772Y0cGALmaMQ7a9uEDoP
         8dkMiRIleMrw4oAa2kOT7bQFAmBT6zsV4TIc3B1Q71UUccPvNS/CTha+QnHabMw30/zO
         4VpAyra+SLAlq9WYbKD+qU3aJN4tOP95q7LSWrulQ5t12YgBAVSrd5ZKSqDWBMxDPemm
         onFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681848036; x=1684440036;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXE3RS2AzNktFs2+oxetAuBSuYJGnLQphGyz3L8/XqU=;
        b=XfsPg/EJ9oQgKm5WwPz+L/P12HmYgMTP93XobzIzdSPmaqN/TGOYg7SfZGS4tZ14z8
         qF5zzTTc4fnbIDXP0r6kJ6IqwZcd2KvzplpGYA73suKQa6fzzMTbEeyQYPnYNAuKekbL
         vJ+mZtEqtAlOSk9r19SYmFXnf2xaiipEdofHb6klHej8who8bxxIAbS3S+r9BuueWnie
         gThg8fXyOPTCOV2jHItSEyXk2kUMQk0p74DHVZxHuaZPeI1xpG6SJ6mHBZvL3WRnU+B5
         4sOVttjEUk8eIEdBXv9G+kyVJskb8J8uI9aH3Fc+CeZNqj+jz5xZ+lYtwZHhf6sKveN6
         yTbw==
X-Gm-Message-State: AAQBX9eNk94Fp8iu9zz9/5PxlE5vjliRKPLNC/8Qm01d00A41/Pt9lD0
	atLWDIG0yP2uj0o6fkRlXUepiJwNtB8=
X-Google-Smtp-Source: AKy350aiuWuaLkatzX/8tveER/IzYndrVodlbycQ/k1DSGQRWJWs8hutJwCePmXfgQzaMeQJXRdrGw==
X-Received: by 2002:a7b:cb87:0:b0:3f1:71ca:e6d5 with SMTP id m7-20020a7bcb87000000b003f171cae6d5mr7424237wmi.9.1681848036111;
        Tue, 18 Apr 2023 13:00:36 -0700 (PDT)
Message-ID: <2ffb794f5e7661c7ff955ebecd4123d3.cedb9d86@offensive.instants>
Date: Tue, 18 Apr 2023 23:00:13 +0300
From: 0xef967c36@gmail.com
To: Ruihan Li <lrh2000@pku.edu.cn>
Cc: 0xef967c36@gmail.com, oss-security@lists.openwall.com,
	Solar Designer <solar@openwall.com>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230418154016.GA959@openwall.com>
 <a88cee5ff23401457a8b156ceb5a5553.854673b9@michele.blotching>
 <e6gh3axpoalp7kw7j3v47f6jk7wnz5kcyitltpfijvgs2g6djv@ed3e7aarvaak>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6gh3axpoalp7kw7j3v47f6jk7wnz5kcyitltpfijvgs2g6djv@ed3e7aarvaak>
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

On Wed, Apr 19, 2023 at 02:37:35AM +0800, Ruihan Li wrote:
> It appears that SNDCTL_TMR_TIMEBASE and TCGETS do have the same command code,
> which sits in the lower 16 bits. But SNDCTL_TMR_TIMEBASE uses a newer command
> encoding scheme [2] that includes the direction and argument size in the
> higher 16 bits. TCGETS, on the other hand, contains only the command code, so

That encoding scheme is quite old; it's there since at least 30 years.

> its higher bits are set to zero (TCGETS should have a really long history,
> just longer than that of the new ioctl command encoding scheme).
> 
> [2]: https://elixir.bootlin.com/linux/v6.3-rc7/source/include/uapi/asm-generic/ioctl.h#L5 
> 
> This means we haven't had any collisions yet. Also, since new ioctl commands

There actually are some collisions, just not the one with isatty() -> TCGETS

eg SNDCTL_TMR_START == TCSETS

> will certainly be encoded using the new encoding scheme, which TCGETS does not
> use, it is very unlikely that new collisions will occur in the future, unless
> the command code is exactly the same and the higher bits under the new
> encoding scheme are also occasionally zeros.

The _IO variant (without direction and size) can collide with
old-style ioctl, like those CDROM*, etc.
