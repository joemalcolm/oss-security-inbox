X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1473" "Friday" "5" "January" "2018" "21:28:11" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9or=myCkR3_iNfZ__k0tcYpPK5_FBpSqdR43p9p5qYEgA@mail.gmail.com>" "32" "[oss-security] CVE-2017-18021: predictably random password generation in third-party pass-compatible software, \"QtPass\"" nil nil nil "1" "2018010520:28:11" "[oss-security] CVE-2017-18021: predictably random password generation in third-party pass-compatible software, \"QtPass\"" (number mark "U       Jason@zx2c4. Jan  5   32/1473  " thread-indent "\"[oss-security] CVE-2017-18021: predictably random password generation in third-party pass-compatible software, \"QtPass\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1626 invoked by uid 550); 5 Jan 2018 20:28:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1608 invoked from network); 5 Jan 2018 20:28:25 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=UYM1pz
	TIwKE8OtuBqqw+t64IS/A=; b=19dpB50GehPQpkOq181J/8N/ma04HoX6JBK2hv
	349eZ6hq49SmrXQMSIAX3wp3//nrNUHJtYEIfbzXxo1W8/WHDJ/IgT0nqKiOyMCK
	t7ZwPKcAl/Z4D/W4CZLhm7zKwUjV2lB7DNcFRQp2yFi4kGCAc1PIsCa1mZPIB2Gi
	5+mleGEfnymbPkzlMlM+bN1ZDJvltfgcd/UkJXG9ILtYXqaZkUomGJQZGMTAM4mX
	lXTFPZ1lqo5erV2u7n/Hj5Mq3iTC9mLjP/akps35OugazidpPLLzLhrcdJvu8Ok2
	Lk5e3uuf8utpxCMUh/3xrWKViIEXJ1CKMuM0dm1SYPc5YMmA==
X-Gm-Message-State: AKwxyteeRdXGruhFGTgCRKQGFC8Uwmd9gHdTm5iKPXLGKGoS/38CvsPU
	jVLsG95HgDtjLt2ql3/yMrn6mK+b6F9sIdr+/94=
X-Google-Smtp-Source: ACJfBoveKN11RbwL+MEOpifzV2TiJT7Yw+IXz3pal7ZWT4S9d4/YdYzjQJF5qy0ie/1ATEKDUlUvToBi7+KU0dkBz+o=
X-Received: by 10.202.170.199 with SMTP id t190mr2285235oie.275.1515184092191;
 Fri, 05 Jan 2018 12:28:12 -0800 (PST)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 5 Jan 2018 21:28:11 +0100
X-Gmail-Original-Message-ID: <CAHmME9or=myCkR3_iNfZ__k0tcYpPK5_FBpSqdR43p9p5qYEgA@mail.gmail.com>
Message-ID: <CAHmME9or=myCkR3_iNfZ__k0tcYpPK5_FBpSqdR43p9p5qYEgA@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-18021: predictably random password generation in third-party
 pass-compatible software, "QtPass"

Hi folks,

"QtPass" is a separate project entirely from pass. It shares no code
with "pass", the project I maintain. But, "QtPass" does endeavor to be
compatible with pass. However, it is in fact a completely separate
project. Best practice is probably not to stray too far from my nest
to these third-party GUIs, given bugs like this one, CVE-2017-18021, a
way of trivially predicting all passwords ever generated with
"QtPass".

Bug report is here: https://github.com/IJHack/QtPass/issues/338
Fix landed in v1.2.1: https://github.com/IJHack/QtPass/releases/tag/v1.2.1

All passwords generated with "QtPass"'s built-in password generator
are possibly predictable and enumerable by hackers. The generator used
libc's random(), seeded with srand(msecs), where msecs is not the
msecs since 1970 (not that that'd be secure anyway), but rather the
msecs since the last second. This means there are only 1000 different
sequences of generated passwords. Disaster.

If you're using this software, now would be a good time to change all
your passwords and regenerate them using a secure utility such as pass
(what this mailing list is about), or update to the latest version of
this third party "QtPass" software and regenerate from there. All
distributions should update and remove vulnerable versions from their
package trees.

The fix I proposed to the "QtPass" developers involves using Qt 5.10's
built-in CSPRNG wrapper, or /dev/urandom for older Qt versions.

Regards,
Jason
