X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["367" "Friday" "8" "October" "2021" "20:37:33" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" nil "13" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       ylavic.dev@g Oct  8   13/367   " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9290 invoked by uid 550); 8 Oct 2021 18:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3985 invoked from network); 8 Oct 2021 18:37:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WgBkk9HjShDyU0UoE1/c5ypeXis3lDDtJtaRYdS/trQ=;
        b=SFq2U+rd5Ss7JuE6/fEpwvgbRyipV012qshjAf3z62IcfBFBtWmGnGbAgIzxTGFz4S
         KQUutgIrgd97ZJNV0fkPXH2R6XrdmpDPEx5m9G8PuuizPeXMQkv0yPOwwBlE3XDTEbDF
         enCJbGllUX3FSJO6p9FLs8fMjDEGeUCScB2CkUPBUFVX1cXxI7Bav6j/Wy3xZD6Ly9Ie
         p/Ir1yhASnrjHtytKhq4B3wSAA+4kbxUmYQV1+Suu1hEwDh403txcgG6XgaFUlGoRBf+
         3wRgbsSC1iAD/IPBQYLBar+3g6T5R0RWvtPau7lAkwYLeKURy6tCROcswBBRInpf16SL
         DrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WgBkk9HjShDyU0UoE1/c5ypeXis3lDDtJtaRYdS/trQ=;
        b=OVQeqSKPVbQfU+2yj201V10sqytqWcriYCoh68gGw4PtUCFLoIFX26zHZ4VMKO+V3E
         k/pKf5/VNxTCVeT9BI5TmIrdLk4+DFQMFKopEbTGHdqVlixklpg9lpXMly9XvhPU3ZO6
         UdDQ61vIxd+9Y8PNsgpL2osBHmzQ8x0slLejNN7o1KjzUNF7M6HZQHHS1Ve+HM/jj7HV
         cVaYHYHIfxNXodRMZy9nDB6N07QwLiOAy+OEUJZrhVfvPVxBB+8n0jk0zDehZFS6zj6R
         3q0BAVW7OVBUXBIlnGTRwRw1ZAdt5nGWp7HPPIBi0Jl1SKTbjKZxC6c2G7QhDy0WXD6H
         G0Pg==
X-Gm-Message-State: AOAM532i/Hfcj1ZZuuOC5RzeYDTmY9RnQ/gdkrbGJMTQML/NQVxZPHOc
	r0MO90OcOlwIJSLwmRqtOnShQKGzVXfpeNkN6g1Gzv2ZYn0=
X-Google-Smtp-Source: ABdhPJwYnYXSFmyqZRHC9NjegUa4ij/KQA6Q9ivF/mZL3DP9IWN0iEfgCyQO4FbB42YwVMoyFwzAiNq1W/8slwFgyOs=
X-Received: by 2002:a17:906:9a07:: with SMTP id ai7mr6217057ejc.55.1633718264754;
 Fri, 08 Oct 2021 11:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org> <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com>
In-Reply-To: <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com>
From: Yann Ylavic <ylavic.dev@gmail.com>
Date: Fri, 8 Oct 2021 20:37:33 +0200
Message-ID: <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)

On Fri, Oct 8, 2021 at 8:53 AM Roman Medina-Heigl Hernandez
<roman@rs-labs.com> wrote:
>
> I posted RCE exploit for this (it works for both CVEs: 41773 & 42013)
> and some other details regarding requirements / exploitability, which
> you may find useful at:
>
> https://twitter.com/roman_soft/status/1446252280597078024

Thanks, that's fair analysis.

Cheers;
Yann.
