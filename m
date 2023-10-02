Received: (qmail 15597 invoked by uid 550); 2 Oct 2023 20:30:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11857 invoked from network); 2 Oct 2023 20:28:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696278474; x=1696883274; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j87OeSSuanB1v0XNqebcbybnwWuaUo58pZybcBmjRm4=;
        b=HAqyR81/G/t7uX8jAXDPBI7sENF/SxKvmjX1JI0o0z9oT8Vv5Z5HPzeXsuvcV+NaFP
         Nc8yeaqyGnAMOfi9y9WksQOXpdXFTYizKtngZq5HXRDFRnlPXhXQ6p80Df47887tqrIb
         7wcePCKBYB/NVjJaRZtT2GZ4xIgm9bRZl0aeb5ttoAz0KSovH76318JeIVlNOkeviR49
         QB/7bHQGV0sblY0iwEKqCXmaFqGDohqP1yBzVXCXiMAsIKjktUsdGcUfDSr2wxTHQXxH
         Uee0n8qQAz2fg8HzuA++f1HB9b+YfwfivhPqhV857YKThQL2IzTej5IiAGPmUJ1qpAIm
         zYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696278474; x=1696883274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j87OeSSuanB1v0XNqebcbybnwWuaUo58pZybcBmjRm4=;
        b=K3ip8JZO3t6MQ+V7UqHwKRVx/7sTVzK9mbJs+gZUP/jdiMMG6j/DqT7UBZOprnr/3z
         8Wbal5MCRwzEG+JG2V/KHsI8yApmpwwAN18ztGDwknHqrjcmrbwGLeMnXjEZg3VFciwj
         lmZQn1doHWvmK1Vyerw2VUg93eual8FIm5OzAlooHVx94Jz/dtPJu/Xq9N/9WpQ4IBm8
         sdxBiR8eHnp2xpFOb0zsm3Qyjntgh9eCz/aXl97UEuf32IHpPshaCZZSPJle/Y+3xdxc
         SFs+IIbX7Vf0X8lj0ylWGQl3xF0NTdX7p/njqMwabmT9WrOaXxHNhPRUiT5lBVUtUH/q
         OBeA==
X-Gm-Message-State: AOJu0YyulLPpqQ5BUJgfDMMbzQDJ3XhWpjbtvmMm9HjSS9nF8yLW7ePt
	AsVxKKH1lXJdkHHCJERm0dU5TujwiDM=
X-Google-Smtp-Source: AGHT+IGl+RZIyAcuPxiriukxvclHh/RRknmFCnAgM4/VfiJdHLLVOyvlbewb4ZeyAxTRWHW8yFtXCg==
X-Received: by 2002:a17:902:c081:b0:1c6:1611:e540 with SMTP id j1-20020a170902c08100b001c61611e540mr12088804pld.25.1696278473882;
        Mon, 02 Oct 2023 13:27:53 -0700 (PDT)
Date: Mon, 2 Oct 2023 13:27:51 -0700
From: Kyle Zeng <zengyhkyle@gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <ZRsnx11QaUs1dQAp@westworld>
References: <CADW8OBs19JEt7NekWaCuwQh=b90Kt1gDeXApuRXJX7YU0vmBKQ@mail.gmail.com>
 <20231002202106.GA17010@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002202106.GA17010@openwall.com>
Subject: Re: [oss-security] [CVE-2023-42754] null pointer dereference in
 Linux kernel ipv4 stack

On Mon, Oct 02, 2023 at 10:21:06PM +0200, Solar Designer wrote:
> On Mon, Oct 02, 2023 at 12:53:20PM -0700, Kyle Zeng wrote:
> > when the skb is rerouted through ipvs, its skb->dev is NULL. Then the
> > following `dev_net` call, which accesses `dev->nd_net`, becomes null
> > pointer dereference.
> 
> When reporting issues like this, please always note the privileges
> required for attack.  For the example above, it appears to be
> CAP_NET_ADMIN within the namespace:

Yes, to the best of my knowledge, CAP_NET_ADMIN is required for triggering
the bug (at least for the attached proof-of-concept code), which can be
obtained in user namespace (enabled by default in most desktop environments).

And thank you for letting me know. I will report the privilege
requirement properly next time.

Best,
Kyle Zeng
