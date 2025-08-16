Received: (qmail 8027 invoked by uid 550); 16 Aug 2025 20:47:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1283 invoked from network); 16 Aug 2025 18:47:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755370065; x=1755974865; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=trD4/G5ATRI30RFG60y4az3Y7b+zCH6Hpn4m6id5tLc=;
        b=iHYvDYf7084X8dRZzk+Cu2sHOGXaVMBpBtVrLzqWj28WZOBAYRu/Y7IykdN+0Frzc9
         8mrNhqP6YM6Sy29tP8sbrcBQRPLEc4jkYV3Zfmk8A3k071jtl+9KrlREctp+1vOrAuBQ
         O7K+Qjwr3l2e5O+nBCeBv+ikG6uZ96z/BMdI8q+dTSXn0G1zgAccxfWkJhMHC3c7m+wa
         z/V50aGdn6l2wt+9iwb1vlCfobKp3OTQgzZquT6UGsc07NqO9o0BFmYmJfPf5EyddZff
         BB/hqG5MqaZNgarrtcSyLoIyVWA+eor3GUsALrOrrSlea9PFUNJvRV6xQz/PcqYRKpez
         fcfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755370065; x=1755974865;
        h=mime-version:user-agent:message-id:date:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=trD4/G5ATRI30RFG60y4az3Y7b+zCH6Hpn4m6id5tLc=;
        b=MyEPAIoOQ3pOsAwLwSb8P9dI6hYivV6coKMBQAI0CJS5Ex2hAzGiwtrRHT9YThVNO4
         jnZaHEH+h705usaeMsl7By9CdLYy5TkZW0YRQPlaR3UkCIm8cpprsYoaqQwmW+gpSccq
         1YqfPx7HEw5rRIpk/TUXxkE0dr+mkukvVBesSReszbzw8HpaxzLn1TYOvHG5Na+pzxM4
         BY0+wU+nxWzkscJ/gwPHnb825ykoJeipDz1LEyxcBLp7C9hbb6BCrR6iRI6z6FF2wOh3
         tiIkZleRQJjwdWkqqfaOyUtTOkpv5jk6Pjd4k30RC0kJHwz8Dfy6uFpRb94xPgLJvzir
         mWOQ==
X-Gm-Message-State: AOJu0Ywl2vClJQOwaPA3vNc0AiswF1Pyw4wI080ZO+wK8Edg2P464rL1
	YDCjtbBPffYJy+Jnrqzsv3ZNtOw6LTkllPSeS+JssWWhlioX+emvbEXgbyeKYugL
X-Gm-Gg: ASbGncubhm5b77ezYlDhspfysKVNVEk60OeKBhzvWEQ1vOxL9hwce2n70C5huxM+ofB
	Icx/7R6xyUx2u8DurP7kOPsXx5wTDH4NySmIFks8J1L3Ct1EtYxjGOIijDk+Zvd9wp101x6U5BZ
	bs/FHww55X/ANrTauCRTdQJV4G2JLBg9XlGOgpjQRUxFUu75V6SdxiKCLQNbS+LzKyzmfWxmPzY
	fC/N9evl7A42a2xkZkhC2r8XaklVmTwUq014rzm/MUeg/FWDFolUCtuFBZdBMacbBFgq4DjwYit
	YcSYjM9XDWfVz/vCDuBYREL77YEPIT52vq7atrNTenkNOexMoHITkbj7MH5lG1/HE8OlNEfCSCp
	new==
X-Google-Smtp-Source: AGHT+IEDIumxrenoVjay4vgL3MdNWy/G460rjlUKPbrDUHDI/WLINyMbpMfQWAt04WESBE7TVsBKJg==
X-Received: by 2002:a17:90b:1646:b0:311:e8cc:4253 with SMTP id 98e67ed59e1d1-32341df8fd0mr9166588a91.2.1755370065098;
        Sat, 16 Aug 2025 11:47:45 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Cc: oss-security@lists.openwall.com
In-Reply-To: <20250813203857.GA11693@unix-ag.uni-kl.de>
Date: Sat, 16 Aug 2025 11:47:43 -0700
Message-ID: <87a53zyugg.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

Hi Erik,

Erik Auerswald <auerswal@unix-ag.uni-kl.de> said:

> On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
> > The following makes the xterm terminal crash
> > 
> >   touch "$(printf "file\e[H\e[c\n\b")"
> >   gunzip file*
> > 
> > due to malicious character sequences in the file name and a bug in
> > xterm. Same issue with bunzip2 instead of gunzip.
> 
> I do not expect this to only happen with gunzip and bzip2.  Does this
> happen with any program that prints the filename without any escaping,
> e.g., "echo file*", and most programs that print the provided filename
> when reporting any associated problem (i.e., all that do not escape or
> suppress non-printable filename characters or bytes)?

Yep, any program will print non-printable characters unless it has some
logic to not do so.

Many GNU programs (from Coreutils and Findutils, for example) use the
'quote' module from Gnulib to print file names in a way that can be
copy-pasted in a shell shell command [1]. Here is an example using ls
from Coreutils:

    $ touch 'first
    file'
    $ touch 'second file'
    $ ls
    'first'$'\n''file'  'second file'

Generally this is an extra program feature. The real issue here was the
xterm crash.

I guess it would be nice for gzip to quote file names nicely. I'll have
a look at sending a patch. The only reason tjat it doesn't already do it
is probably because it is changed less frequently than other GNU
programs.

Collin

[1] https://www.gnu.org/software/gnulib/manual/gnulib.html#Quoting-1
