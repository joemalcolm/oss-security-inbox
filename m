Received: (qmail 1039 invoked by uid 550); 14 Aug 2025 10:35:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31808 invoked from network); 14 Aug 2025 08:56:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=martin-st.20230601.gappssmtp.com; s=20230601; t=1755161771; x=1755766571; darn=lists.openwall.com;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=kiHrYuncGGye6e1w+NOODEhVqRC6p6EFUBXg2FQ4FXE=;
        b=3FYcD1u6TV2+rtlg+hI6F760+DZJIYX/G9jk/5zjVN79/8W0AtvT/jH+PKZw+sHPN5
         2ZV5GMNBgd5Y95rybSqkpe9gFgesuspa3UiY/Au952niKqgT0UeMFhm9W4tBFLl4QH/0
         k4Sg3CrRoHaBywQ1QXLsc3njhvNHt138HF1LZlyO+YxfNxyIdsSZUsV7LYBT+yySv6Ek
         QoMtjrpnq6n8ig/moi+Ifzl9qqExgZLuC57Rftno4BGyyecVcV+FokmZ1QmCHgJPigT2
         sN2VpXQf96f/etcZhOSc0rJua56cQQK/ydhgIrCE1v8Z5hFOUPZa6f8xzXylXeGbwD3z
         of4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161771; x=1755766571;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kiHrYuncGGye6e1w+NOODEhVqRC6p6EFUBXg2FQ4FXE=;
        b=Qq5/O5KAHxWDPFZ+5ISPJYMSAp27592q1s7bioww3aD8FOfrD3RlyvhRQ4411yZbeK
         qxu2zbovoyuaqip1bR2lLAONnkc2PwXrVv1ByqKFP6VEM/8WMqROjssb5lg2TOS8X2oV
         1fLM97i+jutnEvXuznS8pzfcn2dT4knyxilRmTcFUCYGq/iaU8zigbcwOALsoMKzI2kF
         H/xwYVp6EU+gJEXrviZz1/Hf+MKYufKgMr67w3DRhM+h/HXsmJ9BpzdpemiivdsymyZ1
         m+ticm5cadgoHZe/u7G6oboG0ZUyFju1RYb4swTBCu9qjJKlspxGH+AmculJi0U2xeBA
         uNzA==
X-Forwarded-Encrypted: i=1; AJvYcCVVFhfcTA10Z4bUwbo94GkDq9yrQqRHciwIkqDeAo38R9xuc1LzbkTMwniF0b3V/epOwX62mmp7kuQvF5Q=@lists.openwall.com
X-Gm-Message-State: AOJu0YyBNLZWpqEo44qXyK+MSHT2Kw5sO7dqoc1IPiiTKzexHoYxmSta
	d2RvjT+XIni3OleTHmaVigz9Ij8JxEia1tLLDtxNao7N+0BOcGVAKfUzoXfndSL00A==
X-Gm-Gg: ASbGncuTH46KXjTW7kt/5Ao+yMc3Xx5bPRazTRZe5JbrKgwBEVloNtMGeV850X0W8AZ
	lk14OJL3vYKYTMbwmnAqooHkOqn2MNvNbVo5zvO+9Nb2uDQLifKeosZ18cRaHy9iisGCRZ5a4bU
	Q9pxmGMG2Q0ceyH/GiLAAC53xC2v1VdRSpgGsUAHLOL2AGidVyxjZ+r2wEmFt14j3V9DSgUxI5O
	etcV6KTvG7wInUvldTUgndXLYTXQIVBfCr6mXEiFBgmuR9d3QnqdytA7uWVz7NfIQaGT/glvcKX
	eKQMFa+lasZokwS9v5Rea54RG5V2vcIWatTxPWSw5jGEI/QXdEeeydvgNo2qTQdtWvsVwcJ07hQ
	8eRop5EBO2L0YTi1NA7Vxj5tJ4rcqH75/SsDG5vhs1PtErdM4vCSeySO6cZv0RX42ILQAYrdeiE
	sLrUpBTab0W8GlSpdnIA==
X-Google-Smtp-Source: AGHT+IE9+B9j5b+eJkK0gdfhFwt/LwLpyL6/VYKN4jB6d8SNHUR7rWrUfFQTrxQcPQeONz6STuL5oA==
X-Received: by 2002:a17:907:97d0:b0:af9:2bb9:ea36 with SMTP id a640c23a62f3a-afcb9395356mr207306466b.7.1755161770566;
        Thu, 14 Aug 2025 01:56:10 -0700 (PDT)
Date: Thu, 14 Aug 2025 11:56:06 +0300 (EEST)
From: =?ISO-8859-15?Q?Martin_Storsj=F6?= <martin@martin.st>
To: Sam James <sam@gentoo.org>
cc: Jordan Glover <Golden_Miller83@protonmail.ch>, 
    "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
In-Reply-To: <87qzxeljdu.fsf@gentoo.org>
Message-ID: <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>
References: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch> <87qzxeljdu.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: Re: [oss-security] Question about (in)security of fdk-aac-free in
 linux distros

Hi,

On Thu, 14 Aug 2025, Sam James wrote:

> Jordan Glover <Golden_Miller83@protonmail.ch> writes:
>
>> This post presents question about (in}security of fdk-aac-free package 
>> library packaged by several linux distros. I hope someone on the list 
>> finds it worth reading.
>
> I think we should include Martin in this conversation. (I've not snipped
> the email for his benefit.)

Thanks for looping me in! I have a couple of clarifications on some 
details here.

>> Since 2019 linux port of fdk-aac was gradually synced with aosp
>> source. Current version is at 2.0.3. The diff between 2.0.0 and 2.0.3
>> [5] is more than 1.5k commits,

FWIW, if just counting commits, those commit numbers will be _vastly_ 
inflated, due to how Android does its development - the majority of those 
commits are just merges between different branches.

$ git log --oneline v2.0.0..v2.0.3 | wc -l
     1694
$ git log --no-merges --oneline v2.0.0..v2.0.3 | wc -l
      369

So the true number of non-merge commits between those versions is closer 
to 369, not 1.5k. In addition, some of those fixes are the same fix, 
cherrypicked in different branches.

A rough deduplication gets the number down to 300.

$ git log --no-merges --oneline v2.0.0..v2.0.3 | sed s/^........// | sort | uniq | wc -l
      300

That's of course not saying that it's insignificant, but it's a bit less 
than initially counted.

Then unfortunately, some of those upstream AOSP commits also are batched 
updates from another Fraunhofer internal repo, where the commit just says 
"update to newer version or similar", see e.g. [1] and [2].

>> including many bugfixes found by fuzzing and sanitizers.

Indeed; a couple of years ago there was a lot of activity around fuzzing. 
I got a couple dozens of fuzzed samples from oss-fuzz as well, which I've 
tried to fix to the best of my capability (sometimes by corresponding with 
Fraunhofer on what the best fix is). In many cases, the same bugs have 
also been fixed in a better permanent way upstream in AOSP later, reducing 
my diff between my fork and AOSP.

>> The fact it wasn't simply rebased with -free patches on top make it 
>> arguably harder to compare -free and non-free versions and requires 
>> extra effort to do so. Alternative is to trust competences and goodwill 
>> of the contributor. The diff between 2.0.2 and 2.0.3 is slightly over 
>> 900 commits.

FWIW, regarding development flow, within the main fdk-aac repo, I maintain 
it by doing my own fixes on the regular branches, then semi-regularly 
merging AOSP main into my branch. Separately, I maintain a rebased branch 
with incremental patches on top of AOSP main [3], which recreates the same 
exact state of the master branch at the same time [4] - this branch 
currently weighs in at 25 commits.

>> This raises natural question - does any of fixes for fdk-aac closed
>> security vulnerability?

Unfortunately I don't have any further insight into this.

>> Among popular distros, fdk-aac (non-free) version is available in Arch 
>> Linux[7] and Debian [8] (non-free repo).

FWIW, personally I've always been surprised to see fdk-aac packaged in 
distros at all (-free form or not). The project license is hard to 
interpret and contains extra restrictions, which projects such as ffmpeg 
have interpreted as GPL/LGPL incompatible. But apparently some distros 
have interpreted it as free enough for them.


>>> This version does not regularly sync from upstream: 
>>> https://sourceforge.net/projects/opencore-amr/ Note that 
>>> https://github.com/mstorsjo/fdk-aac is a downstream of Fraunhofer's 
>>> code distributed on 
>>> https://android.googlesource.com/platform/external/aac

FWIW, this sentence feels a bit unclear. Both the sourceforge and github 
repos are downstreams of the AOSP repo. Both those repos contain exactly 
the same things; the sourceforge repo is the official front of the 
project, while the github one is where I keep more in-development branches 
and such.

>>> Jorge has reported a potential vulnerability to
>>> https://github.com/mstorsjo/fdk-aac/issues/167 and to Android's
>>> VRP. Android responded saying that they require a PoC and directed
>>> Jorge to
>>> https://bughunters.google.com/learn/invalid-reports/android-platform/5148417640366080/bugs-with->negligible-security-impact#unreachable-bugs

FWIW, regarding that vulnerability - as stated there, I'm not familiar 
with the internals of the code to the level of being able to deal with a 
potential bug - but if there's a sample reproducer actually triggering it 
(like produced by fuzzers) I would definitely produce a fix for it in one 
form or another.

>> As presented above, the fdk-aac-free library, available in linux
>> distros and used by popular software like browsers or media players is
>> de facto abandonware, missing vast amount of publicly available
>> fixes.

I don't disagree with this part.

// Martin

[1] https://github.com/mstorsjo/fdk-aac/commit/9ab67882eca7454dc001e158bc1e6e2219d6650b
[2] https://github.com/mstorsjo/fdk-aac/commit/6cfabd35363c3ef5e3b209b867169a500b3ccc3c
[3] https://github.com/mstorsjo/fdk-aac/commits/upstream-patched
[4] https://github.com/mstorsjo/fdk-aac/compare/upstream-patched..master


