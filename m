X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["679" "Wednesday" "4" "November" "2020" "14:48:46" "+0530" "Mohammad Tausif Siddiqui" "msiddiqu@redhat.com" "<CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>" "24" "Re: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey" nil nil nil "11" "2020110409:18:46" "[oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey" (number mark "U       msiddiqu@red Nov  4   24/679   " thread-indent "\"Re: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey\"\n") "<5a3464785c26496ea796470a1a0d82d1@tencent.com>" ("<5a3464785c26496ea796470a1a0d82d1@tencent.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key length in setkey" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11538 invoked by uid 550); 4 Nov 2020 11:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13785 invoked from network); 4 Nov 2020 09:19:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604481543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Udzxutzs38X1CLC1pu0Sj6Qg7mHSBL3Md0ewYZZ34jE=;
	b=TBP8yGWkNS9luziGIbkb06dSEIhwtjz/BsE88RtTMTag5cUPSStr9Zc7AhTgcrcEWYWQJF
	BrdJh4r1hZSGhPQqAcJ88TrDst9cx+nK6MDf98ogKQw9RV72fjjp4JU1iuRXo+5sZXm0KW
	CVQPc5lKvTht1MuccPGaPyu3iumL/yo=
X-MC-Unique: l796qmY6PR6yxu5cGVnq_A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Udzxutzs38X1CLC1pu0Sj6Qg7mHSBL3Md0ewYZZ34jE=;
        b=CJ19EJAsPkjF3RjobAmP6FJopcFrj/ZjcZrsjah3jmsrhDQ1fZvk+cFMKz136NUDeA
         gn3F3cO+lsPwQpOmgGGFnYzYhjH9YSh+6Dcs37Kcp1Xn4ZSduUffEq00kG4VxzARR2fE
         8jl/O26Fw0qdu01xzKbtVIWA98ILMgc82F9/u0PeLiHdwVZ27pbhcO65v68eFluH/Omn
         ZJENajpJsrfKiDKDKD7OTzmdjZDz5rmEMN1tfMay+ZXdYlYEt15JylYpg6kh7eICKJWp
         FmkfY83EXWDJ593ThF/zVkiQk0uOc4qRZXVcO66vI9F9ZmWYlXdWwsTzp93OpYfPOk0X
         30xw==
X-Gm-Message-State: AOAM533Cqj3Iz0+sVmo+oEJtwf2SJAK9NSygO9a+yzEtxCwEnI+oNmfo
	saHSnD3G6ERfLDEaKIoR6xbyXr+kbyVjWE3uvxh4PNt/rZtB/Jzjl3EjxzkdUJ1w9GIAlxIkU1E
	ENbg6ut2P43ghgVS3aAsVn8ktl6n4lHSGS6qWADwKul1K
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr16277711qvq.37.1604481538032;
        Wed, 04 Nov 2020 01:18:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxoBtppjasNVtCPrLxidQ9Xw+MAEAXK+5G03nytQqQfN0wszGG+JG1OyPflTj9v+VLCW/Vq3hxCHBtOYX+ueFo=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr16277691qvq.37.1604481537747;
 Wed, 04 Nov 2020 01:18:57 -0800 (PST)
MIME-Version: 1.0
References: <5a3464785c26496ea796470a1a0d82d1@tencent.com>
In-Reply-To: <5a3464785c26496ea796470a1a0d82d1@tencent.com>
From: Mohammad Tausif Siddiqui <msiddiqu@redhat.com>
Date: Wed, 4 Nov 2020 14:48:46 +0530
Message-ID: <CAC5HUDz6+v0Tou3Fg=_5Q4ru9Vg7TA2x+SxtFAGfYBc3CighHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Anthony Liguori <aliguori@amazon.com>, Solar Designer <solar@openwall.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=msiddiqu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001b448c05b3447877"
Subject: Re: [oss-security] Linux kernel: crypto: bcm - Verify GCM/CCM key
 length in setkey

--0000000000001b448c05b3447877
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 12, 2020 at 10:10 PM kiyin(=E5=B0=B9=E4=BA=AE) <kiyin@tencent.c=
om> wrote:

> There are four security bugs in Broadcom SPU driver. The patch was public
> in https://www.spinics.net/lists/linux-crypto/msg50839.html. CVE ID
> request is in progress.
>

Hi Kiyin, do you have an update to the CVE assignment from Mitre here?
--=20

TAUSIF SIDDIQUI RED HAT PRODUCT SECURITY

0EE1 F6BF 8991 9A65 0A79 A0A7 5849 60EC 88B8 2C71

secalert@redhat.com <https://access.redhat.com/security/team/contact> for
urgent response.

--0000000000001b448c05b3447877--

