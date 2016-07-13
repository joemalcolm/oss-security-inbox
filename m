X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1897" "Wednesday" "13" "July" "2016" "14:35:07" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQdx5A0vn88nZHTkYE_T6cgP8zrcPfeFBKUGp-W7AjdKA@mail.gmail.com>" "49" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" nil nil nil "7" "2016071312:35:07" "[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd" (number mark "U       gustavo.grie Jul 13   49/1897  " thread-indent "\"[oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA files using libgd\"\n") "<20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>" ("<CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>" "<20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32530 invoked by uid 550); 13 Jul 2016 12:35:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32506 invoked from network); 13 Jul 2016 12:35:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=hISjSaCOHmMgkwYy2fx1gfwD7DfFGYViYOiDv/AbWUE=;
        b=czVWXmbAZvbz480S5CbkegVIgcVu79pVG/6IZ2lyXYMBtkoXZctkZEpLMnZA5AT+eJ
         p/9/lBDe44fiJvD262k8V1E8pecYIqnNHB+OYqjISSs/9Ap223+70fAfZerg6w8mXh3Q
         9p5FtKbKiClNiJFCxLqIT5HWCeTKvQZXOH7cvu68XYzCAce45QQBNE8/NEe4zyHx7z4S
         5KC7ugUhQLKdJ0bw1bsuJjWmZ5Ouk+x6DtazTCqsAfh5y+nFWe8LaBrZAoAUSrI3TFjw
         0iCFdrl/516kKLMcmukcdLNOHqpmAq6cpERrUSVFPiqs+NfDZcZABWbjh3ZfIDo1jzqn
         idRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=hISjSaCOHmMgkwYy2fx1gfwD7DfFGYViYOiDv/AbWUE=;
        b=hZADorZRuceyhEVht/2S05PBYyrC2O7IrCgKu4TAG2gXsyK9KSMz4MnuHPTqyFZmLu
         MHBSBvYu9TMmsSTqVAOgYLvwuxacA5uKHNUgbntMncmGunSaqcV5WX6CVsRn2fWWMAZW
         Pis1W4T3dAhbVtPSr/LB0VbEj+XWAY8RHTqFX2oB3HK6fK3MaaISQ6v6HmSUeyIUdPGN
         muKpw9b5PZH+18sM48XbPYzC0nj2bLRIDqd1hY23kc1sQKDC27Wtzz+mNaYCXZWLEmzj
         1PyiNrN9gv9elNKDovbA5VhKOLDkaf3Ml+Qz1NvhcOT907gSlNMQWviesa3lwQ+VzBvt
         voQA==
X-Gm-Message-State: ALyK8tJxkZQnVY0Nc4OgcfFMq9ToVvm7i6f680nSmZyUNf9fnIaYNBf8WSd1FFFdq6p6+UaUIpSmvzZYFnkaWA==
X-Received: by 10.36.57.199 with SMTP id l190mr23218854ita.5.1468413307838;
 Wed, 13 Jul 2016 05:35:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>
References: <CACn5sdT2ie2cp7VShA-VqafyiMn-oDsv_0dGtXP-Xcf82LWihA@mail.gmail.com>
 <20160630154855.660056C0B4F@smtpvmsrv1.mitre.org>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Wed, 13 Jul 2016 14:35:07 +0200
Message-ID: <CACn5sdQdx5A0vn88nZHTkYE_T6cgP8zrcPfeFBKUGp-W7AjdKA@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE Request: A read out-of-bands was found in the parsing of TGA
 files using libgd

Another read out-of-bounds was found in the process of fixing
CVE-2016-6132. Details are here:

https://github.com/libgd/libgd/issues/247#issuecomment-232084241

In fact, the libgd developers confirmed that this issue is not the
same as CVE-2016-6132. Please assign a CVE if suitable.
Fortunately, both issues are fixed now.

Thanks!

2016-06-30 17:48 GMT+02:00  <cve-assign@mitre.org>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> A read out-of-bands was found in the parsing of TGA files using the
>> last revision of libgd (a6a0e7f) but older versions can be affected. A
>> reproducer and some technical details are available here:
>>
>> https://github.com/libgd/libgd/issues/247
>
>>> AddressSanitizer: heap-buffer-overflow ...
>>> READ of size 4
>>> ... in gdImageCreateFromTgaCtx
>
> Use CVE-2016-6132 for this buffer over-read issue.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXdT8ZAAoJEHb/MwWLVhi2SjkQAIges7jISzaEMV4SPSu9Di8B
> 4re9gzln2m8wIKQ3c9NLFGp5lR8fWCx73vSguwBUWVPBFCJZntup5rZlX/rq9P3+
> fFmMhM8g+lsDczm5bNhqUp3lQbSGzts/gPMUbEWlKYKX4sNRdwzlIoxiHq2NxwcB
> ue/Ci1nNDkL2ykvfJA8z3twOm9kFu/qMY+CG6oZ5wA6HSRiRb7kxYCmUd1HMlDKb
> JOhjyJ+qMKwAaQbQKMERSOz03tvzCzCgZvmUOjtd0lsk7a/E1Q3wwPWJ8+wyBbdw
> DZalq2JBQyFNkQ/sy9NGWpya1OSLiuly7xwH+qOGuFmxlXpB87UWq1Mkq6+Hfib5
> 0pq4cKvdM3gBe1k1lXMAVxikTamvnLizMmRz+tcwHFoGCQoSTwuIegBst3vx9yIJ
> 7QEiq1ergZTJEpMoG6EtxBSsOejSfhWmRYkcGkaCusYrDdT2WXFly7zWAQtnL5qT
> 7X5QcpuYs/in7C0rY3UoJqOsDX7cO8b21g16Ya3pGyFjX5DIUr/ZPqSF2GcB6jXn
> /rPyeSvv1py40HWsvx8ZUQND9rgGn2g5CPIfEkYapp6IAYtJgA96jIORfuui4lEp
> +PAKIvn5LVsdAMcoq50RdOpCqD9VRjA1B6EgtZsjUs1bDsdB7qujm+wBIsu9vkGo
> qhxbyEP0bA9VFaM6jxMO
> =BZV9
> -----END PGP SIGNATURE-----
