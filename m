X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1169" "Friday" "25" "May" "2018" "17:07:08" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZf1bGzpUUqUWamvLwP+x=pmMmojRsn9jRma9GsHnaZhFQ@mail.gmail.com>" "26" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052515:07:08" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       andreyknvl@g May 25   26/1169  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>" "<7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22159 invoked by uid 550); 25 May 2018 15:07:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22139 invoked from network); 25 May 2018 15:07:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=FX4mmLgZTgFC1j/AiFrCwsoz6uTCj8yFffFrWWLLviw=;
        b=h6bJxUIn1UhPMllacTTud+GGwLNbn+/B+4tLPJPpny2dcs2oA5pDoCDcnp4q7JCrjH
         +4fPKChMZ9xTMeuWUjQGZsE+RHCgI0ZQjoYcon0Y7DTSiyOp9cZdLGA0szr5wN1m9SsP
         o10zuooHIZtihV1N6rGQ62W/qdXjgl9LHua3KPLLFDg+cHxLRB0vazuvVlgBmbE1+vXS
         OAtzs6+sXCIASw6rpfSUBLHlO/GTnF7JkudsoJ5iMp2PGpG0YpI9dBRYvQGUcQ1/OYJm
         fWQJ59edyTUeE0dzZ4bH3zB6rPguDhWMAge7nyuso7Y8rBlKdk/zHp5iuNxnSoLwlN4g
         cBOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=FX4mmLgZTgFC1j/AiFrCwsoz6uTCj8yFffFrWWLLviw=;
        b=DFHYlsv1Ly3BCDJ9ZmJd4h2FGLo7iVL/eFGeQNkx2CcmRji45OtHWuekMgZ8stAjZ/
         BCg/4NajegJsdk3/GwKHUfoRtZxRMysuMTL1bxBx/xXlmjPAsy7W6E4qTn/OHsqFeGp3
         3vJSdv4pUxAP/rPx3JpNE0fpBNwgbYwNMEgbq3OGweMjwn6z4oOIFGHZ/qGp3Pj+ulXp
         psE3M+fTIaU4hto7Pje8XfPSCzhuqQ/moheAMpZs2JsQRtn3A+pS1EaJIUOlo/BBW8Gv
         NV4ildp+rZHRbKxNpTVrnh1u35CTcgY8BHG9MiS5dW21AAdLdskBMLIpuLhGU39oC7b0
         hj2g==
X-Gm-Message-State: ALKqPwddpvgAEPx4Es9sB9DTBe0dFHbvwCPnfgbJAlja/8MyRJUyo3it
	IbxFywzLbfb3JU9NLoKgYXnLAHxadWZfg7cfw0k=
X-Google-Smtp-Source: AB8JxZqkRQqFBEHyp9fKZVTOMJXceGw5N+U65lbEOC/Dq58YFA6tcIr4Vw/pe+o9Z5BmoZZf3MVTMskPR+64ALHCbPc=
X-Received: by 2002:a2e:9d41:: with SMTP id y1-v6mr1979112ljj.112.1527260829065;
 Fri, 25 May 2018 08:07:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
 <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
 <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
 <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com> <7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Fri, 25 May 2018 17:07:08 +0200
Message-ID: <CA+fCnZf1bGzpUUqUWamvLwP+x=pmMmojRsn9jRma9GsHnaZhFQ@mail.gmail.com>
To: Evgenii Shatokhin <eshatokhin@virtuozzo.com>
Cc: oss-security@lists.openwall.com, Vladis Dronov <vdronov@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

On Fri, May 25, 2018 at 2:04 PM, Evgenii Shatokhin
<eshatokhin@virtuozzo.com> wrote:
> If I understand it correctly, Syzkaller programs run as root. Therefore, it
> is still needed to check which of the bugs it has found are security flaws.

No, syzkaller/syzbot runs programs in a user namespace, so any distro
that allows unprivileged users to create user namespaces (e.g. Ubuntu)
is vulnerable to most of the bugs syzbot finds.

But nevertheless all those bugs need to be checked whether they
actually are security flaws, and that requires quite a lot of effort.

> As for this particular bug in dccp_write_xmit() - I stumbled upon that
> Syzbot's report and checked that the bug was exploitable by an unprivileged
> user if dccp modules were loaded. Then I reported the problem to RedHat, and
> they desided to request a CVE for that. The problem is not critical for
> RHEL, by the way, but still.
>
> I don't know, if the process was the same for other bugs found by Syzkaller
> they requested CVEs for.

OK, if the process was like that for the rest of those bugs, that
explains a somewhat random selection of syzbot bugs for which CVEs
were assigned :)

Thanks!
