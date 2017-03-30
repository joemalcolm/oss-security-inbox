X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1106" "Thursday" "30" "March" "2017" "08:48:21" "+0530" "Lokesh Ubuntu" "lokesh.ubuntu@gmail.com" "<CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>" "33" "Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" nil nil nil "3" "2017033003:18:21" "[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" (number mark "U       lokesh.ubunt Mar 30   33/1106  " thread-indent "\"Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework\"\n") "<f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>" ("<f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1722 invoked by uid 550); 30 Mar 2017 06:36:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26475 invoked from network); 30 Mar 2017 03:18:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bWjsToWXDYJOivJf3hePixkUbxbUSZxoTtjuvEIT9UA=;
        b=JM4QxrQhKMKchthDmjac5Q1nxmiOHeEvnzT9fv8ioXsN/PXDbFGavv2ZGA+jMg2D2w
         10BFiVRQ2MX67uiqiI8O0zA328orgK86ELFtUdzuSG01Kc463tHkV9CZTGNyCZGnCqZ8
         WCx+gnTdSq8Xs7ghfF6HSJMQgynzVk2qiYeBEqD3frcteJriu1InHYmXOrp4DNW9nS4A
         h42DI/gmaMlMLI6eXx2vBYh+RjC9hTC+TPpvem6ROcWzaIkBrpwIXpRVYvvdg5A4QgH9
         eyv4/MWFax8hk+tNLr6oMHkZqsI4xVj4ghT29jW7gNzTO/FxoUJBO5edHk9me+/r/RF0
         Kdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bWjsToWXDYJOivJf3hePixkUbxbUSZxoTtjuvEIT9UA=;
        b=XHNRVoB4lG46k4n66nNrM2zuvRC6T4ThgfskpboX1KejuaYZNDK0aViqxyKQzG1Rw5
         6oOSdT4fhbtcwcecJYZziutKAK5QPysciFodUJs4D+8yIvbI9A4KPlMxrxCJwJ4qTTB8
         9UNpMqHLPDVVWMZfcPeeQfEQL/XmQ0ZdG8XrF2ltf7R+QdTxGGml0iJQkCGrlhDoJOnO
         SG0hLYIpanhDCJS8CuvOR11cuOX8x/dMwcNv5/LJrCbNsTEoTHqf9flc0sclndwRaIfX
         67iWy8C+RYV7WjkcHRAtNO1bINHveCQSNfnjVN3XkpdYhcFI1xytm+pEON6BWldMVkA0
         XxDw==
X-Gm-Message-State: AFeK/H00lbMh1ifPsxawL/l5Cdt8ablsOo7QUBRrhjS3/nOuIO0b+tiRw/uw7gbwON/0yM5kdn3Ro9sZiW65Yw==
X-Received: by 10.159.35.143 with SMTP id 15mr2200199uao.150.1490843901838;
 Wed, 29 Mar 2017 20:18:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
References: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>
From: Lokesh Ubuntu <lokesh.ubuntu@gmail.com>
Date: Thu, 30 Mar 2017 08:48:21 +0530
Message-ID: <CAFE48uQg-zUyjYNjf150uFqdMJV0M5Q8RPbr827OFK9H=Y=gtw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: security@ubuntu.com
Content-Type: multipart/alternative; boundary=94eb2c0405c82f4af1054bea259b
Subject: Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation
 in XFRM framework

--94eb2c0405c82f4af1054bea259b
Content-Type: text/plain; charset=UTF-8

Is there any POC for this to conclude? Thanks.

Regards, Lokesh

On Mar 30, 2017 03:14, "Tyler Hicks" <tyhicks@canonical.com> wrote:

> A security issue was reported by ZDI, on behalf of Chaitin Security
> Research Lab, against the Linux kernel in Ubuntu. It also affected the
> upstream kernel.
>
> Chaitin Security Research Lab discovered that xfrm_replay_verify_len(),
> as called by xfrm_new_ae(), did not verify that the user-specified
> replay_window was within the replay state buffer.
>
> This allowed for out-of-bounds reads and writes of kernel memory.
> Chaitin Security showed that this can lead to local privilege escalation
> by using user namespaces in order to configure XFRM. XFRM configuration
> requires CAP_NET_ADMIN so this issue is mitigated in kernels which do
> not enable user namespaces by default.
>
> Fixes:
> - https://git.kernel.org/linus/677e806da4d916052585301785d847c3b3e6186a
> - https://git.kernel.org/linus/f843ee6dd019bcece3e74e76ad9df0155655d0df
>
> Tyler
>
>
>

--94eb2c0405c82f4af1054bea259b--
