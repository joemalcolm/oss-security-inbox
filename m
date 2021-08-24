X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1480" "Tuesday" "24" "August" "2021" "14:19:59" "+0530" "Mohammad Tausif Siddiqui" "msiddiqu@redhat.com" nil "48" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "8" nil nil (number mark "U       msiddiqu@red Aug 24   48/1480  " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3384 invoked by uid 550); 24 Aug 2021 10:55:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15734 invoked from network); 24 Aug 2021 08:50:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629795013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cBz36AOzINGWWPbY8ZwPfqqPASk8+Mmnw0lnpATK3HY=;
	b=iUGtcgVWPdjS/HWQ0xJIw6SD35Sg8SNzFU2qlZ8sVR3HVIKb2RUXq868FXQOyFuPMNk+/w
	VZdQV0qLAGP6w8HuX1E8vESM4kxyxeZ9/WUETJp//DiS2UNCKMMy+G6sDIuYTxPqdlbiVR
	XvUHz5XGwk4SbPOT406d2/NlE3Uw5I0=
X-MC-Unique: 8-atkYi1P4OMPE94W6UyeQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cBz36AOzINGWWPbY8ZwPfqqPASk8+Mmnw0lnpATK3HY=;
        b=m+oBPivpDSQQD5/tLOA5wx0hYIye0T0e/6n0zzGQmRM30dQASX6P2dDBXZ4p9BhMdl
         I5q/gHVaQc4wxmV18F6Z4M/gWGTQ1Yp90BLhF0pr0JX0CWvdtemcDMz+fEnmgL7lRfaR
         buRspjyGcMNRIlPM3YqFjNcZwvN1NaPELSg2DgU38hTfpfs2Dgd7SKY/pydwd2SC8H/Y
         B75LIAfRJV9fEIJWkaipJG0d/VbuLJGyX1fcC5umlLxXbEEsiDp9/wkg6X7QK65OYpYS
         RSAgxaaVqmbtqzLhmut+qjq/NZVeBwmeJse6PshR3e+zN+hu07XGPu8zQH74mIIpRkGZ
         nSgQ==
X-Gm-Message-State: AOAM533cOLGCSh91KgtL0kgn6L9Ab+V5pDviUZ2MfyegE2FXQMz02jR/
	FxWkfxqRhwihjsOC0oWBxkbFLWGm8lkHUY/6jtQ/7ZaOX7Zz+Xt7xv6VlewByYqlJjZ+7Q9x+Zq
	/Iejs8oa5aJW56Pw1BrYwr+2ljDYsqW9TXf99zHDPT4xu
X-Received: by 2002:a05:620a:69b:: with SMTP id f27mr24285463qkh.287.1629795010507;
        Tue, 24 Aug 2021 01:50:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5GYwRnbT6ef9VhiOI0mm1AfvDH8Pjlrsm6pzgMYGnMtQ8BRUyVV/zDJCG7qhrltwf/1ImozeZUx+Fg+n/KLo=
X-Received: by 2002:a05:620a:69b:: with SMTP id f27mr24285440qkh.287.1629795010201;
 Tue, 24 Aug 2021 01:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
 <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
 <CALJHwhSkYWmBk3u5nBnOZfSskksFPP6k9oFfWGdtDpbr1yVFAA@mail.gmail.com>
 <CAFcO6XOYL=EN3xkkyE72gR_tau+3=BhrgNub3NYtR1isr77MbA@mail.gmail.com> <YRurAomxEDQrxY+i@eldamar.lan>
In-Reply-To: <YRurAomxEDQrxY+i@eldamar.lan>
From: Mohammad Tausif Siddiqui <msiddiqu@redhat.com>
Date: Tue, 24 Aug 2021 14:19:59 +0530
Message-ID: <CAC5HUDwRAzx657HLVrADOUrnJBKfEEu_dbpV-_B7D1R6ygzpFQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Wade Mealing <wmealing@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=msiddiqu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a3db7305ca4a389e"
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

--000000000000a3db7305ca4a389e
Content-Type: text/plain; charset="UTF-8"

[Update] Root CNA MITRE marked rejected CVE-2021-3587 for CVE-2021-38208.

CVE-2021-38208 to be used for this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3587
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-38208


On Tue, Aug 17, 2021 at 5:57 PM Salvatore Bonaccorso <carnil@debian.org>
wrote:

> Hi,
>
> On Tue, Aug 17, 2021 at 04:17:38PM +0800, butt3rflyh4ck wrote:
> > Hi, MITRE has assigned CVE-2021-38208 to this issue,
> > https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-38208
> >
> > The CVE-2021-3587 assigned by Redhat was 'RESERVED' now.
> > https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3587
> >
> > There was some confusion here, Maybe CVE-2021-3587 should be 'REJECT'.
>
> I wonder if it would actually be better the other way around, but
> leaving the decision to MITRE CNA and Red Hat: Several downstream
> Linux distrubutions seem to have already used CVE-2021-3587 in their
> advisories, so rejecting CVE-2021-38208 would seem to cause less
> turnarounds). But I have a biased view here, at least Debian, Ubuntu,
> Slackware, Fedora and Mageia used already accordingly CVE-2021-3587.
>
> Regards,
> Salvatore
>
>

-- 

*Tausif Siddiqui* | RED HAT PRODUCT SECURITY

0EE1 F6BF 8991 9A65 0A79 A0A7 5849 60EC 88B8 2C71

secalert@redhat.com <https://access.redhat.com/security/team/contact> for
urgent response.

--000000000000a3db7305ca4a389e--

