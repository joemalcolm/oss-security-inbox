X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1316" "Friday" "19" "February" "2016" "14:40:55" "-0500" "Ignace Mouzannar" "mouzannar@gmail.com" "<CADk+ZPONm_qyZX1UAw-UP=f0NUt6Nr-FLm6Dp5O4d-Rf18m2-w@mail.gmail.com>" "41" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" nil nil nil "2" "2016021919:40:55" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" (number mark "U       mouzannar@gm Feb 19   41/1316  " thread-indent "\"[oss-security] Re: CVE request: didiwiki path traversal vulnerability\"\n") "<20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>" ("<CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>" "<20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16182 invoked by uid 550); 19 Feb 2016 19:43:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15449 invoked from network); 19 Feb 2016 19:41:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=1/DhbuCAuwKz7inPUt22YGTkQIJS3erOmNxTVkoxjhk=;
        b=D0ppIUejOajjGvLpTHQJxXwzd1ZJoLGpwionCHq1L8HS19dhU4R4KdyFF8gX6pbqlx
         IpiiaTQphXewYs1A21ht6P9aS1Trr1i2L+vOYZe5QRhOb8NbyyN0yB0WEhkPhGDNytf6
         HBSHHNcCZBq5VEFXwxBQPkbysUpobs3b0gM6gCENXCrW6WByHvVa5fs2g+ZxX6D4AnMb
         nzhaeSZQmyyLzEto0rXI2GIWpAb1V8jIdQ0IfWy4B5DOTSOACd9QyqECTrpl0GpeqBrr
         vIqPGpEqHZR3b9ygfJ4nUYC9McqqwlPYqa6JxU8SAEOnKnDpN3V+S8WSpPqfK9hkStNS
         i0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=1/DhbuCAuwKz7inPUt22YGTkQIJS3erOmNxTVkoxjhk=;
        b=UW12ZRjeUwu/+ZQ+dM39OzZeSqTGQ8kz98Ba/Q0IPrT3zm/Txhxquf3S1I6jQPQ3LR
         ckHJ8ECWTbygXOzKP86M10H5dzbor8KGRbM/ZL4nq6HB0vcNLOIPXj2Aqs89RKW+vFjV
         5+rWag1Zj6Jao4PnmV609JzWfklCzBu+ZCFe75+sq8v22oB6kX0Ml00NqxH0jR50FiCM
         Z2tYQf3OoowKOHWLeuxzBrAXJdQxzWbhgIFf0sx0RELM0Ti+Slpm2T3NDSIND0uFtZcU
         PDvfO5CBoPifUb/y3IzjH3V+ZoTb0gaabGEZOwZvlvMnG458pyOonlK8E2TEVnR/VGoK
         wJAQ==
X-Gm-Message-State: AG10YOSZMrBMYbpLgvJ/q/BymlWjUTC9yQEt6xDXuJBKlBmVoGHoMR24mpXaDInEKXXWSyc8hLLtUgmfCxgxeA==
X-Received: by 10.107.152.21 with SMTP id a21mr16138755ioe.176.1455910875238;
 Fri, 19 Feb 2016 11:41:15 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>
References: <CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>
 <20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>
From: Ignace Mouzannar <mouzannar@gmail.com>
Date: Fri, 19 Feb 2016 14:40:55 -0500
Message-ID: <CADk+ZPONm_qyZX1UAw-UP=f0NUt6Nr-FLm6Dp5O4d-Rf18m2-w@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, 
	=?UTF-8?B?0JDQu9C10LrRgdCw0L3QtNGAINCY0LfQvNCw0LnQu9C+0LI=?= <yarolig@gmail.com>, 
	security@debian.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE request: didiwiki path traversal vulnerability

Hi,

Thanks you for your reply.

On Fri, Feb 19, 2016 at 10:49 AM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> https://github.com/OpenedHand/didiwiki/pull/1/files
>> curl http://localhost:8000/api/page/get?page=/etc/passwd
>
> We aren't sure about the need for CVE IDs for this product because it
> doesn't seem to advertise any security properties, e.g.,
>
>   https://github.com/OpenedHand/didiwiki/blob/master/README
>   "Its probably not very secure at all."
>
> We can assign a CVE ID if there is going to be a DSA.

The Debian Security team is planning on publishing a DSA, as this
package is available in the (old)stable version of Debian.

> One concern is that the design may not be intended for environments
> with untrusted clients, and many other issues may be found. Also, we
> aren't sure about the patch:
>
> +   if (!isalnum(page_name[0]))
> +        return FALSE;
> +
> +    if (strstr(page_name, ".."))
> +         return FALSE;
>
> e.g., what about C:\file.txt if it's possible to build this on Windows.

I admit not having looked into Windows (I am the package maintainer on
Debian). For the record, didiwiki has not been packaged for Windows,
and upstream has been MIA for a while now. So I'm not sure it is
usable/used on Windows,

Cheers,
 Ignace M
