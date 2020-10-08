X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1082" "Wednesday" "7" "October" "2020" "22:09:43" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mWjOFAPe==ceGEfe=1sGpaicMRPwzdET61D04bJFa6fA@mail.gmail.com>" "27" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100802:09:43" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       noloader@gma Oct  7   27/1082  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8061 invoked by uid 550); 8 Oct 2020 02:10:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8043 invoked from network); 8 Oct 2020 02:10:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=pgLzhE7SHM2J/LMoKfFKElZtIdQirtmiQxrzqK0T9j4=;
        b=XkfkNhHstiiLpZN42PrsN62lJ6RvFJX/PcTo2wdYlAvdwh7aLKMV904C1MJwYUNgS0
         ZJbmq4A28HcmAwdUMPOEMwldybTrekiPrST3s3eh9+ni6Nlnm7tL9Y/OSXCUEEuMdWjV
         vno4koOX4Ug3WETKBaHAGQIYeUxpCQEB0lmHmeLz+I+zXNRST9fZEZZ88feMsq6INn1c
         9DbDmrM0yD2Or9XwXv+4LtktIaARFzOR4VHpt0tGMIwuz9kBw72HhR9FVKRT5EorQw79
         XcMqf3ooqzPLj7Gvf9Bs3gD0nCgYvPPZzdmh0/WFTfEfvbZT/8H+c79+SvC6b2hhgFn+
         e3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=pgLzhE7SHM2J/LMoKfFKElZtIdQirtmiQxrzqK0T9j4=;
        b=peJUKY7Bko6/5gA45FFJfnBJMYBSBXiQ12PQ6oDRIa0//L2iQYbw44lFl5E2ulUNPc
         OjvvbwYFqbBKrks6wVYhD3jaN5QP85hVe3P4eyg9fdGj/OIZA5rvorhzYjcziiUlJ/F2
         h/Sh2G0zTXW7PuphHIy2USYQnwtDIFp+S5Oaf3evVP+VtKU+QuuBOJRlpmxeqN0ZZF3U
         UNHwOQFEhdV4r6wnM4tYu/HAF6nmv9IXQDxnZ/zlWBzuJlYutdYSwC8p1+anqMfNHVhP
         Cr8a4XFhv9uM4L+LNY4jtI18FPJ5vsPAywKbVVy8T6U/gqJSpkfRGQbLuqNF/vtYjfg5
         u4/Q==
X-Gm-Message-State: AOAM5305tbkNVXb+bhNvxirmvv7igULMsw1hbT4ImWyh3KiBLjj0lfOU
	Qyp+X9kEX/Awy959UqcDeESBxfsyqIutUnz5K/eFcj2z2KquRg==
X-Google-Smtp-Source: ABdhPJzeOKiW+4AUK679Bikw98i3GJDQRiU6TamElYBVo/RvPP3MhL0+ro8kJ5x5haF6CHhXwS6vr14cj4fGaWsle20=
X-Received: by 2002:a5d:8188:: with SMTP id u8mr4779617ion.66.1602122997509;
 Wed, 07 Oct 2020 19:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
In-Reply-To: <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 7 Oct 2020 22:09:43 -0400
Message-ID: <CAH8yC8mWjOFAPe==ceGEfe=1sGpaicMRPwzdET61D04bJFa6fA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022

On Wed, Oct 7, 2020 at 3:20 PM Jeremy Stanley <fungi@yuggoth.org> wrote:
>
> On 2020-10-07 21:00:35 +0300 (+0300), Georgi Guninski wrote:
> > https://lists.debian.org/debian-security/2020/10/msg00000.html
> >
> > ===
> > /home/loser is with permissions 755, default umask 0022
> > on multiuser machines this sucks much.
> >
>
> It's tradition that on multi-user systems, users would want to share
> data with one another and also serve content from their home
> directories in Web sites. Further, it's not at all uncommon for
> sysadmins to not understand or consider the system defaults when
> making deployment decisions and failing to secure sensitive files.
>
> As a long-time Debian user myself, I agree that this default is
> showing its age, and can represent a risk for operators who overlook
> it.

Microsoft has an elegant solution with Bypass Traverse Checking
(SeChangeNotifyPrivilege). It allows an admin to deny access to
/home/loser, but allow access to /home/loser/www. Instead of a
permission check working down the hierarchy, just the www object is
checked.

Jeff
