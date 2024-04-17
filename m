Received: (qmail 3503 invoked by uid 550); 17 Apr 2024 12:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10207 invoked from network); 17 Apr 2024 02:26:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713320755; x=1713925555; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BqLgO6uZWUOsoeBv815tKIcDppNKs8LTICi9QVvv0Qc=;
        b=GjhashXtIjPbenWmZcbLcDkZtghwEhNRw6TiTicuplE4lbfAtl71LEi+lUIP7jv0Lu
         nbCrReM4Q3LqC7Ig7mEt/JuFPpB3sPam0aRLBB87yADAP8Z4xs823MdrZAS4eFtLE4Ca
         snFqbE7or9iBj09+5B/F6pakMYBoqFN1o12iqilVGckW83ePapqWpGlIWAZl243vGsGL
         eqiodJbQPyY9ioBGONQ1HK+szaQCvVNwvQ1b88dmg/TYdbdurDjSOWl68OI8/F/Xvxxg
         DomWWrqhPuiVxliSqMD7qFQ/6KjwxCiyFrT3O/H6vr0gRpXRuIl8NdzjMwMge3aWMa0z
         a91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713320755; x=1713925555;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BqLgO6uZWUOsoeBv815tKIcDppNKs8LTICi9QVvv0Qc=;
        b=GJ9A9N2h7mjX7cdf29YL3jqY50OAvmAtrdejgslBXEtHiAfj/Z8PFbXrrdIbWqbsBr
         HWutpUrEm7120AvNK8sOmz6Wq9bb0tosm7Sww1ickHuDIK3e42jbfI48EXTHY61xWKQs
         LKcLjKfQ0KQNWWH1ENshd8HGh4UCgVfbmFXSemJVYWGnMVRkOL33d+7jiLxcnDsUVJnx
         GyAPW42qeO8CETmuS46L+1QOP2l/yYhCkri55TbFZM0jSIk0k0MoVof70Qmi6HzVlduB
         7cYTpT0L0pFYgPu66PH8T5O5aTD587a185nG1qWCnOBm0kfFw7QuRysg2IW8uCWRNZUF
         hw2g==
X-Gm-Message-State: AOJu0Yw3U7A57HA6R3dGEmlextr1tldsbBsekXlYya8MHhYQ7wAApGq6
	be/x0c7nR8V9z76u6DsrqtzWK39Pi7+OkSWOfSiquD0tdXoUE1N60nzAgQ==
X-Google-Smtp-Source: AGHT+IEWFHNtcOWdxqeQc40LU/3wg11aYLqS5UJa03dKEqk7dgNqmO30EAQdSKQtO00i4EgyOH83Lg==
X-Received: by 2002:a05:6870:b514:b0:22e:d20d:1274 with SMTP id v20-20020a056870b51400b0022ed20d1274mr18407558oap.9.1713320755399;
        Tue, 16 Apr 2024 19:25:55 -0700 (PDT)
Message-ID: <661F3331.3020408@gmail.com>
Date: Tue, 16 Apr 2024 21:25:53 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ed2715be-e7a0-4a7f-a3fd-7041f6c6fa49@fu-berlin.de> <Zgmn06K3C-nY83YH@codewreck.org> <20240331202502.GA21116@openwall.com> <20240416225900.GA23474@openwall.com>
In-Reply-To: <20240416225900.GA23474@openwall.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Solar Designer wrote:
> [...]
>
> xz backdoor analysis
> ====================
>
> More findings were made about the backdoor's functionality, notably as
> published on April 6 by blasty, who discovered that besides triggering
> system() the backdoor also allows interactive sessions:
>
> https://twitter.com/bl4sty/status/1776691497506623562
>
>   
>> [...]

There is almost certainly more yet to be uncovered:  Andres Freund's 
original report included timing for SSH client connections requesting a 
nonexistent account using publickey auth.  The backdoored SSH server was 
found to require significantly longer to reject those requests than the 
untampered sshd.  I do not believe that the currently known backdoor 
hooks are reachable by that means, so why did Andres Freund see that 
particular slowdown?  (Not the backdoor initialization making sshd take 
longer to start up---a running sshd taking longer to reject a session 
for a nonexistent account, unless Andres Freund forgot to tell us that 
he was running sshd from inetd and thereby including sshd startup 
latency in his measurements.)

> [...]
>
> OpenJS Foundation "Failed Credible Takeover Attempt"
> ====================================================
>
> On April 15, the OpenJS and OpenSSF foundations released the following:
>
> https://openjsf.org/blog/openssf-openjs-alert-social-engineering-takeovers
> https://openssf.org/blog/2024/04/15/open-source-security-openssf-and-openjs-foundations-issue-alert-for-social-engineering-takeovers-of-open-source-projects/
>
> I'll quote an excerpt:
>
>   
>> The OpenJS Foundation Cross Project Council received a suspicious series
>> of emails with similar messages, bearing different names and overlapping
>> GitHub-associated emails. These emails implored OpenJS to take action to
>> update one of its popular JavaScript projects to "address any critical
>> vulnerabilities," yet cited no specifics. The email author(s) wanted
>> OpenJS to designate them as a new maintainer of the project despite
>> having little prior involvement. This approach bears strong resemblance
>> to the manner in which "Jia Tan" positioned themselves in the XZ/liblzma
>> backdoor.
>>
>> [...]

Concerning, yes, but not quite the "Jia Tan" /modus operandi/---"Jia" 
seems to have been contributing patches for some time (with sockpuppets 
pushing their acceptance as needed) before making a move to be appointed 
co-maintainer of xz.  This looks to me like the common cybercrooks have 
seen the technique, decided that it sounds like a great idea, and are 
now trying to use it, but do not have the patience that the "Jia Tan" 
gang had.  In other words, now the "Nigerian Princes" want to help you 
maintain your project, just give them write access to the source 
repository up front.  :-P

I also want to call out a critical detail:  claims of vulnerabilities 
with no specifics that would aid in actually fixing them.  This should 
be a general red flag:  *anyone* who makes such claims is probably up to 
no good.

Lastly, thank you for making the summary.


-- Jacob

