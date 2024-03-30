Received: (qmail 4017 invoked by uid 550); 30 Mar 2024 19:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13408 invoked from network); 30 Mar 2024 19:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711825398; x=1712430198; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t7pmvFny6BgHNFyXbtBWPW32upE+svhVvO1iAoHyGPg=;
        b=baPffJKGFStEVqraz3yWRu19fbssI+nBtKVAgUAPlnuze7SUkyDDe2O1OzIk9U9cxd
         nTYlfdZYijsfsHR8HJMmKk1ENPTGQFGzUYuyj6EqSguZ3jpRwcupJVfXcB3X9KE/8tk7
         QuvgbdmKM9rEHCCalMDYlJSe1QoFh6KE51tcyb4QGzsYmL/8cqCDGUF4O06d5q30KKp6
         oJ5M/QuZArNaSRojKmKfprdhTnWgLJXZ4OitQwdehojJ7RsfV3rof5ucbwnSpZgAvXvD
         jefDJNFaoIpuGf5AA16LR+WYavVnZqUkijoXw7HdorxH1IBx21JJM3eorYjnpt5AuYSP
         sv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711825398; x=1712430198;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7pmvFny6BgHNFyXbtBWPW32upE+svhVvO1iAoHyGPg=;
        b=hwsrv1E2r9uUUuq/6G1VfICLx7Nss4bK7nwAnMyp8ltY5sloFz2z/JWPAqjJg6/jnf
         tkKO3IoZNbYp+Fesx9/JfGZNFokrn9RX6qMVSWJwu39gJTEx/n3I5G+6q+bthVngfKDI
         rQxw07s+c0z2rkKeDVI+3/EQ/hb8n0cG5Xa0D1HpuCuJ22FchC18ByD9KMyjRKkJwKKy
         R2V9c7ZhI8a81nG3cdsV3AVE8olq92eNXX4RRynSfSIeSnUCMyzr6hciRhwuNQmqyYDv
         GBz/M0FNqstlNIF1LUans77G9WYWGEVLekM6xzzmTAsHfmVG8zpcjQM8axBmJqVzvZHf
         E8AA==
X-Gm-Message-State: AOJu0Yw4gfXWdvx0ckY3I57GHCe5WJ4YaJo8ns2JmGKbGVfLjKZZpPqP
	YUS+kWPrRiKhM1pnn5Z05wvGhuKWRwKNhf3oySYMIpeNWE0oFiv6rW2xdeJMxBXxiKNjH1Xx3YV
	J/iuEB3dEZTDJvPnzNp0StrivoGYvaeACSCD3+A==
X-Google-Smtp-Source: AGHT+IGZlepBZci5VkudMT4azOcglcwXkFapj2KvbwqpsaFqft7jSXi0F+X+sSKPwhIDpEImDXJ0NlEdfWeaVj2yCfc=
X-Received: by 2002:a05:651c:2005:b0:2d4:3c32:814d with SMTP id
 s5-20020a05651c200500b002d43c32814dmr2633663ljo.26.1711825398336; Sat, 30 Mar
 2024 12:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
In-Reply-To: <uu9f4s$oga$2@ciao.gmane.io>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Sat, 30 Mar 2024 23:03:05 +0400
Message-ID: <CAOp4FwTiyuHZ9HGBzTx35gahFbkrTpjrm1oUPVWp8VAoQhSC1w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c918fe0614e56848"
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

--000000000000c918fe0614e56848
Content-Type: text/plain; charset="UTF-8"

A look at systemd does show dlopen() to libarchive.


Perhaps it was supposed to  be another point of entry.



On Sat, Mar 30, 2024, 20:44 Tavis Ormandy <taviso@gmail.com> wrote:

> On 2024-03-29, Ivan Delalande wrote:
> > On Fri, Mar 29, 2024 at 08:51:26AM -0700, Andres Freund wrote:
> >> For which the exploit code was then adjusted:
> >>
> https://github.com/tukaani-project/xz/commit/6e636819e8f070330d835fce46289a3ff72a7b89
> >>
> >> Given the activity over several weeks, the committer is either directly
> >> involved or there was some quite severe compromise of their
> >> system. Unfortunately the latter looks like the less likely
> explanation, given
> >> they communicated on various lists about the "fixes" mentioned above.
> >
> > Knowing this, I hope the recent kernel patch series involving the same
> > person to some degree will get extra scrutiny:
> >
> https://lore.kernel.org/lkml/20240320183846.19475-1-lasse.collin@tukaani.org/t/
> >
> > Thanks Andres, incredible find and write-up!
> >
>
> It was also pointed out they submitted an odd PR to libarchive:
>
> https://github.com/libarchive/libarchive/pull/1609
>
> In summary, they replaced calls to safe_fprintf() with fprintf() --
> meaning control characters are no longer filtered from errors. That
> seems pretty minor, but now that we know they were in the business of
> obfuscating the presence of backdoors -- seems a bit suspicious.
>
> Regardless, that change has now been reverted:
>
> https://github.com/libarchive/libarchive/pull/2101
>
> Tavis.
>
> --
>  _o)            $ lynx lock.cmpxchg8b.com
>  /\\  _o)  _o)  $ finger taviso@sdf.org
> _\_V _( ) _( )  @taviso
>
>

--000000000000c918fe0614e56848--
