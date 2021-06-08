X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["394" "Tuesday" "8" "June" "2021" "13:44:32" "+1000" "Wade Mealing" "wmealing@redhat.com" nil "26" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "6" nil nil (number mark "U       wmealing@red Jun  8   26/394   " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25860 invoked by uid 550); 8 Jun 2021 03:44:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25839 invoked from network); 8 Jun 2021 03:44:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1623123886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/SVvxcs87pIcJwZ+Exp15mtoCoAVtUGQOmk6vGB4GEM=;
	b=gDR10OyymvcuXy3/815FRyjFlJgcwh6Zb9SAWpUmM1a4h4o2H1fExf3uC3lFCf+ucKI2+x
	+NKyn+52Y5ZAXWptqBnKvokz/r0EJRqgz0GmoEGNJfitQf6nWpji7tM9WI6bNdFR0Ka2Ih
	C04ReVQKbXY9I61hlHauj+XnPP7ZKTY=
X-MC-Unique: xcpbLIlRON-qvaGV5zNoAw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/SVvxcs87pIcJwZ+Exp15mtoCoAVtUGQOmk6vGB4GEM=;
        b=Bis6Q1uWtYDh9uLkF/POPpSKlYU9XElDE7y+eO6SvfbV0soD+qgUXtKL0RzUJ1K+ZR
         NSp9Nl/Br5Cg/kXPfC9movmcZPoD8mzhjnRW0JoU2yrvbv4gqWUb56BePNt3f8zxsjdz
         Q3BaVNH6N8MlaoTxm0K8TE/Ahl0PZqbZ8larr7wfBD2gYnkLCNLidO6ktCgKGDruBhMo
         bymOSAju0wFsbkPsiep7ChIJeufGm0N5RTQ1OgqOYe2jjIGhXUsamPqhK3HzMnKlRydt
         Xcx9vHsPpPJdkZLQVa5Fyfll6QEwJgMJKN0/J7UM6Sus0qOdcuOGfPgM68jBt/yqLHDZ
         hNNw==
X-Gm-Message-State: AOAM5326+8q2G3X1uRAbvQt7u9e0RuVpj34L6TGj7pMLbgvIHU+hmN53
	QNqMkNxmm23+GJoJvMTVtjp/te3CMI90zdx8ylXAEgF2+ca9lvUY4XaEmDqr8c7UCCAFIcvlwgo
	2/XeUXr1XPjNq17PY8Kp18+OLtqY9kC5OMrb2t32ML/YP
X-Received: by 2002:a5d:85da:: with SMTP id e26mr17183059ios.79.1623123883620;
        Mon, 07 Jun 2021 20:44:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyA1dw+GTkOCIRg+b/fMX0h3kXKYl6R6qjaiEvLkJRYaAItWS4BxLdzkl/Z+mz/cwuxCi184sJ90yHkqkirt1Q=
X-Received: by 2002:a5d:85da:: with SMTP id e26mr17183043ios.79.1623123883293;
 Mon, 07 Jun 2021 20:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
 <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
In-Reply-To: <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
Date: Tue, 8 Jun 2021 13:44:32 +1000
Message-ID: <CALJHwhSkYWmBk3u5nBnOZfSskksFPP6k9oFfWGdtDpbr1yVFAA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000007d94b005c438fa82"
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

--0000000000007d94b005c438fa82
Content-Type: text/plain; charset="UTF-8"

Red Hat has assigned CVE-2021-3587 to this issue

Thank you!


-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@redhat.com for urgent response

--0000000000007d94b005c438fa82--

