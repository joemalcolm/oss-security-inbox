X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1267" "Tuesday" "18" "January" "2022" "21:26:43" "+0800" "tr3e wang" "tr3e.wang@gmail.com" nil "36" "[oss-security] Re: CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil "1" nil nil (number mark "U       tr3e.wang@gm Jan 18   36/1267  " thread-indent "\"[oss-security] Re: CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16077 invoked by uid 550); 18 Jan 2022 13:30:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15405 invoked from network); 18 Jan 2022 13:27:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/crXEGXGYaXHkHr0OclBRR74Pg7kbyB4QGufGab+7cU=;
        b=JC0a5L4gy/fF4m1NTDPKQszFRAoZCP8vLfd0K9MSjd7WTorPEVXYCJMupkJ1J7p5F+
         mpfTQQRYXY/Y3k9zGC0SA5HbZe9Z4z2FR5Wh94onirebrDhqET/gOWnx00PbPflCLno9
         s+pL9Qcrnu/ELvsRSitp1uBoECaCccLsHxSnxqF1U/QntfVELqCBbkPDGl9WQR98MLOe
         iAQH+Z6RsDca/R6PWIN4NEqksHk2qBdr83uLWaOUxJF0zU/V2SocRqX1wn/tGpEiZcrO
         3O6Cjyt+kDv3Hx7GNEuc9zFh5UeZU8Pb6Yi2PSQ/pMBuBY+jDpfN5KaelRUruNw3aHJ1
         K/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/crXEGXGYaXHkHr0OclBRR74Pg7kbyB4QGufGab+7cU=;
        b=RlQ5JDFqR4j2NP3HzaZn22fH+iPB3dTkKppNXJX7AyzMO1LzvihGUrsJYZD46xoN/P
         b9hD5lsuhlS2HpnOhHyXTgfo/omHxyZwj/tCGz33A9B1D0f3I6NcjW6+Dam46RlMEUpQ
         EteYLRfUBsnv2tmeVE61viaaCnhTYfjTU6aWg3whKwrHCHaGahqu6XBhSxDeMqroYufP
         Px0RyXrh0430MTtFPWlExXwpyh7nYpWin0m3c5p4LxSRJ803eX/gCS9BryAuseB0vpiz
         KafMrJ0J0AttjLfwZSIOlswA54gNfW9ZfmfYyuCTTSQzHEv5vi/dDQDYXGdlmhq0bEfl
         CyjA==
X-Gm-Message-State: AOAM531IgKqwMSppeRln4KGculEX1bBcQNH3b0alcp3glhynzsAAxDDP
	Mw/pnmf2XzJjq0SeSWlho03WPwUQtiF2ajm4IiVaatnEtQmu3w==
X-Google-Smtp-Source: ABdhPJzZHXqkwWQrwBI7A6PC1tEhMMJ1PFbmKFbWx9cLEpF/gYjF9k0oDqDIcXb3/8H+DWg4Uh/uCGv7I8PsFLucbBo=
X-Received: by 2002:a4a:c57:: with SMTP id n23mr18324085ooe.55.1642512414252;
 Tue, 18 Jan 2022 05:26:54 -0800 (PST)
MIME-Version: 1.0
References: <CA+eGCHb3=V20Fh-dda20O6xtfBszuKmHnqSupsmrz_1Xuj3N4Q@mail.gmail.com>
In-Reply-To: <CA+eGCHb3=V20Fh-dda20O6xtfBszuKmHnqSupsmrz_1Xuj3N4Q@mail.gmail.com>
From: tr3e wang <tr3e.wang@gmail.com>
Date: Tue, 18 Jan 2022 21:26:43 +0800
Message-ID: <CA+eGCHa47pnvi376PCQJE-zMaVR_y6WLTK4CyE-yKT87jDZKuA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fda0e105d5db3852"
Subject: [oss-security] Re: CVE-2021-4204: Linux Kernel eBPF Improper Input Validation Vulnerability

--000000000000fda0e105d5db3852
Content-Type: text/plain; charset="UTF-8"

Hi all,

This post is the exploit overview of CVE-2021-4202.

We successfully exploited this vulnerability to obtain full root
privileges on default installations of Ubuntu 20.04.

*Exploit overview*

1. We create a lot of BPF ringbufs, and choose one of them as victim.
   The BPF_FUNC_ringbuf_reserve allow us to have a pointer A to the
   beginning of the victim ringbuf's data field.

2. We do a pointer subtraction to point back to the victim ringbuf's
   mask field and overwrite it to 0x80000fff through
BPF_FUNC_ringbuf_submit.
   This allows us to do a limited out-of-bounds read/write. If lucky,
   we can read/write all the fields of the ringbuf behind the victim.

3. With the full control over all fields of the ringbuf behind the
   victim, we can manipulate the ringbuf to achieve a restricted
   address read/write with side effects in the vmalloc space.

4. We spawn many child processes, and use restricted address read to
   find the address of task_struct and cred in the vmalloc space.
   After zeroing out the uid/gid/... , full root privileges obtained.

Full exploit code will be published on github in the near future.

Regards,
tr3e

--000000000000fda0e105d5db3852--
