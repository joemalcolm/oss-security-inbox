X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2007" "Tuesday" "19" "January" "2016" "14:47:10" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z00CYYUZMGW9-QaBDoLc42Em4WWy_eGKLoxNk2uDYwnOg@mail.gmail.com>" "50" "[oss-security] OpenCart users, switch to OpenCart-CE immediately" "^Date:" nil nil "1" "2016011919:47:10" "[oss-security] OpenCart users, switch to OpenCart-CE immediately" (number mark "        scott@parago Jan 19   50/2007  " thread-indent "\"[oss-security] OpenCart users, switch to OpenCart-CE immediately\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19890 invoked by uid 550); 19 Jan 2016 19:47:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19790 invoked from network); 19 Jan 2016 19:47:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=KxF82iUgF9McU68UKtn6uKgZEZ0UccG1WiJTu8cA+Wo=;
        b=n44PlalA2fOh8dUnT+Gl01FMMGkgEDf/vY0uKblkZzAkk5eUzUeTfQK/SbzSQAZnrD
         M+VxDN0M6juhpiogHNSJL7N0wRnGX5lzHqX1LvuYHSPpSi76D1uUfd4Ha+4g5mv35pQ/
         cVug67OtOWbr0qqQmrWYIAWMYXPMeFMs0JtqenUl5WvJbHztWrD0RQsoIVCCp9PZiqKP
         EI9aBRc7b/q3D6l4JCElSAKLQofI5ujKcree98M8CkwQHdy22aOjBMdAq/hyLy4ZrObd
         jEnSEfMFA84aOTWHv6gUU712ADogG1qbSdE9d9zAzoyJueC0TrQniujW6e27oTrhOFZL
         uhbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=KxF82iUgF9McU68UKtn6uKgZEZ0UccG1WiJTu8cA+Wo=;
        b=ijv3poPxB8RfcUCpL9WiJNmtnKbbNdk07K0q7o8nbQMH9p3JsZZeyUQfqnculDMmOj
         iqFjiLgd42Xd+j8EhUzv1HTAqxmNjGL4f57tCwOjc5duV2/QyRgetB6+0dhIDtIf0oDT
         rFR9UBoZN3Cxkt0F0EdIoCGNOKEZ0XTxu+4qMr41iHqE0s2CJp3cb3c/nIlpeHMJw4yK
         R3AZxC3cZdEerdTu7ACAUTWheSPS4g81z33fkwHDQWfW2kmgqeih3tNxSoVS2WI7cnK7
         Xc6KfJnYJv38cbcGh9xUd7I7rs0uZvfVwC4sxo4N37jfuKu09hVCP2C0hRBRyAxyz45m
         kyoQ==
X-Gm-Message-State: ALoCoQkXbRDQO/nLxKxUMoIUBhYoxjFTbRL7Qd9vjhZLjfFPFz4Ez6aM6efhtTYK/HOtxNsHUV44dzYNgRS/fY1J+hT5C7MfVg==
MIME-Version: 1.0
X-Received: by 10.25.218.137 with SMTP id r131mr9353243lfg.63.1453232830816;
 Tue, 19 Jan 2016 11:47:10 -0800 (PST)
Message-ID: <CAKws9z00CYYUZMGW9-QaBDoLc42Em4WWy_eGKLoxNk2uDYwnOg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114020cea845060529b522be
Date: Tue, 19 Jan 2016 14:47:10 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenCart users, switch to OpenCart-CE immediately
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org

--001a114020cea845060529b522be
Content-Type: text/plain; charset=UTF-8

This commit was made against the Community Edition of OpenCart on April 2,
2014.

https://github.com/opencart-ce/opencart-ce/commit/5bc5f7a816aab17f1718e0c09323c74cd7167f35#diff-d0709af23c0fbe35295ee9a1ceb9fd79

As you can see from the commit message, it was intended to prevent file
inclusion attacks.

It's January 19, 2016 and OpenCart proper is still doing it wrong.

https://github.com/opencart/opencart/blob/0b8ff2ef74309dd2e1797af762364dab2eef761b/upload/system/engine/action.php#L7

What this line tries to do is prevent directory traversal attacks by
stripping out ../, but unfortunately it's quite dumb.

https://3v4l.org/tMmNK

This also doesn't defend against NUL byte injections.

This is a 0day, because Daniel Kerr usually just flames security
researchers and I didn't feel like subjecting myself to that ever again. To
wit:

* https://github.com/opencart/opencart/issues/1269
* https://github.com/opencart/opencart/issues/1279
* https://github.com/opencart/opencart/issues/1534
* https://github.com/opencart/opencart/issues/1594
* https://github.com/opencart/opencart/issues/3721

I'm sure I missed quite a few instances of him flaming people trying to
help him secure his project for free. He doesn't seem to ever learn, either.

The OpenCart-CE maintainer, in contrast, is more hospitable towards
security researchers. So in addition to already having a fix in place,
their rapport with the community means using the community edition is
likely to make your system more secure than running OpenCart proper.

In closing, I recommend everyone who runs OpenCart to switch to OpenCart-CE
today and anyone who does penetration testing read this excellent article
by Keith Makan about Ordering an RFI via Email:
http://blog.k3170makan.com/2012/01/ordering-remote-file-inclusion-via-e.html

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a114020cea845060529b522be--
