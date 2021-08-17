X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["764" "Tuesday" "17" "August" "2021" "16:17:38" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "39" "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 17   39/764   " thread-indent "\"Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5471 invoked by uid 550); 17 Aug 2021 09:19:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8036 invoked from network); 17 Aug 2021 08:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0iOnKfc5Wm8KHAKYB+XKrcxzkVRR2Hb7lv6ZdqtZs1M=;
        b=I979JDFAsVQMvz1S5mzAS7HwTXqTOrIR6uhmYNhv3MoBqUck8HvgQ5pPYddJc8JIku
         J0YRfTNVlr/m6enT6G3L7VVsYJSWf1kj+Vcb5GED/b8om+3+REv8Ch8YJZo6tM8Ig77b
         5Drvu/iR2sp5KuwRD3LyxwTvD41ZbMJjTDcl9AqdSjyqpl9ixFCdV8WU78VkA7N0VLaQ
         9Tj9t4LfX7ttbLToyeUixr8GMhVxlEcdN2FRWXamsXLVImVeosY0UGNDFBWe9FHWftiY
         8YdDO1VdfhA7dWdLx79C8/a5UaicXIDsDslwpjzjSSswdUsXwaTCl37VSkCGMfb8ezsi
         LJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0iOnKfc5Wm8KHAKYB+XKrcxzkVRR2Hb7lv6ZdqtZs1M=;
        b=gs00yh5jk0cGPc4LZoIvTJ+KNVyhY4q8uWpVctLvYO+zHW4ZWuT4dsZ3WfZ9D0iwWU
         Pdl+LQTLp/jPwakD4fulmm5phhSD7kmT3vLVhHSaM5AhIilSWY6cGfO3Ak1swKusRwvH
         onl4t+Ww7mPV2KxtjrnwAyltGhl+pQRNN2Xvqm5yxjgd+z2L0SnL0/Bz4q5Iy0SU6f9l
         R7sCHaG0xwGIQtWyIFE+GPCYsQG0WliKMjosC4JbfslJVtNRVwjvhN8oMLTVzQ00655x
         X+9yi67Ot2fIMHDdKMA3W4yNAYxn7c5Wrxdk9QWnSGoDwIxIBqMM8wDzhQjWgcaBiJw2
         spdQ==
X-Gm-Message-State: AOAM5329ROhb7GwAPyTNs6lo9xk6+QgKkTJqGnuR0EcApyJvsmpDGcqm
	Yy0QCn8oSu4jc573NWNWRzScLNyCdUn+UsBo/mK7EKbVPvo=
X-Google-Smtp-Source: ABdhPJwgFYFEEoQwu/+cUhDpP3SP+NZQlnq7dXKJTOEhcyiTTL+ZeXxXXgmrHj6rcYsNHNMO6pC6qK8ovIAnn9O+aKI=
X-Received: by 2002:a05:6902:509:: with SMTP id x9mr3202373ybs.267.1629188268453;
 Tue, 17 Aug 2021 01:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
 <CAFcO6XP_-WSEzDB2E=r90Yk4sXwUjo6fRsY=E+ZoAYunpry=qw@mail.gmail.com> <CALJHwhSkYWmBk3u5nBnOZfSskksFPP6k9oFfWGdtDpbr1yVFAA@mail.gmail.com>
In-Reply-To: <CALJHwhSkYWmBk3u5nBnOZfSskksFPP6k9oFfWGdtDpbr1yVFAA@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 17 Aug 2021 16:17:38 +0800
Message-ID: <CAFcO6XOYL=EN3xkkyE72gR_tau+3=BhrgNub3NYtR1isr77MbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Wade Mealing <wmealing@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

Hi, MITRE has assigned CVE-2021-38208 to this issue,
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-38208

The CVE-2021-3587 assigned by Redhat was 'RESERVED' now.
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3587

There was some confusion here, Maybe CVE-2021-3587 should be 'REJECT'.

Regards,
 butt3rflyh4ck.


On Tue, Jun 8, 2021 at 11:45 AM Wade Mealing <wmealing@redhat.com> wrote:
>
> Red Hat has assigned CVE-2021-3587 to this issue
>
> Thank you!
>
>
> --
>
> Wade Mealing
>
> Product Security - Kernel, RHCE
>
> Red Hat
>
> <https://www.redhat.com>
>
> wmealing@redhat.com
> <https://red.ht/sig>
> TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>
>
> secalert@redhat.com for urgent response



-- 
Active Defense Lab of Venustech
