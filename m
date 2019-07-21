X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3011" "Sunday" "21" "July" "2019" "11:03:01" "-0700" "Linus Torvalds" "torvalds@linux-foundation.org" "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>" "71" "[oss-security] Re: stack buffer overflow in fbdev" "^Cc:" nil nil "7" "2019072118:03:01" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "        torvalds@lin Jul 21   71/3011  " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<20190719140343.GA12952@thinkstation>" ("<20190719140343.GA12952@thinkstation>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3623 invoked by uid 550); 21 Jul 2019 18:07:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28573 invoked from network); 21 Jul 2019 18:03:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B50ZjF+JAirOO384o99CzdlUHX2W7LanisWtPifetZM=;
        b=JdKOO268c8F69ZI0EGLwf/QQkVHaQbe9MI/ZJIo7qgcYuvgKzpCCOyVMmlpNoCKd/L
         2h9Ka+DVymZ39En3z3KbhFoJWr6DRZEVwgCCLUmSTQm/szhmLIuENVs5gwxVEq7afd3v
         HGOObqDXVeIFAOBlwikqAzmb+s9dd1GQMWRpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B50ZjF+JAirOO384o99CzdlUHX2W7LanisWtPifetZM=;
        b=sYo+QEOlNdC1nlbEwsAy6yWX3JsZHepeRaSqhMYKwxeXgRU9TaxSOeelVVBonu5aEB
         VWIdErj8EIE2dEYrBoPj0wxArtkXk2qV8y02FnVEgVrE5jOPlS3LFOy2roWst5uySW03
         ZCSqJFgWQj4oA5NF3l5cvsdFKzAHoHgWZZIpQnX6t/M+Ijp+RcxOOleGEIMTQeeEHRk1
         kQ/02ychMZrnqGdU40KukJY4sBdY9Nl7JQYhSB5SQ6kdQVFT3PuKInlKYNHRmuIeThrn
         AMnQBpMUr9aqaNqNEyh/7azMdPaY2bl2/JQ46YxBrhBY+vPFwE9TyLDn34MfsIW+8NMT
         5Nsg==
X-Gm-Message-State: APjAAAWBTcUFEMWZeR/ibHLMvrt2GUDWZWMi6m1wYKJ3Eqq3BINVOwy0
	0V7/6edLMUgwmNGwVnuzCWm+0g8BHtk=
X-Google-Smtp-Source: APXvYqyyLBjVm49yRPamb5nxq3rRvs/nqkrK6+2o4jCkKYgOTnzLc+Z5ShokbLameSjWSawT0ZZSiw==
X-Received: by 2002:a2e:9c19:: with SMTP id s25mr11795885lji.188.1563732199131;
        Sun, 21 Jul 2019 11:03:19 -0700 (PDT)
X-Received: by 2002:a2e:9a58:: with SMTP id k24mr34038180ljj.165.1563732197944;
 Sun, 21 Jul 2019 11:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190719140343.GA12952@thinkstation>
In-Reply-To: <20190719140343.GA12952@thinkstation>
X-Gmail-Original-Message-ID: <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
Message-ID: <CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="0000000000002f0f42058e34c6e3"
Cc: oss-security@lists.openwall.com
Date: Sun, 21 Jul 2019 11:03:01 -0700
From: Linus Torvalds <torvalds@linux-foundation.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: stack buffer overflow in fbdev
To: Tavis Ormandy <taviso@gmail.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>

--0000000000002f0f42058e34c6e3
Content-Type: text/plain; charset="UTF-8"

Completely untested patch attached. There are probably better ways to do this.

Adding the proper people to the cc, and quoting Tavis' email in its entirety.

Daniel - you got added despite not being explicitly listed as
maintainer because you've touched fbdev/core/ more than most lately,
plus you know edid anyway. As such: "tag, you're it, sucker".

                Linus

On Sat, Jul 20, 2019 at 5:35 PM Tavis Ormandy <taviso@gmail.com> wrote:
>
> Hello, during a conversation on twitter we noticed a stack buffer
> overflow in fbdev with malicious edid data:
>
> https://github.com/torvalds/linux/blob/22051d9c4a57d3b4a8b5a7407efc80c71c7bfb16/drivers/video/fbdev/core/fbmon.c#L1033
>
> There is enough space to have 52 1-byte length values, which makes svd_n
> 52, then make the final value length 0x1f (the maximum), which makes
> svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
> data.
>
> This requires a malicious monitor / projector / etc, so pretty low impact.
>
> I pulled out the code to make a demo (I removed the checksum, but it
> doesnt prevent the bug):
>
> https://gist.github.com/taviso/923776e633cb8fb1ab847cce761a0f10
>
> This was discovered by Nico Waisman of Semmle.
>
> Tavis.
>
> --
> -------------------------------------
> taviso@sdf.lonestar.org | finger me for my pgp key.
> -------------------------------------------------------

--0000000000002f0f42058e34c6e3
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_jyd9iu9u0>
X-Attachment-Id: f_jyd9iu9u0

IGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1vbi5jIHwgOCArKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9m
Ym1vbi5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibW9uLmMKaW5k
ZXggMzU1OGE3MGE2NjY0Li4yYWIxZmQ2ZTMzYjcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1vbi5jCisrKyBiL2RyaXZlcnMv
dmlkZW8vZmJkZXYvY29yZS9mYm1vbi5jCkBAIC0xMDMwLDcgKzEwMzAsOSBA
QCB2b2lkIGZiX2VkaWRfYWRkX21vbnNwZWNzKHVuc2lnbmVkIGNoYXIgKmVk
aWQsIHN0cnVjdCBmYl9tb25zcGVjcyAqc3BlY3MpCiAJCWlmICh0eXBlID09
IDIpIHsKIAkJCWZvciAoaSA9IHBvczsgaSA8IHBvcyArIGxlbjsgaSsrKSB7
CiAJCQkJdTggaWR4ID0gZWRpZFtwb3MgKyBpXSAmIDB4N2Y7Ci0JCQkJc3Zk
W3N2ZF9uKytdID0gaWR4OworCQkJCWlmIChzdmRfbiA8IHNpemVvZihzdmQp
KQorCQkJCQlzdmRbc3ZkX25dID0gaWR4OworCQkJCXN2ZF9uKys7CiAJCQkJ
cHJfZGVidWcoIk4lc2F0aXZlIG1vZGUgIyVkXG4iLAogCQkJCQkgZWRpZFtw
b3MgKyBpXSAmIDB4ODAgPyAiIiA6ICJvbi1uIiwgaWR4KTsKIAkJCX0KQEAg
LTEwNDQsNiArMTA0NiwxMCBAQCB2b2lkIGZiX2VkaWRfYWRkX21vbnNwZWNz
KHVuc2lnbmVkIGNoYXIgKmVkaWQsIHN0cnVjdCBmYl9tb25zcGVjcyAqc3Bl
Y3MpCiAJCXBvcyArPSBsZW4gKyAxOwogCX0KIAorCS8qIEV2aWwgbW9uaXRv
cj8gKi8KKwlpZiAoV0FSTl9PTl9PTkNFKHN2ZF9uID4gc2l6ZW9mKHN2ZCkp
KQorCQlyZXR1cm47CisKIAlibG9jayA9IGVkaWQgKyBlZGlkWzJdOwogCiAJ
RFBSSU5USygiICBFeHRlbmRlZCBEZXRhaWxlZCBUaW1pbmdzXG4iKTsK

--0000000000002f0f42058e34c6e3--
