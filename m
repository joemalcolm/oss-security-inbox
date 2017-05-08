X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["676" "Monday" "8" "May" "2017" "09:10:12" "-0400" "Russ Cox" "rsc@swtch.com" "<CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>" "14" "[oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion" "^Date:" nil nil "5" "2017050813:10:12" "[oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion" (number mark "        rsc@swtch.co May  8   14/676   " thread-indent "\"[oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion\"\n") "<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>" ("<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5626 invoked by uid 550); 8 May 2017 14:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9834 invoked from network); 8 May 2017 13:10:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swtch.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=O8s7KDyDX0grYrH8GfDcmHz2M1mKUar7df+sdqvWtUA=;
        b=KwIXBQhLxtGbU32PVqTKwiTVZB96UU7QRJOPoGOtm5Cz3ZDd4DGsMNPYQ1e3XSlIE9
         SnsTqOrnZZDbpEKlUdLHIxJ4I0PY8KqC/ThItZYoX2tH2BiuCGPfMQlM97NIxH2CkgJp
         JmDwm9tEDOiBzrQueVsUfOBNuEyqc6OoRw+mkclhoY+r1wsoejVgMeGlb96wQ6Eg0snb
         ZjDPoTzDJZv57tStCdDaPFbZwzQtX8fCjFrKv4q8da8GZbk8q/YUSAluB0Z9Y9KpPrIw
         +SBHUNPQAY2JFvGndtC10tkp7upMsdqo4uD+7vzRri6RAerI1NOzQo1o8aV2T+FPQZAb
         GVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=O8s7KDyDX0grYrH8GfDcmHz2M1mKUar7df+sdqvWtUA=;
        b=bSm20DxmGQIAG17OherohjE3C6eVybXZXRTcCgrvK36Mh9Y+ERHRCqMMGZYy6bHm9p
         B1mGuPbIQQPpOUzAcCS4/puAZk9Be9d0EDFTOA+EOe3NXIPMY8Gc5OhzGlcZXbcILo2W
         Wc0HqKLypt77eujyWxasU6GMcooL4lLxXnaWMxbsbr8jzrPpogqGCkBTrMatUK2TAvmg
         jvvIsUWfqk9ozTcgZVPnKeh4ehbGMRdzwYjqN+W9xpljGw0s4GVPMsUIIAyTwaV9iXO8
         mjoC/XeoDnbC0Vz3Uh/CKN80FRnaoJOVG5zT4aA8sBSaelYy7hDc1mJ4z/s+OF1oMoU1
         7ZDg==
X-Gm-Message-State: AN3rC/7YUiH3iVOCTvyiYMDtpdo4IzyIP9WiB58WiR1JnFMkS4XXyaHw
	MLDHq/6YF5ITKBKFbC+i2WtnKbLd4eTD
X-Received: by 10.84.231.131 with SMTP id g3mr84592366plk.70.1494249043243;
 Mon, 08 May 2017 06:10:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
References: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
Message-ID: <CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 8 May 2017 09:10:12 -0400
From: Russ Cox <rsc@swtch.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion
To: oss-security@lists.openwall.com

On Mon, Apr 24, 2017 at 10:06 AM, Russ Cox <rsc@swtch.com> wrote:
> > Due to the widespread but limited ("only" CPU exhaustion) nature of
> the problem, I have not attempted any embargoed prenotification.
> I will forward this note directly to product-security@apple.com and
> bugs@pureftpd.org. I filled out the "DWF Open Source Request Form v2"
> for a CVE number for the generic problem, and I will reply here when
> I receive the number.

FYI, over the weekend I received notification (two weeks after applying)
that DWF has declined to issue a CVE number for this general problem.
Interested parties will have to obtain their own CVE numbers for specific
products.

Russ
