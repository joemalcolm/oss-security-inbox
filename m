Received: (qmail 9463 invoked by uid 550); 19 Apr 2024 10:08:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14324 invoked from network); 19 Apr 2024 02:17:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713493051; x=1714097851; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLcSY1cqepGvS9Se4Wv3QfWDXMCrH3odmG5fcY3k9+k=;
        b=l5J7FStsTh4S9jYOBUK6rsACJ65avbUIOgYdQL3oMj7ifjEI3cJJu1eAGmbDlsQbEn
         mct8II9An3ndMjotyOpUjt4EK9Gnk3VX9gyYuS0hz0D+lvRgShIw1NgIHR4mIiLsjsKP
         trORInoZNf9bdDTbWFNLnahuOVQ+5+qpS69dYAgib0JbvnPnzvEfkcdXYQJ3rm+Xt6sf
         4gDdIyj+5fr6f8QbV1tJPTAqJPt/zKvLjS1D2zsXGeNQEZ4EkAecXkNDO3jdeRGNSzRO
         PLHESBvgibIsFhKq3wkM4P8OeKomEDx5UA5Pcjas/zGGL8fRgMeDkKLpK1/ToLfg4qPL
         s3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713493051; x=1714097851;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VLcSY1cqepGvS9Se4Wv3QfWDXMCrH3odmG5fcY3k9+k=;
        b=K7PnMQOkEx47UqoUQmvCYBHaBIVrvWyqp8L30KcsX1ANPNupsWCFRBq3SoNF2VOyUV
         5P42/44RJwKu8WUoZd5Ye2VtQVL+PmTytgn3dYzljsXRRQE91n+jO0RhKO55X+B3NjDJ
         sSsT8XsKPXQH/zGhJiumPYQlhelxzjV6J4M9Kzqr9tJAuB72hKdKX3YlDMFpcfZMDYfD
         PPdxRkYEGGzALf//MltAACCV6Q8Fi4OKdnbtL3h6srCYoIn8iKHVwiXQBtrQqCU7SlXM
         OP5Uh/Q2Td4/6eK4KnuAAgTbQfyJi+TO0IChrkvdJbGkZPqV/9PD13krc1fE6mmN4BTJ
         bEmg==
X-Gm-Message-State: AOJu0Yx1KDoXwKrlDyaI/ILUftl2MHOWt2dBTk44V0vy53lfcBrAg7hH
	vgKUbFN6PbH1GDaQZCGdO7yVLWWVwoqMOMmckui5VvAJgoJcDi5/FXDdfQ==
X-Google-Smtp-Source: AGHT+IFXBDCVo8vIQ0yEqTApv/r39V/5f0t5xRYFHcImG8TxJGHw+qlAZts8VcZu/BEhVAV9Anzy7Q==
X-Received: by 2002:a05:6830:12cc:b0:6eb:6046:ff17 with SMTP id a12-20020a05683012cc00b006eb6046ff17mr786382otq.36.1713493050927;
        Thu, 18 Apr 2024 19:17:30 -0700 (PDT)
Message-ID: <6621D438.5080005@gmail.com>
Date: Thu, 18 Apr 2024 21:17:28 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ed2715be-e7a0-4a7f-a3fd-7041f6c6fa49@fu-berlin.de> <Zgmn06K3C-nY83YH@codewreck.org> <20240331202502.GA21116@openwall.com> <20240416225900.GA23474@openwall.com> <661F3331.3020408@gmail.com> <4eaf6a34fd8459284e1a6967c68db93f@ucc.asn.au>
In-Reply-To: <4eaf6a34fd8459284e1a6967c68db93f@ucc.asn.au>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Matt Johnston wrote:
> On 2024-04-17 10:25 am, Jacob Bachmeyer wrote:
>
>> see that particular slowdown?  (Not the backdoor initialization making
>> sshd take longer to start up---a running sshd taking longer to reject
>> a session for a nonexistent account, unless Andres Freund forgot to
>> tell us that he was running sshd from inetd and thereby including sshd
>> startup latency in his measurements.)
>
> Recent OpenSSH always re-execs for each incoming connection (for fresh 
> ASLR) so it's always similar to inetd startup.

Aha!  That explains it.  There may not be another backdoor after all:  
if sshd always reinitializes by exec, it would incur the full startup 
delay for each connection, and the backdoor may actually be inert if the 
client requests publickey auth.

Thank you for filling in the missing detail.


-- Jacob

