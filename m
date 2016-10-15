X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["877" "Sunday" "16" "October" "2016" "00:50:36" "+0800" "Ben Woods" "woodsb02@gmail.com" "<CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>" "36" "[oss-security] dcraw and CVE-2015-8366 + CVE-2015-8367" nil nil nil "10" "2016101516:50:36" "[oss-security] dcraw and CVE-2015-8366 + CVE-2015-8367" (number mark "U       woodsb02@gma Oct 16   36/877   " thread-indent "\"[oss-security] dcraw and CVE-2015-8366 + CVE-2015-8367\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1426 invoked by uid 550); 15 Oct 2016 16:54:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31950 invoked from network); 15 Oct 2016 16:50:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=L+EQS7sEfvFLgcQDVZFxGHpGsE1zG8DhhtATWbnTn5U=;
        b=AvCP7uLAJ9VIGeHU9gUGq7e9plvQrT+ykP1jMXhIUxxI3SZuFWGdy5nCQDJtMC6TP+
         C07rLcaZm3wbMVY7XoTAVS7K8z2Nep8pdWRLXDdzavleTHyZhkEQAo4IHPGl3ZlO3Z2G
         spL5HWmPQmkARL13idGjLP2Dc410p81MFUNa7nVzV27e37xOeVOGuZxvpPagrtj740Ke
         z5GfCpJ0E34nBGsXnHsW4mF5ZBzS7vNx33QAdYcQh4ynchPWVW7EGkm7pklRKAdVm4US
         MPpvGb8ufZPqGnoyaVsK/XWYISA9p6U5pR8mGry0TKY06bEnIYaSk5XwkFBtQt3DvJG3
         YxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L+EQS7sEfvFLgcQDVZFxGHpGsE1zG8DhhtATWbnTn5U=;
        b=TPEzPt0LNSqkuPff5rOVYSQHp0ov/R78Dx+8+LlVYjXgWILR7hSPAVT7ZLPyEgXyhb
         6DowML7DaVrW4++GvwQPjMZNXPXDZVYnPLUs1AI52JIpisKPR2LNZs879PeXjUhezYug
         BEeoppXotYr9OJ4UlErupVWcO2P/0/w2PNs9aMTjRVYMNp6sF/sk25ZByM/4d4Z+xmKq
         mIAcOKzYg3gB+rXIih0xhYJSFs1iqdCL7qxTSfbPZmDDXK26BAwHem9zneHFeYuNroEl
         8LXPbDUBrPQNmHXWR968+I/m0bThOSYklnAoL8jozymKYQI4BDv9kj9XCII5v49Bg7uD
         niqA==
X-Gm-Message-State: AA6/9RkQMUNaWszZM3FtJ92Nv3l7wJQTKe6ruGjJ0ZWCPvjgdKDA8LxvoGMF/YLldv1GpH60A9d7cIKUvZNrNQ==
X-Received: by 10.107.59.150 with SMTP id i144mr19641780ioa.155.1476550237185;
 Sat, 15 Oct 2016 09:50:37 -0700 (PDT)
MIME-Version: 1.0
From: Ben Woods <woodsb02@gmail.com>
Date: Sun, 16 Oct 2016 00:50:36 +0800
Message-ID: <CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>
To: dcoffin@cybercom.net, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114f8eae6171d9053eea2431
Subject: [oss-security] dcraw and CVE-2015-8366 + CVE-2015-8367

--001a114f8eae6171d9053eea2431
Content-Type: text/plain; charset=UTF-8

Hi Dave,

I was wondering if you could comment on whether dcraw is affected by these
2 CVEs and whether new versions have been released which remove the
vulnerability?

I noticed you mentioned in the mailing list post below that "CVE-2015-8366
will be fixed in v9.27" - did that end up getting fixed in 9.27? How about
CVE-2015-83667?
http://seclists.org/oss-sec/2016/q1/526

CVE-2015-8366
Index overflow in smal_decode_segment
Fixed in LibRaw by:
https://github.com/LibRaw/LibRaw/commit/89d065424f09b788f443734d44857289489ca9e2


CVE-2015-8367
Memory objects are not intialized properly
Fixed in LibRaw by:
https://github.com/LibRaw/LibRaw/commit/490ef94d1796f730180039e80997efe5c58db780


Thanks for your help.

Regards,
Ben

--
From: Benjamin Woods
woodsb02@gmail.com

--001a114f8eae6171d9053eea2431--
