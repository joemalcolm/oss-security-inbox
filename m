X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["719" "Tuesday" "18" "July" "2017" "14:59:57" "-0700" "Kees Cook" "keescook@google.com" "<CAGXu5jK_Qvy8ToLh3pbNcrHvQBV6mgS_pAG6yuAs__DZL2sxfA@mail.gmail.com>" "18" "[oss-security] Re: CoreOS membership to linux-distros (updated)" "^Cc:" nil nil "7" "2017071821:59:57" "[oss-security] Re: CoreOS membership to linux-distros (updated)" (number mark "        keescook@goo Jul 18   18/719   " thread-indent "\"[oss-security] Re: CoreOS membership to linux-distros (updated)\"\n") "<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30085 invoked by uid 550); 18 Jul 2017 22:17:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21980 invoked from network); 18 Jul 2017 22:00:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=nmP/VUvM2c55QRmt8k/qdqZtlFT2qU/Ko3FpQc908u8=;
        b=lEA+PZpf3nUDZe9fLIH1dX0zCxM1hOJfsOj+HF3+PWTvkoIQ05UATaq/DwHE31KaXa
         FxJJR1bXCmJJhvhltiJP31s2RabzfiMGpTGWFZsztrT5Rx4t5jiG48Mq1PHti7PfskUx
         xrX4GXlfKlf4Tn5hxSP7r2qoCql7hVNfbxZcBM29KXBkoDnCmk5qjzf0v25a/EC0JfWe
         qo3xLsh+O8oMQL3tehSIunG5lSzp9OCJeb8ZY/CBQsHa/a3BV8RWqhUWGsFZ4loHtssT
         Rn2eUYmAI+GsN5VTcDfMIVj2jeaWnD65YfOf/1bFTBznetos3dcID3EgXXJ0q4ojTKnm
         bh/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=nmP/VUvM2c55QRmt8k/qdqZtlFT2qU/Ko3FpQc908u8=;
        b=EV/s2ffG/+dTGiXhVC8N1xxannqlWXFEybcYvcL+fApTbC1eucYRTGYf1LI5sVjWAA
         w6KR7LWYS2cL3Vu4liNflnWRd8cpRY/oBurPGc5vKLjA/khosqkBOxV/oGEZjfRfHDTm
         CYHBtSFEWggnzewgmQ72zF/PY/ptENZ+O4OJdQHtVkouMxgVWCqY0Rw5Wt/s86ok3q7H
         vcVeAGEI9TdSPyTZL7qteRBXL9K4OuEh0/tVHMDVpslv/CQ1L3xp/7aB668zBc0nVa07
         wANnUpNmOhul1SofMwYKooqZvgCXjnggDINfiwdTh1IXrD5jti0XiZqgKUZCcUoOT7OX
         vqSg==
X-Gm-Message-State: AIVw113NUYc2FYJ6KrvqZtDLXGoo6IXSuQ5Ly3Q3HzRJfayB374rXkQW
	ULHZWhf6OgeDYlggnj+9xZ5Qyu32/R4n
X-Received: by 10.107.31.20 with SMTP id f20mr3773981iof.116.1500415198455;
 Tue, 18 Jul 2017 14:59:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
Message-ID: <CAGXu5jK_Qvy8ToLh3pbNcrHvQBV6mgS_pAG6yuAs__DZL2sxfA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, 
	Brandon Philips <brandon.philips@coreos.com>, Alex Crawford <alex.crawford@coreos.com>
Date: Tue, 18 Jul 2017 14:59:57 -0700
From: Kees Cook <keescook@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CoreOS membership to linux-distros (updated)
To: Euan Kemp <euan.kemp@coreos.com>

On Tue, Jul 18, 2017 at 2:56 PM, Euan Kemp <euan.kemp@coreos.com> wrote:
>> 9. Have someone already on the private list, or at least someone else
> who has been active on oss-security for years but is not affiliated with
> your distro nor your organization, vouch for at least one of the people
> requesting membership on behalf of your distro (then that one
> vouched-for person will be able to vouch for others on your team, in
> case you'd like multiple people subscribed)
> Kees Cook can vouch for Brandon Philips (both on cc).

To confirm, I am happy to vouch for Brandon. I've known him for a
while, and think he's got the skills and character to join the
linux-distros list.

-Kees

-- 
Kees Cook
Pixel Security
