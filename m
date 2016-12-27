X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Tuesday" "27" "December" "2016" "09:19:28" "-0500" "Michael Hess" "mlhess@umich.edu" "<CANNt_rZggP16a_B17bSZbc-A-eWyf53rktWzQibqZTu2cDc=GQ@mail.gmail.com>" "24" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]" nil nil nil "12" "2016122714:19:28" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]" (number mark "U       mlhess@umich Dec 27   24/651   " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]\"\n") "<CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>" ("<CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15503 invoked by uid 550); 27 Dec 2016 14:28:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11381 invoked from network); 27 Dec 2016 14:20:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=hdt6CNFsG9dOHNGB//lou9KJyJuD0MH9KZzqIHsf7sI=;
        b=cZA8xPy5k2tdmBVOZS7qdTTRICHx6q7Na+B2XuLlteWWvWrUPxyf0mbbu7KrmZ4/yh
         B2RNnJigcSkIOMaakl1kSGWd6mJem7/2JqvCr+SkNV0u57zCdXZnuZZvYplRRZzwgWxa
         R5KXRqAY9g/Dp6fGRa06weWdc+oTsijwiA09x+XA2YWNjVi60RVViFujS29oIXg95bWz
         8i8FnKnKdPDN5j8w1XTipCH3CakRnCC/sbUw6A2ry/tzDadk3exPSMKMVHI3F8zJrqHB
         l3FflJ69UXnPhFKJtg4j9rmy2PMbCYW+hGCTl+sj80r2D/SxqyJ5rgm+bBYM/NtAuAm7
         Qsmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=hdt6CNFsG9dOHNGB//lou9KJyJuD0MH9KZzqIHsf7sI=;
        b=UbHGo1Sx3J6gWNJETNr00DPB5hmZjZR3oPxqlWneyaTXx0GJICzSyYQDFFrFep3OBs
         2WJzdN+6N7L2jON5Dk6lsbpEQjOtJMYKTr4epfoYIfGIX50Z7NBZJoPdIfQ9xGFBRccE
         qraWHBpkYFd9Rkn7t6VfpT95z454C20hS/mlIguSpbB/6PqSZtG5NoKN0MCkDrLKNxTz
         V/3gHq36PLc2UWsR/LRpnHVvevHi+zuUn4KoKHxeD5JSv4HG/mTvhEo2sgRHawEJptVI
         BfK8YYq3bwmMopIEKiAZW50r2Pdu+LSEYmKrDmRy2dmCLUP8ZR6H8ASOXRPEQZTuWIWA
         dlTA==
X-Gm-Message-State: AIkVDXIfn/WMQHsZg5/Cd8cdPNXqqAhMrNDH1ZC0P6E1ZnmWaAvnqcFxolFY/W44zSiv2Vt0yKBSlOuQuGV5fw==
X-Received: by 10.202.252.8 with SMTP id a8mr15001906oii.159.1482848409021;
 Tue, 27 Dec 2016 06:20:09 -0800 (PST)
MIME-Version: 1.0
Sender: michaellevinehess@gmail.com
In-Reply-To: <CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>
References: <CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>
From: Michael Hess <mlhess@umich.edu>
Date: Tue, 27 Dec 2016 09:19:28 -0500
X-Google-Sender-Auth: pMfWwjQLwqBdPgj_wuJiniGGo4I
Message-ID: <CANNt_rZggP16a_B17bSZbc-A-eWyf53rktWzQibqZTu2cDc=GQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated
 advisory] [CVE-2016-10033]

David,
You might want to hold off on releasing this until wordpress has a patch out.

https://core.trac.wordpress.org/ticket/37210

Michael

On Tue, Dec 27, 2016 at 6:45 AM, Dawid Golunski <dawid@legalhackers.com> wrote:
> PHPMailer < 5.2.18 Remote Code Execution
> CVE-2016-10033
>
> Attaching an updated version of the advisory with more details + simple PoC.
>
> Still incomplete. There will be more updates/exploits soon at:
>
> https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10033-Vuln.html
>
> https://twitter.com/dawid_golunski
>
> --
> Regards,
> Dawid Golunski
> https://legalhackers.com
> t: @dawid_golunski
