Received: (qmail 16156 invoked by uid 550); 4 Apr 2024 15:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16126 invoked from network); 4 Apr 2024 15:09:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712243373; x=1712848173; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PuXRA6KlPB+w8EpqEQo0EoOMZm6ZB9KCotaWXwsJiXg=;
        b=YKsbZNEEXIRi0z3AjFkVFYU1ecRIgOCRgM4D+qtNWlPzz5XbUDwYQRpPFg7HPBnLZx
         yyAbr4uC1EzdawfBA6IynTZJ1oVP7iPrnWOagkLuLo1lIIysPMk8eettL0ZOWzmbTmGt
         fG+dRqbE7LQalBLRZ1WzAwM5a1V+/BNT4RNDyrajuXWFUzZLPlb9503S9bc1mKuEtStg
         a/+wWKj4muvSUtuzzJbHreTDEAw8xxfgWAB1aXhXO2dMKyrI2OXkSVf9FmZoDLo3fgxL
         V7wAH1qQ/gA31drZWj616wCzn3tcyCCQENsQhzclXfuMZ7oJPgYmycPzReF1pzL+uf//
         Q10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712243373; x=1712848173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PuXRA6KlPB+w8EpqEQo0EoOMZm6ZB9KCotaWXwsJiXg=;
        b=VPZftfo85ZzV0LZg0OWw8Zy2qCNlwxNl8McgnEzAbF0PwWRN+KU2fMYiYHRJxxOXtn
         zrstHnAgBIu7AGyjapj2Mz3Nd10RkGlZPm68fvxEEYTkrtVK6752cyehwIbmL0BeQUzA
         wRi998s3XyaAVcOLXFQxDYV36jqDCFsULtNqqVgCgZMPbqzSkSItwlrnSCuqNL5UOGx3
         RaJBShtBf6/mllYsxlWfMX/s7uSL7cUZBD+s6mBKjIMsZqI5A526+zRCosJYM7fdyEb0
         dNlOV43SIro6qDGPgrlrgilMOp2wNJ3J4TnCFQO3kttdnLy4Dj7VGWkM7/WLozAeo6gY
         6XWA==
X-Gm-Message-State: AOJu0YzbQ2HiOtshUrb2pCgExz8MlzkQBmBWSRoYnmrTxNkpRgpMss+1
	Vd+njCLCHEVEYgSrdT4MIy42Mho6gx5sRDx10ixdIuxXtjSVPUcoaOrN+ls2
X-Google-Smtp-Source: AGHT+IFM3Wi1ys+xYf6+P/wOvJTKfnTd/zz2/6ilsABroyBdcgzRrhAibEepcv46E/Q5ZJTxp8VMow==
X-Received: by 2002:a05:6a20:1019:b0:1a7:2437:386f with SMTP id gs25-20020a056a20101900b001a72437386fmr2402391pzc.61.1712243372926;
        Thu, 04 Apr 2024 08:09:32 -0700 (PDT)
Message-ID: <9f0f1c21-7f46-348e-eeb8-1bcd81de5116@gmail.com>
Date: Fri, 5 Apr 2024 02:09:31 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: oss-security@lists.openwall.com
References: <DB9P189MB20494D14F78BAC99FB599A5AC33C2@DB9P189MB2049.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <DB9P189MB20494D14F78BAC99FB599A5AC33C2@DB9P189MB2049.EURP189.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Just a reminder to never run ldd or strings on
 untrusted binaries



On 4/4/24 12:16, Markus Klyver wrote:
> I'm not sure if people are aware of the fact that ldd can run the executable under certain circumstances. Also running strings on a malicious file can be a bad idea:
> 
> https://jmmv.dev/2023/07/ldd-untrusted-binaries.html
> 
> https://lcamtuf.blogspot.com/2014/10/psa-dont-run-strings-on-untrusted-files.html
> 
> This advice would extend to other common tools as well, like objdump and readelf.

Thankfully the strings behaviour seems to have been altered,
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=7fac9594c41ab180979bdf5927ff7f7e1d13a9e9:

> commit 7fac9594c41ab180979bdf5927ff7f7e1d13a9e9
> Author: Nick Clifton <nickc@redhat.com>
> Date:   Fri Oct 31 10:10:37 2014 +0000
> 
>     In response to a public outcry the strings program now defaults to using the
>     --all option which displays text from anywhere in the input file(s).  The
>     default used to be --data, which only displays text from loadable data sections,
>     but this requires the use of the BFD library.  Since the BFD library almost
>     certainly still contains buffer overrun and/or memory corruption bugs, and
>     since the strings program is often used to examine malicious code, it was
>     decided that the --data option option represents a possible security risk.
>     
>             * strings.c: Add new command line option --data to only scan the
>             initialized, loadable data secions of binaries.  Choose the
>             default behaviour of --all or --data based upon a configure
>             option.
>             * doc/binutils.texi (strings): Update documentation.  Include
>             description  of why the --data option might be unsafe.
>             * configure.ac: Add new option --disable-default-strings-all which
>             restores the old behaviour of strings using --data by default.  If
>             the option is not used make strings use --all by default.
>             * NEWS: Mention the new behaviour of strings.
>             * configure: Regenerate.
>             * config.in: Regenerate.
