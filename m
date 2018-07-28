X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2091" "Saturday" "28" "July" "2018" "23:23:57" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180728212357.GA1623@eldamar.local>" "62" "Re: [oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release" nil nil nil "7" "2018072821:23:57" "[oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release" (number mark "U       carnil@debia Jul 28   62/2091  " thread-indent "\"Re: [oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release\"\n") "<20180726090936.76ac1839@computer>" ("<20180726090936.76ac1839@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3545 invoked by uid 550); 28 Jul 2018 21:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3527 invoked from network); 28 Jul 2018 21:24:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=0c6NYvXmh05Sn8OQfhhgjvu5JapmqfnHi3YHI3MQorE=;
        b=SGFWqNlozdOAM7VCfZ5oCNsjMGVHwb8u4Vpu8Pznr+cS/oJzwODYtNRKTPPglwesPu
         TGIuOIBlFuI5Q+rNuTsCgp9tEwhTY8wkonpVQMFdW+A/4wqODAp/3eyiqMRwST+0yqdw
         1ya6k2FJNilKFRZWHf4/EQKv/Z3D3DH6S5Fal3Ti27NeG5HD4ZRkKEkG//rFtxchB/j/
         9ah4nzfcblzeCacoWNxYfEZBYMpqC/LJytUGMprMH3M7bv1dqDxpA+o0L6ZkEM7V9dPL
         gycZBuW0numxQBd7qzQqd2zcCYRax/i/Wt0PEhlMv9sV16R5pD6QbYcSyha/Is8QG7OI
         /zTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=0c6NYvXmh05Sn8OQfhhgjvu5JapmqfnHi3YHI3MQorE=;
        b=PQvsVM+W7N8zYfulxbhkQ/p4bNn2CL0scCv6NrlR65lJoRQosqbAVR2iMDVjcNQlbX
         TwL2DOXxCPOAwTh7uEBX6MCWzlTEdmm9jt0EYoXpnvKcN5I4djAmRp5WCSDPniZznFMy
         CrwITjgJxZnF079PtOD40sUk2weUKq4hsD6tJdz5AxPyZrjRhAfgM2QaYqPxgpSSEzTt
         WnUUX2UU73aZRbv1RGOpJwiC3Excvl2UEXyDCros+37XyU55nezn2M2K4gwq2VHKuSZ5
         BC/3Ep4hoQs7n30geSlWa+8i/voEYVUKcSmowPn8wSAVr42yl2uAR1CApfZoaLQxDmda
         Ov/A==
X-Gm-Message-State: AOUpUlFNZK1P2lEX5Q9JFhTd0oQrsmcdcLFYUXtcB9DzD7hOHerFt0f9
	CNnUz1fpyrOZbEo9NdfDVVkwIw08xII=
X-Google-Smtp-Source: AAOMgpc8FAR2wLMBxDK1S+JlZNCJ0Wmx6dSEdn+2vzml8/0979shoPOk4YTMcrolPmq1KKFf75uY8Q==
X-Received: by 2002:a1c:851:: with SMTP id 78-v6mr2956241wmi.11.1532813039114;
        Sat, 28 Jul 2018 14:23:59 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 28 Jul 2018 23:23:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20180728212357.GA1623@eldamar.local>
References: <20180726090936.76ac1839@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180726090936.76ac1839@computer>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Fw: New cabextract 1.7 and libmspack 0.7 release

Hi,

On Thu, Jul 26, 2018 at 09:09:36AM +0200, Hanno Böck wrote:
> Several memory safety bugs fixed, see below.
> 
> Begin forwarded message:
> 
> Date: Thu, 26 Jul 2018 00:46:18 +0100
> From: Stuart Caie
> Subject: New cabextract 1.7 and libmspack 0.7 release
> 
> 
> Hello all,
> 
> cabextract 1.7 has been released.
> 
> It fixes a few bugs, an introduces a new "--encoding" option, which is 
> made available if the iconv() function and/or libiconv library are 
> available on your system. It also now tries calling setlocale() (if 
> present) with several possible locales that have a UTF-8 ctype, to
> allow towlower() (if present) to lowercase non-ASCII characters.
> 
> cabextract can be downloaded from https://www.cabextract.org.uk/
> 
> SHA256 sums:
> 
> 06d3cdded6519fccff1532f64ab54ce6cc3c7be51bcc6fff0f91092179a9bb26 
> cabextract-1.7-1.i386.rpm
> 11570d7e5ba0f46f458b88d76d2f0bdcad3a1266055ea5c8229830be2023e16e 
> cabextract-1.7-1.src.rpm
> 297203c826c004801ea1b17414f568e7bdf56c3ae9bbaca4d8514e8a56e506bd 
> cabextract-1.7.tar.gz
> 
> libmspack 0.7alpha has also been released. It fixes several bugs:
> 
> * bad KWAJ file header extensions could cause a one or two byte
>   overwrite
> * The character U+0100 in a CHM filename could cause a one-byte overread
> * libmspack now rejects blank CHM filenames.
> * Fixed off-by-one error in CHM PMGI/PMGL chunk number validity checks, 
> which could cause a crash by dereferencing uninitialised data beyond
>   the end of the fast_find() chunk cache.

MITRE has assigned four CVEs as follows

CVE-2018-14679:
https://github.com/kyz/libmspack/commit/72e70a921f0f07fee748aec2274b30784e1d312a
(for the off-by-one error in CHM PMGI/PMGL chunk number validity
checks part).

CVE-2018-14680:
https://github.com/kyz/libmspack/commit/72e70a921f0f07fee748aec2274b30784e1d312a
(for not-rejecting blank CHM filenames part).

CVE-2018-14681:
https://github.com/kyz/libmspack/commit/0b0ef9344255ff5acfac6b7af09198ac9c9756c8

CVE-2018-14682:
https://github.com/kyz/libmspack/commit/4fd9ccaa54e1aebde1e4b95fb0163b699fd7bcc8

Regards,
Salvatore
