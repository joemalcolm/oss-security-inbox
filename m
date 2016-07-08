X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1038" "Friday" "8" "July" "2016" "15:43:31" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>" "28" "Re: [oss-security] On anonymous CVE assignments" nil nil nil "7" "2016070819:43:31" "[oss-security] On anonymous CVE assignments" (number mark "U       glennrp@gmai Jul  8   28/1038  " thread-indent "\"Re: [oss-security] On anonymous CVE assignments\"\n") "<CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>" ("<CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>" "<CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11538 invoked by uid 550); 8 Jul 2016 19:43:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11519 invoked from network); 8 Jul 2016 19:43:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fqD72NT7E63AlZqtAAxY4DbVKaDlnbTtKpluDsvbD44=;
        b=isvwZtlvaxhnHeIRwry3QsMM69wh0sEHt0dv/KyPI0MgyE/G9uzJxXjPK3jgrtjkJk
         YvaeshOZXbOFi4jzqCbosnOCGaU8f3eGSFHPJYX5+yH6EkZPymEVxttFSsIZB2EU/6mp
         8FXd4Sje0onrIYiHT7S1AkOOjMLWl8SqEUtsg72nPgT78qavKOVKS1JOKfvh6JjUtlmE
         2+jGTM3yiPzNGmtOvFBMTHK+g7CS3yLFqr2/kgc0vUteeH7cjCkiCBil6G0jshV9UAhM
         gMCTzbokNEalbSahIFlfHZ173RsWywQdz28tbpyjfQMCYKSYF96SDDHFxyw/nzD6YRqh
         WxLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fqD72NT7E63AlZqtAAxY4DbVKaDlnbTtKpluDsvbD44=;
        b=CL9+YQ11mvicL+yIVejNg9Y+gdTjvqDgIG3JutfJ0vdb0+GNOBJGofFJwo1cBm4SRO
         Qc+4zHVIonw5uE1xTTtAfVcG6anhQkXvhjpWNohoQSimHY6Ld3YDUTtQoQqebA0oAzSb
         REYsMSs2khknjsdvyTvtdmEZh8Yj9dlsL6HmHk96+BqZBOByC8SToXy9HjNmetz1ZMc/
         DBANwlXENLzH/YCmpgt805V0t5gY9Jrc7ghRrduHSJrLoSFLWFMGA6mz6/18ASH5K+ps
         MnpQL4mHKBqFjIa5041kNbgYCoEzKNkOxj2foBPUkYSZAW2ddjkqDqD9GjIy/rR+quVC
         yf7g==
X-Gm-Message-State: ALyK8tISHekfHvh1pRoV6DH1yVF2GypOS2kGMNVkBNpllAdtDkdCLtFQ7YK5V5ytPZ0kh99HjOFkiTv4aQqmZw==
X-Received: by 10.36.60.87 with SMTP id m84mr5230609ita.4.1468007011684; Fri,
 08 Jul 2016 12:43:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>
References: <CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>
 <CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Fri, 8 Jul 2016 15:43:31 -0400
Message-ID: <CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: CVE ID Requests <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a114aa626759a13053725047a
Subject: Re: [oss-security] On anonymous CVE assignments

--001a114aa626759a13053725047a
Content-Type: text/plain; charset=UTF-8

*CVE*-*2016*-*3751*(H)

On Fri, Jul 8, 2016 at 9:55 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> Also if projects don't like "Surprise" CVEs one way to deal with that is to
> request the CVE's themselves when they know something is a security
> vulnerability. Also making it easy to contact them helps, the harder you
> make it for a security researcher to deal with you, the less likely they
> are to.
>

It's hard to do that when a "surprise" CVE was never sent to the project,
for example  *CVE*-*2016*-*3751*(H) which just appeared in an Android
security
bulletin.  It claims that libpng has a bug that allows privilidge escalation
and was reported 3 Dec 2015. I'm guessing that it is a duplicate of
CVE-2015-8126 or CVE-2015-8472, but it's hard to tell for sure without
seeing it.  All I've been able to find out is that it is a "reserved" CVE,
with
no clue as to who reserved it.

Glenn Randers-Pehrson
libpng custodian

--001a114aa626759a13053725047a--
