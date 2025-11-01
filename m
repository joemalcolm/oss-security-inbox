Received: (qmail 25670 invoked by uid 550); 1 Nov 2025 21:33:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26571 invoked from network); 1 Nov 2025 20:15:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762028139; x=1762632939; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lfPSgFgm7BxiEca/BgplssQ8G/cto9B8yu6siiubd/o=;
        b=dQHUDO/TeBk+6qJ99inohkqGa/aO7I1Tqbfz9qazMZ3gYNlofYMstTyeKIoepAMoJm
         EaDALUnkULjSBmCr5hgcIhQI5m1puoe73tm8eOLYpGHs9bhhePpKfRGEhc92FyXr0goo
         cnwcSi7eeWTmpN7R+0kJ7O5taW+3gC8rKgPax9ZbK1QULDczfYThpFSwaZp1Vi/Bu+KA
         kfH0d+MOlA2XylQ7FswZpRK8FADTlADMoxXCFiBywVji2KSUTsdj1jJ5BM2LfD+5331w
         zhcTCp2ZxRF9xnAKC1JHjCp11visa5HHdAJ4ynFHNC1/f4iqRyHsRqrdPT9Wh/ILmMdR
         5HIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762028139; x=1762632939;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfPSgFgm7BxiEca/BgplssQ8G/cto9B8yu6siiubd/o=;
        b=FcZezM2uudKP4oz3GeSBNOon83HsN0U8r47PE6+f1z8PnjG87BIaG35Mv/uAeJearr
         L2A6V6xf77uF7UFPhFoFzelEvvGeo6MEpx2V0J3xf/xUnEZTRHuv5HJdsgFbQwvgo9z6
         Ec/ckHExArPQGEUOAJQMnan/VhmjY8mCDdZZUecrOHWNfgIrNruadk09XJOI3ausfuTQ
         7kQXTEPDxq43XMFvee40N/vehUZznyK9XzOTeGpQbbLBp0z2v4Bf9Rc8yUahy51GymXJ
         JpfxrwBg1DNc1BJXHjXza//wIFuujGdRinClD0tuVk6qMwtb8EbYyaHlcmnheNSnqoZi
         Qdog==
X-Gm-Message-State: AOJu0Yyd9kj1W4d7BuIxN2oyXaE2MHUyKUJLMV90Z2LboD/kQG1Mu1Um
	2i2Ee7yYIaUCwA14i8tPoMHNxqtlKd8nLDHgL8Lf5PcRTqYmqUsu9Z3p3fNkYzOS
X-Gm-Gg: ASbGncsvVj9UYa5wXDKwqyYffWSc/n6ceiXvX3k7xKR3nTyM1tCT09JCqu7AePLIHRC
	itm1Y4wqLso8tYP5jkwEknCKXwxh2y59DJBOpwuVESLtv/N5G+nFULl/lDbe2/Qw4/bKq6ckKHv
	yU1LFFez+hQvCPhtoQ+XWyavjoxr11aL+NfcDFHVY5tIaM7j7Lvaqj170dElBLtnC64D9qYnt74
	tsy3cK3to9rTW8YMq1WNQPzTiOHCz7g57V17JIVwymFkdTJNYaP0w1MY+B+JepwHQRTRckjS6hR
	rQLnQEvnUZNCATRUe2N9I6498+HkJq/kHU9EdzA+PO4dv7e3It9b5sQcB/KQGxvUJTTtvp850va
	7HhFHbdFEXYUM5U+R9I0NwJeM3c5z8zY/VHhGu3Nvvu+/EiHz9k0qlFr0+w==
X-Google-Smtp-Source: AGHT+IH9oM/wqgQXQrQQFccIMJbMgyEPWmqDX9rat2+ee5LJJXTbfMg8kjMAxDbtBMkKP+1nAv1NAg==
X-Received: by 2002:a17:902:e751:b0:271:479d:3dcb with SMTP id d9443c01a7336-2951a36c5cdmr110215545ad.6.1762028139299;
        Sat, 01 Nov 2025 13:15:39 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Russ Allbery <eagle@eyrie.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <875xbtlf4z.fsf@hope.eyrie.org>
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
Date: Sat, 01 Nov 2025 13:15:38 -0700
Message-ID: <87qzuh33x1.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Hi Russ,

Russ Allbery <eagle@eyrie.org> writes:

> Solar Designer <solar@openwall.com> writes:
>
>> I don't think a "check that the config file is root-owned and not
>> user-writable" would be relevant since a maybe-relevant threat model
>> involves config files intentionally created by other software such as a
>> web UI, which would set permissions such that the file is processed, and
>> since such checks are uncommon and the lack of them does not mean the
>> software supports untrusted config files.
>
>> Other than that, I see that this gets tricky for a CNA to evaluate
>> without input from the maintainers, so I may have been unnecessarily
>> harsh on VulDB.
>
> This is a bit of an "ask the Lazyweb" question since I have done only
> minimal research, but is there any way for me to declare, as the software
> maintainer, what I consider to be the security boundaries of the software
> in a way that can be at least partially machine-readable? I know there are
> tons of modeling languages for *building* software, imposing or checking
> access control, etc., but is there a way for me to *label* a free software
> project to communicate information such as "edit access to the
> configuration file is arbitrary code execution by design"?

If it makes you feel better, I do not think it is an "ask the Lazyweb"
question. I actually had the same question.

There is a recent example in GNU Tar CVE-2025-45582 [1] which describes
a situation that has been described in the manual for 15 years. Copying
the relevant text from the manual [2]:

    When extracting from two or more untrusted archives, each one should
    be extracted independently, into different empty
    directories. Otherwise, the first archive could create a symbolic
    link into an area outside the working directory, and the second one
    could follow the link and overwrite data that is not under the
    working directory. For example, when restoring from a series of
    incremental dumps, the archives should have been created by a
    trusted process, as otherwise the incremental restores might alter
    data outside the working directory.

There seems to have been agreement to change this longstanding behavior,
but the CVE situation seems to have been handled very sloppily. The CVE
was assigned on 2025-07-11, and the GNU Tar mantainers did not know
about it until 2025-08-07 when a third party inquired about it on
list [3]. Presumably upon scanning a container or something like
that.

Collin

[1] https://nvd.nist.gov/vuln/detail/CVE-2025-45582
[2] https://www.gnu.org/software/tar/manual/html_node/Integrity.html
[3] https://lists.gnu.org/archive/html/bug-tar/2025-08/msg00000.html
