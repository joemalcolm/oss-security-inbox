Received: (qmail 3630 invoked by uid 550); 29 Apr 2024 22:00:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20220 invoked from network); 29 Apr 2024 19:57:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714420633; x=1715025433; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J9OIWHUM3QHPa31wxNQ9BImPriiNArBZjBkRgxydbxs=;
        b=aMELzHhpeNkiGCSEEMVdPlmj4Wj+rDRX1dvcZwqewZ8+6IgTxUxN5gvaw7C8WH1j50
         e5dRLPnrkIFlKYO3rbaLclrZeQdl/MwiHZezS5YyXD4NensaesUXh2kF66cxxJQUnTmj
         cqpaTbSFggnbcAnTVbq+q2zajVi6f7YR70ulReTLIAhtflQr/jw1cYzO+0hs5mJXL/4I
         FCz656ysYXKCVZiGGkE8rhSzYrzqi8jWK03kq0MRbggtU0RC+S4dU04F88bs8W03yVlc
         tIh1PeAn4sPkrE7BHWI3fSXLfu5k3lwhXLoy6TZQXhK2yaYnOP7S279yP49d8IZbapEC
         607g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714420633; x=1715025433;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J9OIWHUM3QHPa31wxNQ9BImPriiNArBZjBkRgxydbxs=;
        b=U48xMg8eJY1x3y+Fd2ACYAN/HXsZmemj/e/DaKe08JMLdpxROPlkrozxmFkhuKtKmi
         C2i1+8x013/lhPpEGSfbuhmts+h5UpLPFnLuQ5bA0rPbNqEUTWUNgqzwuOitZBvk90F2
         CXMMji9Xnu7+07g4IiBGPee3QV8NAF6XYkw5ovkKS3CMxsTOe91coq2U6D7bwnwKWWcV
         r5X5QrboLGrsIiFlXT7UQuv+qLh0sq5OwJ4GKqEyLYxFE5hW8Sam6yVk75fohkgYVZpt
         3dC4LHi3WvlNEY3hJZNfxo7spGBycSKM4uC7FnYQ+kaEPPpiqb91zLnrmjEU2ETZIJxI
         weLQ==
X-Gm-Message-State: AOJu0Yx2nS6h1237W9/Y9eWNkpk3GkshZ1VLQNupUlRW6g9lUGZ7qxpD
	yXP6SgKqF004ngXBJ2oYEpWAP3AkwHnAFdm+w2unK2x5rbrYcd7C7RQfnoLw
X-Google-Smtp-Source: AGHT+IEx72TpiSSJK/OTZvKDa2ur7ueTrlcBZx/L4GOqTvAieXlYEzhcbvrJ3bP20FPlORy3nGfk4Q==
X-Received: by 2002:a2e:92c5:0:b0:2de:c16f:4236 with SMTP id k5-20020a2e92c5000000b002dec16f4236mr5765446ljh.28.1714420633046;
        Mon, 29 Apr 2024 12:57:13 -0700 (PDT)
Message-ID: <bcf98949-17b2-4260-9471-5a312e82aa0e@gmail.com>
Date: Mon, 29 Apr 2024 20:57:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Vegard Nossum <vegard.nossum@oracle.com>
Cc: Hank Leininger <hlein@korelogic.com>, Jacob Bachmeyer <jcb62281@gmail.com>
References: <20240427234834.c0219029-fe37-49ef-a563-4d24eea118c2@korelogic.com>
 <a0e871ca-468e-4239-89cd-61b35f935c2b@oracle.com>
Content-Language: en-US
From: Gabriel Ravier <gabravier@gmail.com>
In-Reply-To: <a0e871ca-468e-4239-89cd-61b35f935c2b@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

On 4/29/24 10:46, Vegard Nossum wrote:
>
> On 28/04/2024 08:34, Hank Leininger wrote:
>> On 2024-04-27, Jacob Bachmeyer wrote:
>>>> - Check for irregular contents in .pc files, inspired by Vegard 
>>>> Nossum's oss-security post
>>
>>> Much easier:  look for pkg-config descriptions containing text
>>> other than a variable definition.  The pkg-config tool itself
>>> should probably enforce "cleanliness" on this matter and refuse to
>>> process files containing other text.  (It also should complain
>>> about and reject an *-uninstalled.pc file found in the system
>>> directories, which was another logic error exploited in that sample
>>> backdoor.)
>>
>> Really, doing this seems a more robust approach anyway, because
>> allowing only known-good > rejecting known-bad. I was mostly driven
>> by "hang on, how many of the things Nossum's example does are
>> actually used by real files?" and the answer from my initial sample
>> size was zero, so it'd be trivial to extend that check to every .pc
>> file shipped by every current distro's packages.
>>
>> I think Sam looked into existing pkg-config verifiers and found they
>> do not complain about things we thought they should complain about
>> (this could just mean we misunderstand their purpose). A strict
>> lint-checker for such files would be better than just checking for
>> specific suspicious patterns. But, I don't yet know how strict a
>> format we could insist on (would it turn out 10% of files in fact
>> break what we initially think are reasonable rules?). Even still, I
>> think you could embed badness in legit variables, although I haven't
>> dug in enough to know that for sure.
>
> Hi,
>
> Masquerading a shell command as a pkg-config variable definition is
> trivial (but probably still detectable) since you can just do:
>
> foobar=/usr echo hi
>
> which AFAIK is a valid pkg-config variable definition but also a valid
> shell command.
>
> Also remember that in my particular example I reused the same file but
> it would also be trivial to use a different file in the $(...) expansion
> so that the payload actually lives somewhere else. The payload doesn't
> even have to be a shell script, it could also be a small ELF binary or
> something where you wouldn't necessarily be able to tell at a glance
> that it does something malicious.
>
> So probably the real thing to look for would be $(...) in pkg-config
> files -- Hank, you mentioned in the GitHub issue that you did fine this
> in one file; out of curiosity, could you share it?

I am not Hank, but having done a search myself, the one example I found 
appears to be a typo in a GTK pkgconfig package, which I found in my 
/usr/lib64/pkgconfig folder:

$ grep -r '\$(' /usr/lib64/pkgconfig
/usr/lib64/pkgconfig/gtk-sharp-beans-2.0.pc:Cflags: 
-I:${gapidir}/gtk-api.xml -I:$(gapidir)/gtkbeans-api.xml



>
> I tried this on my system and didn't find anything:
>
> $ grep -R '\$(' /usr/share/pkgconfig /usr/lib/x86_64-linux-gnu/pkgconfig
>
> It's also worth asking if there are other ways to encode that $() that
> bypasses the very simple '\$(' pattern -- e.g. something like "$\(" or
> maybe an expansion of a variable that itself contains the $ character:
>
> $ cat test.pc
> foo=\$
>
> Name: test
> Version: 0
> Description:
> Cflags: ${foo}(echo hi)
>
> $ PKG_CONFIG_PATH=. pkg-config --cflags test
> $(echo hi)
>
> There are also other ways to achieve the same effect.
>
> I should also add that I found out-of-bounds memory accesses in both the
> original pkg-config and pkgconf (used on Debian and RedHat derivatives,
> respectively, AFAIK) when using long variable names -- it doesn't look
> exploitable to me but I've submitted some patches for both packages just
> in case.
>
> Thanks,
>
>
> Vegard


