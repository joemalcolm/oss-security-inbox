X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1113" "Monday" "15" "June" "2020" "17:03:12" "-0600" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>" "30" "[oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" "^Cc:" nil nil "6" "2020061523:03:12" "[oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" (number mark "        Jason@zx2c4. Jun 15   30/1113  " thread-indent "\"[oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules\"\n") "<CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>" ("<CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31834 invoked by uid 550); 15 Jun 2020 23:03:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30708 invoked from network); 15 Jun 2020 23:03:43 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:references:in-reply-to:from:date:message-id:subject:to:cc
	:content-type; s=mail; bh=MwN9y0QoBWShRv51JDLK+31oiHE=; b=Xa4uYb
	z+nCmRDsdXc4bPoAW06PyDmR8Deg+Dd3DFA1/IE0sEDN/qO+fp0aZVl2SnhPDfEn
	d0xJsOyw2F+p1aF3cGKFkO7fDYBZAA0Gpn9xQhg15lsUT6sDWbTq1qIOF+BSl3hr
	lUtlFDAhEGEHRF0HegH/lSpo9V2OQHhDcTnVaJZydMxy61fr+5QFvYxDy+fsVTvT
	teS0YDtigCbDNNa+ANwnll3qpCAKYUTiJ3gDgP4+gwKDLfVY+N3C5BMaf2YvBJ78
	i5XoG1AXzDCgCNdUWf3CyqjhChLGVDqRNpmX3roGIoah8z4ip/RKANKx7qcJzoH6
	RMD7VwmSyDzieeVw==
X-Gm-Message-State: AOAM5327wKUFhqHH0wga0E5S3pCCF0lO5z5kvUaPv7HARFScKJVSMaca
	sU1WEngRaw9HFuyZn0LuujiQVUWBNBXt1djI4KY=
X-Google-Smtp-Source: ABdhPJxKN2hcAlxelsvvuega28U4+ifEW+HtOAgIjV7b19Rc1F1bzDXCLjf8MXDLLVGk3vvXZcMqaxm3pZezVEaw/wY=
X-Received: by 2002:a6b:6705:: with SMTP id b5mr29633478ioc.29.1592262203709;
 Mon, 15 Jun 2020 16:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>
In-Reply-To: <CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>
X-Gmail-Original-Message-ID: <CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>
Message-ID: <CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: cve-assign@mitre.org
Date: Mon, 15 Jun 2020 17:03:12 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules
To: oss-security <oss-security@lists.openwall.com>

Hi Mitre,

People are requesting a CVE to track this and are poking me to poke
you to assign one. Note that this would be for a *different* CVE than
the one I requested for the Ubuntu vulnerability a minute ago. This
vulnerability here affects a different set of kernels and uses a
different vector.

Jason

On Mon, Jun 15, 2020 at 4:26 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hi everyone,
>
> Yesterday, I found a lockdown bypass in Ubuntu 18.04's kernel using
> ACPI table tricks via the efi ssdt variable [1]. Today I found another
> one that's a bit easier to exploit and appears to be unpatched on
> mainline, using acpi_configfs to inject an ACPI table. The tricks are
> basically the same as the first one, but this one appears to be
> unpatched, at least on my test machine. Explanation is in the header
> of the PoC:
>
> https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language-2.sh
>
> I need to get some sleep, but if nobody posts a patch in the
> meanwhile, I'll try to post a fix tomorrow.
>
> Jason
>
> [1] https://www.openwall.com/lists/oss-security/2020/06/14/1
