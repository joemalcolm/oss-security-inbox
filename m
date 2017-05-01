X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4443" "Monday" "1" "May" "2017" "19:12:05" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>" "105" "[oss-security] Integer Overflow in rxvt" nil nil nil "5" "2017050117:12:05" "[oss-security] Integer Overflow in rxvt" (number mark "U       Jason@zx2c4. May  1  105/4443  " thread-indent "\"[oss-security] Integer Overflow in rxvt\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5648 invoked by uid 550); 1 May 2017 17:21:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28322 invoked from network); 1 May 2017 17:12:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=AG+7T7
	/RO8dEqPiUdSPOk7zDMhk=; b=iHZ6QwSssGH9AkWTRrXjyn1FU0w4CuLsn+j1nO
	JPM5zYGAHVB72JyGkZAIAnUg+zoGBX80LBbIIIpwlUE63km+5flMrZjZEJhPK+UB
	AtaQzlVX8ISUrXnr0Z0I29E3/goyH2Tnb5LRV5VIhyfOJoD65wEMYzY92fc/KrDp
	3696hjEGKQ1ZokBfpqHMwWhC5TbSAtCKPfagRVx6t7Z9wT4T6pwG2Olu9BwG24y6
	klzyy4ApJcR4rI1rvd90GMClZU89KabbzoazPmUgC2JsFK8rpFoam+b7vhifOBaE
	X6HU+yjdW+jGNRZey6l2MFZO9szyhcsjS9dEeqmSECdQOQiw==
X-Gm-Message-State: AN3rC/7V+s/ROOtY7PCSPXOVsHjqw7jhePOANlpxWG/RMq0j9an04RnE
	Nc0Jx8eKaAXWxb+YJZWeJZeFeS8UzQ==
X-Received: by 10.202.204.86 with SMTP id c83mr9687055oig.4.1493658726411;
 Mon, 01 May 2017 10:12:06 -0700 (PDT)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 1 May 2017 19:12:05 +0200
X-Gmail-Original-Message-ID: <CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>
Message-ID: <CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/mixed; boundary=001a1134fecccdefd2054e7985be
Subject: [oss-security] Integer Overflow in rxvt

--001a1134fecccdefd2054e7985be
Content-Type: text/plain; charset=UTF-8

Hello,

A CVE for this in the process of being assigned, and I'll follow up on this
thread once one has been given.

There exists an integer overflow in rxvt. As the upstream project is dead,
there is no non-vulnerable version. Thus, I'd recommend distributions use
the attached patch. Do note that rxvt is different from rxvt-unicode (urxvt),
which is still maintained by an upstream and is not vulnerable to this bug.

Using the following escape code will segfault rxvt:

        $ printf '\033[-2147483648L'

The crash occurs here in screen.c:

    for (; i--; j++) {
        r->screen.tlen[j] = 0;
        r->screen.text[j] = r->buf_text[i];
        r->screen.rend[j] = r->buf_rend[i];

We appear to be segfaulting on the read to r->buf_text[i], where i is
2147483647 -- 0x7fffffff. Slightly earlier in that function we have this
block:

    if (count < 0)
        count = -count;

Before this block is run, count is -2147483648 -- 0x80000000. After the block
is run, count should be 2147483648, right? Not so fast. It turns out that
there's no complement of -2147483648 within 32-bits, because the maximum
positive integer is 2147483647, one less. Probably if you read the C spec it
will tell you that this operation is undefined, but what's for certain is that
on my architecture, the integer remains negative -- -2147483648. We then
bypass the next few blocks, since count is negative, until we get to this
line:

        j = row2 - count + 1, i = count;

Thus, by the time we get to the crashing block, i has become -2147483648 - 1,
which is our crashing value of 2147483647, and so we segfault.

It comes from a call to rxvt_scroll_text from inside rxvt_scr_insdel_lines. Here
we have the following multiplication:

    rxvt_scroll_text(r, r->screen.cur.row, r->screen.bscroll, insdel * count,

In this case insdel is -1, for the INSERT operation, and count is our
-2147483648. Predictably, we still don't become positive. Backtracing a step
further reveals that this comes from a call inside of rxvt_process_csi_seq,
where the actual escape code is converted from a string.

The attached patch simply bounds the size of input values, so that they don't
overflow on multiplication or a few small additions and then a multiplication.

I've also attached a similar patch for rxvt-unicode. While it is not
vulnerable to this particular attack, the attached patch may be
"best practice". I've also sent this upstream and am awaiting their
response.

While this particular bug is in rxvt, I suspect that other terminal emulators,
such as rxvt-unicode, xterm, libvte, konsole, tmux, screen, mosh, etc, may
indeed suffer from similar types of bugs. Thus, research into this domain could
prove useful.

Jason

--001a1134fecccdefd2054e7985be
Content-Type: text/x-patch; charset=US-ASCII; name="rxvt-integer-overflow-fix.patch"
Content-Disposition: attachment; filename="rxvt-integer-overflow-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j26b9twm0

LS0tIHJ4dnQtMi43LjEwL3NyYy9jb21tYW5kLmMJMjAwMy0wMy0yNiAwNzow
MToyMy4wMDAwMDAwMDAgKzAxMDAKKysrIHJ4dnQtMi43LjEwLXBhdGNoZWQv
c3JjL2NvbW1hbmQuYwkyMDE3LTA0LTI3IDEyOjA2OjA1LjY4MjA3MjI3NCAr
MDIwMApAQCAtMjA5Niw3ICsyMDk2LDcgQEAKICAgICBpID0gY2ggLSBDU0lf
SUNIOwogICAgIG5kZWYgPSBnZXRfYnl0ZV9hcnJheV9iaXQoY3NpX2RlZmF1
bHRzLCBpKTsKICAgICBmb3IgKHAgPSAwOyBwIDwgbmFyZ3M7IHArKykKLQlp
ZiAoYXJnW3BdID09IC0xKQorCWlmIChhcmdbcF0gPCAwIHx8IGFyZ1twXSA+
IDMwMDAwKQogCSAgICBhcmdbcF0gPSBuZGVmOwogCiAjaWZkZWYgREVCVUdf
Q01ECg==

--001a1134fecccdefd2054e7985be
Content-Type: text/x-patch; charset=US-ASCII; name="rxvt-unicode-integer-bounding.patch"
Content-Disposition: attachment; 
	filename="rxvt-unicode-integer-bounding.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j26b9tx41

ZGlmZiAtcnUgcnh2dC11bmljb2RlLTkuMjIvc3JjL2NvbW1hbmQuQyByeHZ0
LXVuaWNvZGUtOS4yMi1wYXRjaGVkL3NyYy9jb21tYW5kLkMKLS0tIHJ4dnQt
dW5pY29kZS05LjIyL3NyYy9jb21tYW5kLkMJMjAxNi0wMS0xOCAyMDozNTow
OC4wMDAwMDAwMDAgKzAxMDAKKysrIHJ4dnQtdW5pY29kZS05LjIyLXBhdGNo
ZWQvc3JjL2NvbW1hbmQuQwkyMDE3LTA0LTI4IDA5OjUyOjM1LjQ0MDI0NTYw
NyArMDIwMApAQCAtMjg2OCw3ICsyODY4LDcgQEAKICAgaSA9IGNoIC0gQ1NJ
X0lDSDsKICAgbmRlZiA9IGdldF9ieXRlX2FycmF5X2JpdCAoY3NpX2RlZmF1
bHRzLCBpKTsKICAgZm9yIChwID0gMDsgcCA8IG5hcmdzOyBwKyspCi0gICAg
aWYgKGFyZ1twXSA9PSAtMSkKKyAgICBpZiAoYXJnW3BdIDwgMCB8fCBhcmdb
cF0gPiAzMDAwMCkKICAgICAgIGFyZ1twXSA9IG5kZWY7CiAKICAgLyoK

--001a1134fecccdefd2054e7985be--
