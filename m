Received: (qmail 7453 invoked by uid 550); 13 Apr 2024 12:05:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32196 invoked from network); 13 Apr 2024 00:24:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712967839; x=1713572639; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Pyp/dQofPQcqNo1/xuWTCnHpxdW/zHWzykwYdqrDAA=;
        b=VZlPDpdQAPgGyeMwKXIkzRL4P/FM1yGzpE3y/ENivGRb6L+RPqkw7MLWmITROYiqbH
         RA0X89XY738mI+/R24hmHhCJ1QyTUXUcurMTwb/a+lIcrB9ORjKF52nSxlte5DlDyISs
         /9hmJhkWejadywpECpWjJ7YS3OmlcnmnxlAiWd0dbqEEBwTpEeDEeXNx/vaTblZ4kdt1
         qvG/SJkD8NgI6yElPMMCezFG6EJBzIYhDGxb1MScPYOA4L/uAgbZVf/ZVs0L3HGwu0nN
         3jmaL+0yirdU+nn9x/gs1NctBRGu2BhXTBCKVsqR4IeLyJjQgXMoZYP67otS7pbmIs4i
         xmMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712967839; x=1713572639;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Pyp/dQofPQcqNo1/xuWTCnHpxdW/zHWzykwYdqrDAA=;
        b=TCR7eIZww5ARqsTLVdJ1kV/K1494cnD26avmgY5RV5pAtPhutbG76RtArx4zXGhYB3
         PgNwAdARAdpe6xvOIAdg6g4/Kx/+6btt3Y/PpfwngYvK9lgSxHmbmr0OE7UBvNCwXvyl
         ZYRltF4ew4TOZovpTP8XJ0hN4qbUuxVi2fRtbhG1AmrJFoZkjOFsFSVn8HaoBQikRgrP
         x82FhtFmX0X8cekybj19muakiiHRJyAI4lXwXwgR9a09qA6l18jUwn/AriA2A8k7doI2
         be8j/i7Fi4lNdNLluR0W3yrFtbf4kv1arv71HrY+RBLcBlJrv7HBFsDf2bkzPL3JZD7S
         jJ/g==
X-Gm-Message-State: AOJu0YwUDNzUq+RW3NQJsR2MqWsiWb9he3oNuYbvA+MPhvWCbEzK9VOq
	t4+N5TQ20o0Tg8cPFchbVZEGjc4HuMT6VYuVkGfAwDbx2be1QT/E
X-Google-Smtp-Source: AGHT+IF9sA8MK2ACpztdUvhIyhqfSHlgP4tfbzVviUtKS0ik0rnKRXFa9WxaHEO+OQGZRG6MNJODsw==
X-Received: by 2002:a05:6870:b52a:b0:233:5bf6:f154 with SMTP id v42-20020a056870b52a00b002335bf6f154mr4745208oap.50.1712967839311;
        Fri, 12 Apr 2024 17:23:59 -0700 (PDT)
Message-ID: <6619D09B.60202@gmail.com>
Date: Fri, 12 Apr 2024 19:23:55 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: Alejandro Colomar <alx@kernel.org>
CC: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>, 
 Joey Hess <id@joeyh.name>,
 Jonathan Nieder <jrnieder@gmail.com>, Andres Freund <andres@anarazel.de>, 
 Lasse Collin <lasse.collin@tukaani.org>,
 xz@tukaani.org
References: <ZhYEpAFolwefRv7X@debian> <20240410162812.GA17059@openwall.com> <66175855.2090805@gmail.com> <Zhgc_fyeFqnTc__t@debian> <6618AB04.5030707@gmail.com> <ZhkphiAdOcI-WWx4@debian>
In-Reply-To: <ZhkphiAdOcI-WWx4@debian>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

Alejandro Colomar wrote:
> Hi Jacob,
>
> Thanks to your script, I've found a mistake in my analysis of the
> timestamps.
>   

Interesting.  I am very happy to have helped clear the air.

> The commit dates in +0200 recently seem to be because Jia Tan rebased
> some commits from Lasse, and used --committer-date-is-author-date.
>
> 	commit 3007e74ef250f0ce95d97ffbdf2282284f93764d
> 	Author:     Lasse Collin <lasse.collin@tukaani.org>
> 	AuthorDate: Tue Mar 5 23:21:26 2024 +0200
> 	Commit:     Lasse Collin <lasse.collin@tukaani.org>
> 	CommitDate: Tue Mar 5 23:23:16 2024 +0200
>
> 	commit 6e97b299f1b22e366ec42ba5dc5b9d0746e87b84
> 	Author:     Lasse Collin <lasse.collin@tukaani.org>
> 	AuthorDate: Tue Mar 5 23:21:26 2024 +0200
> 	Commit:     Jia Tan <jiat0218@gmail.com>
> 	CommitDate: Tue Mar 5 23:21:26 2024 +0200
>
> $ git describe --all --contains 3007e74ef250f0ce95d97ffbdf2282284f93764d
> master~37
> $ git describe --all --contains 6e97b299f1b22e366ec42ba5dc5b9d0746e87b84
> tags/v5.6.1~9
>
> The other three commits have a similar story.  So it was a red herring.
> Then, all of Jia's actions have consistently been in +0800.
>   

Very interesting---that red herring has gotten quite a bit of press.

> Now I'm using your scripts to collect data from several projects where I
> work, to compare with data points that I know well.

Excellent!  Now we are likely to get somewhere.


-- Jacob

