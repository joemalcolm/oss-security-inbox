Received: (qmail 22082 invoked by uid 550); 10 Aug 2025 23:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8171 invoked from network); 10 Aug 2025 23:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754867629; x=1755472429; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2ADro7/T3gQpaetsJl5qTibD9t99ySGbJlaUdxPEkNs=;
        b=me4w5iWdRkglF6zXEz4kg82O3zJca69oV4XmiZoIPJNr/rBbdQ0TKNySDrrecCeEVc
         yrH80nMG4UZaM1h4xQbZLrj2k+J43eo8ItIilGbfsxTZpANFPN0ZPQVvHJ0WT1iaNa6H
         6fJ5MngUpVyCYRCrPUttPLMgz/MpUtCERbnREWW+UvdRiVTCjB/RHqt1fjY4HQD4lThU
         Bswtd+jgD224Oyo90HNn+Gm8SSN5EzuXurYrwSC1xf6pGMNNHpuPBhLv5cAkQ4tRbEaB
         o+7vnvYi43EfMsWsXN3bWklGPBBN1vs2Ai53HqvEPRDN6zWS/1cXObkrIbqNHrNJXtcq
         vU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754867629; x=1755472429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ADro7/T3gQpaetsJl5qTibD9t99ySGbJlaUdxPEkNs=;
        b=Fmv6j/glFyqMd9BpLjXejNYaWag9HjHl8KQDcZ/UPMbDnsobaXkBpC36OWuMcOQgD6
         9PAAQUce6GmOEShRTsP/qZxxP41Y0CBSb+52/DVDC1M1J5Az/ALsoGoPIXI5PAgzJV4f
         DtQIw6sAK7GeoooCOpx/TEZRT+wNTh5oaLKWTe4gFwKtxixdqCWyTOdVLXfJ4RJPm1FX
         Nk5j1Ivsq/DjDFXNeNPD9XKvigXN9zFDsIXNtl2zXA2FtzOJp89QC1tLZSSL8xevx4Sj
         VNF01UCNwSVUggwJ29J6qklvurK+Cm6Dvxxiz//C5Owt4okghahRmb2nKaJcnrfHPYLo
         ixWA==
X-Gm-Message-State: AOJu0YzQ4JGCFO1R8mJ2NZ7RmMCLobpUlWt7yuDzArVL0sMIjXS4bhQM
	PbG/EjEQf448+1YscTq36I7GOOqHSL7ZpSV8m4HryA7VEkpipJgFBnUM
X-Gm-Gg: ASbGncubjn3b96AOS9+lvsHaTt6pCBJ0G1I9wasc6GBJ7MHp1QjKoS8pUIh5h/GuPPd
	PiIOiQ8tS22dmPKnm5QoPN+IT821JsNCTjJXN19UkIrMNGzz/RZIu/MMPTpfEwCRu2ySPE7DXwJ
	0kPJP11/7+AhQd5Ovmk2EZDuG3cea10ZwvowNGqrKMnCZ9696hlZ5XrKFHG/YmHbNQn9ZAy9Yrm
	1H8na3y78RSRHHLYNcSP5tEC1YKlXCPrAwK/3wv7llSTbpjpXbdUgB6DtHFF4SsMDq77b0TFDvA
	JYK2va29vI5LID9HzsFlKOjw+LwyvPcMzJku3ohhVjzWLszpHSnexyMefBzHx4WfpTYu88TEm6D
	Ll1v6bVhCJa66wUjAfCE=
X-Google-Smtp-Source: AGHT+IGdrQHmQxoKanFWoHW8OmI40vkxMrANU6c7GtlPtqpfUilMGh1lEY7TQ/kzviDlvOFbIx0DWg==
X-Received: by 2002:a05:6830:4422:b0:73b:1efa:5f5c with SMTP id 46e09a7af769-7432d616de0mr8084387a34.8.1754867628668;
        Sun, 10 Aug 2025 16:13:48 -0700 (PDT)
Message-ID: <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com>
Date: Sun, 10 Aug 2025 18:13:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: lunbun <lunbun021@gmail.com>
Cc: oss-security@lists.openwall.com
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
 <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

On 8/10/25 00:55, lunbun wrote:
> Hi Jacob,
>
> Thanks for asking.
>
> For all of the following results, I have tested on 7-Zip 25.00 on Debian.
>
> [...]
>
> Symlink targets are relative to the extraction directory, so if the 
> user extracts to somewhere in their home directory, an attacker could 
> use the .., ../.., ../../.., etc... strategy to reliably point to 
> `~/.bashrc` or `~/.ssh/authorized_keys`.

What does 7-Zip do if the symlink implies a nonexistent directory?  
(Example:  attack targeting ~/.ssh/authorized_keys is unpacked in 
~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh 
which maps to ~/Downloads/.ssh which probably does not exist.)

> If, say, the archive is extracted to `/tmp` and the CWD is `/tmp`, 
> then yes, the best an attacker can do is guess the user's login name.

That would at least limit this to targeted attacks.  Suppose the 
attacker guesses wrong or tries a "shotgun" approach.  What does 7-Zip 
do if the symlink points to a nonexistent directory that cannot be 
created?  (Example:  /home/alice on Bob's computer or /home/bob on 
Alice's computer.)

What does 7-Zip do if the symlink points to an unwritable directory?  
(Example:  one "../" too many while aiming for ~/.bashrc and the symlink 
resolves to /home.)

> However, only specifying the extraction directory with `-o` cannot be 
> used to mitigate this as a malicious actor could use `/proc/self/cwd`. 
> The CWD also needs to be set to a safe directory.
>
> Say that a malicious actor is able to point to `~/.bashrc`. By 
> default, `7z x` will present the user with a `Y/n` prompt asking if 
> they want to overwrite `.bashrc`. However, 7-Zip displays the path of 
> `.bashrc` before symlink resolution, so an attacker can hide every 
> part of the path except for the file basename. Here is a sample message:
> ```
> Would you like to replace the existing file:
>   Path:     ./malicious_link/.bashrc
>   Size:     3526 bytes (4 KiB)
>   Modified: 2025-04-18 22:47:34
> with the file from archive:
>   Path:     malicious_link/.bashrc
>   Size:     5 bytes (1 KiB)
>   Modified: 1970-01-01 00:00:00
> ? (Y)es / (N)o / (A)lways / (S)kip all / A(u)to rename all / (Q)uit?
> ```
>
> Of course, this prompt is not displayed if the targeted file does not 
> already exist.

Fortunately, ".bashrc" and "authorized_keys" are (or should be) highly 
suspicious basenames, but an inattentive user could miss that detail.  
However, ~/.ssh/authorized_keys is not likely to exist on a system not 
normally accessed using SSH, such as a user's desktop, so the attacker 
gets to drop it "free" in that typical situation.  Add that 
distributions often run sshd by default and... well... is there a 
firewall blocking inbound port 22?

Do I gather correctly that the malicious link must point to the 
directory (e.g. ~ or ~/.ssh) that is to contain the attacker's file 
rather than the file itself?

Can the malicious link be silently replaced or does extracting a 
malicious archive leave links to every directory that the attack hit?  
(That could at least make cleaning out the attack relatively 
straightforward.)

> Similarly, for `7z l`, symlinks targets are not listed, so an attacker 
> can hide every part of the path except for the file basename.

This should probably be considered a bug in 7-Zip, although it is 
excusable due to 7-Zip's origin on Windows, which did not have symlinks 
when 7-Zip was invented.


-- Jacob

