X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1419" "Tuesday" "30" "May" "2017" "10:03:55" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496153035.941.9.camel@gmail.com>" "30" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053014:03:55" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   30/1419  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" "<1496149333.941.1.camel@gmail.com>" "<099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>" "<1496150738.941.5.camel@gmail.com>" "<ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19849 invoked by uid 550); 30 May 2017 14:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19830 invoked from network); 30 May 2017 14:04:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aolW9e1Dd/J0rVOBCjypKC0RxtmeubaYgKUn3hfTWt4=;
        b=Qq9drlBXLo0dxXpUJFaTDpGQFdJAv20aBegbHXcQtOWvt2/KcQhduTSydgVTA7o414
         baYi2v6GeEvWLPi1/L8qjw3UbNGx0af2tAFVBTdIUv431LWL5dhT6R1eEo1tq0u5yftQ
         ed6UcnPzBteVtkpBlWBza1tvtH5Ibusm4pqu04h4/OYWspNy9coNes86TRJf7IuKNyEt
         kqp8T+C5qjyabtkwN518B4JFycWNnTKt0nBLkceXSlpJlU4Z6/SJMR4OJrwRhN6IY9CS
         WPUVymuwvTbxcoI5LbOCFq0RkMME5e431qTblxXA5e7w6AqY++dDjcUYlQ645JDnEpd9
         4wmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aolW9e1Dd/J0rVOBCjypKC0RxtmeubaYgKUn3hfTWt4=;
        b=BwYmJhc89K3bcIa9peaV8akP9I3cQgAfY85GS/78k/Ze9dcteYkxDer+wQiOKGgMMH
         ULQEzobOu0/HnqCz6P7Bm5uHOqzl0C9jA9kEHwxOXX8/ca8WfIl3O8WINA29uXSIFmyx
         BSIwQVAk3O1Df7C64oMypA6jXyTAXK4JtPq3QNAZlOauI7M9o2FWfXfUgWLh+5hHUAW0
         twup9eYT2BJUcRhViG0qGT1o8RoRLoTk2L2OEzxXc/v6Fxem3f5qAb2FVJ95OB3fLa6T
         V6wGqKbkuBb5G5OyJE7gMamHeWWDnVJu0THUM4FubNC6VyISNRAWGAcoTCeOMP+rxQGc
         5XnQ==
X-Gm-Message-State: AODbwcBZ/Ng5iPfauyv60CVbrFtwXpCIzdsT4NHudMZfk6HYf6Q1Trxo
	fWgiJjyNfmAEKg==
X-Received: by 10.36.25.196 with SMTP id b187mr2040342itb.30.1496153036883;
        Tue, 30 May 2017 07:03:56 -0700 (PDT)
Message-ID: <1496153035.941.9.camel@gmail.com>
In-Reply-To: <ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <1496145073.1459.1.camel@gmail.com>
	 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
	 <1496149333.941.1.camel@gmail.com>
	 <099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>
	 <1496150738.941.5.camel@gmail.com>
	 <ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 10:03:55 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

On Tue, 2017-05-30 at 15:47 +0200, Florian Weimer wrote:
> On 05/30/2017 03:25 PM, Daniel Micay wrote:
> > Secure boot means verifying boot chain from a root of trust in
> > hardware.
> 
> My comments were specifically about UEFI Secure Boot, which apparently
> behaves quite differently from what you expect.

UEFI Secure Boot can be used for a useful verified boot implementation.

It doesn't behave differently than I expect.

Only covering the kernel without covering any of the userspace or even
the kernel line is an incomplete implementation. It doesn't need to
cover the whole userspace OS to be useful but if it doesn't even cover
init and enough of the userspace OS to include some useful isolated code
then it's not accomplishing anything.

Secure / verified boot is useful primarily for preventing an attacker
from persisting privileged code. A good implementation tries to fully
prevent persistence, even of unprivileged code. The secondary value is
making tampering a lot more difficult, but it can't ever fully prevent
that. If there's no kernel line / userspace coverage, then it's not
doing either of those... so the lack of an enforced boundary between
root and the kernel at least without SELinux, etc. is an orthogonal
issue to this.

What security property does verified boot provide without including the
kernel line and at the very least enough of the core userspace OS to do
*something* useful?
