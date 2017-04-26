X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["245" "Wednesday" "26" "April" "2017" "22:27:12" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pvD3WYORH7u0WZEwxfsURJ+DZ0tQeYbx8fptZLeY-x6w@mail.gmail.com>" "9" "Re: [oss-security] CVE request: remote heap overflow in linux networking stack" "^Date:" nil nil "4" "2017042620:27:12" "[oss-security] CVE request: remote heap overflow in linux networking stack" (number mark "        Jason@zx2c4. Apr 26    9/245   " thread-indent "\"Re: [oss-security] CVE request: remote heap overflow in linux networking stack\"\n") "<91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>" ("<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>" "<20170424181756.GA2236@openwall.com>" "<3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>" "<CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com>" "<91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13439 invoked by uid 550); 26 Apr 2017 20:44:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32273 invoked from network); 26 Apr 2017 20:27:26 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:from:date:message-id:subject:to
	:content-type; s=mail; bh=tphBFN3+GGZgzLsVBWq8Uqsnwhk=; b=avgXCL
	NFaYGec9vDmgRMD8veiGdzZGv+xJTbLavWcKfaodS2oKPf3BIwFWkvPauduBYDXH
	v3ITOWfJImADMOb9H7Mdxjl9Kay2V9NYHl5/OW4Me3N56TbK1TV781/jggaXgAyJ
	tpmzxud1EvP/AyjpRVdwpWT56ABKVe6So2wWQRAOVRBE0kuzbxEJraUdUAvqVfCO
	JJRJgqQ+K9Iiu4yRiHXroeGDWkvB4KVsB2ct6Ehe0stHh1JmnWW92bHWMMD/rcIl
	r3IJZo3Pxa5O5JxAoLHgI3rzfBKvoSY082u37R3O6oxjcO49flg0aToob4+0jezI
	xUbohwAZoFdok3DQ==
X-Gm-Message-State: AN3rC/5k7AmJVVBCvKDXgT8d4oDR1Hk10b20StdyNUFf2TAauVAf3Zsj
	vuBIJlSkegSJht5d22WyBqUd6P5MmQ==
X-Received: by 10.202.196.70 with SMTP id u67mr905683oif.190.1493238433091;
 Wed, 26 Apr 2017 13:27:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
 <20170424181756.GA2236@openwall.com> <3805bb04-25a8-5408-30e9-17af80f78d0b@redhat.com>
 <CAHmME9o1bK=EBApF16+3bDuN3N-JxcdxwwNVNm97U0VcXCUkoQ@mail.gmail.com> <91c63b3c-0baf-cb69-2520-8ad6c1cd198a@redhat.com>
X-Gmail-Original-Message-ID: <CAHmME9pvD3WYORH7u0WZEwxfsURJ+DZ0tQeYbx8fptZLeY-x6w@mail.gmail.com>
Message-ID: <CAHmME9pvD3WYORH7u0WZEwxfsURJ+DZ0tQeYbx8fptZLeY-x6w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 26 Apr 2017 22:27:12 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: remote heap overflow in linux
 networking stack
To: oss-security <oss-security@lists.openwall.com>

Hey guys,

Just following up on CVE-2017-7477 -- systems must also be patched
with this commit that landed today:

https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=5294b83086cc1c35b4efeca03644cf9d12282e5b

Regards,
Jason
