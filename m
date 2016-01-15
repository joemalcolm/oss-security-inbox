X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["826" "Friday" "15" "January" "2016" "16:58:07" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rP34SMoyhxrSMqBPuy+bMn-1kkZijiVGAOMuHf6ztMKQ@mail.gmail.com>" "19" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011515:58:07" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        Jason@zx2c4. Jan 15   19/826   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>" ("<20160114171301.GH28298@localhost.localdomain>" "<CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8092 invoked by uid 550); 15 Jan 2016 15:58:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8068 invoked from network); 15 Jan 2016 15:58:20 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=OUwwczhYpvkXxupjmuMVQ7AaKzc=; b=S+l/gx
	r8wPrOXHvI0/nLedp3Ve6r8b3pFEl2eBCqTMZuOTTO0ni2opFS0kEaZQ43hancWR
	4aOOH95fJ7uRkFcMvwRsOPiT8OpcTiLNdnS1B42ZsnmbipDFESg4tbdJVfVBMEXx
	KSNOR5gszkD+jvntk+FMeIyqrKZDy6HmS0+hSF3xPU8FdRLQhhViyap0YbCRe91p
	oQHAt/BLDkP17Lmm97Q/LyrCKWfPqMCCQMtG3J8eU48R1IjUF/izhWKIS0CcrzH7
	BUvVur72Ebev0F02h4kXfNgUJ5IMdmMJwBUJK4k7JROOaycBZbaV4+DAxgtf4Dr4
	8OBia+7ubj7UKmCQ==
X-Gm-Message-State: AG10YOSWlRSZtavnhOpFXi1Rr4mcFGyHFfvlPIacVh5s/vIdkipbF1mwlMX93E7IHyk1DRG7/63PqnJKxVKzTQ==
MIME-Version: 1.0
X-Received: by 10.28.17.8 with SMTP id 8mr3922530wmr.65.1452873487183; Fri, 15
 Jan 2016 07:58:07 -0800 (PST)
In-Reply-To: <CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>
References: <20160114171301.GH28298@localhost.localdomain>
	<CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>
X-Gmail-Original-Message-ID: <CAHmME9rP34SMoyhxrSMqBPuy+bMn-1kkZijiVGAOMuHf6ztMKQ@mail.gmail.com>
Message-ID: <CAHmME9rP34SMoyhxrSMqBPuy+bMn-1kkZijiVGAOMuHf6ztMKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Jan 2016 16:58:07 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security <oss-security@lists.openwall.com>, 
	Qualys Security Advisory <qsa@qualys.com>

On Fri, Jan 15, 2016 at 4:56 PM, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> Great work Qualys. One question about the PoC:
>
> On Thu, Jan 14, 2016 at 6:13 PM, Qualys Security Advisory
> <qsa@qualys.com> wrote:
>> # env ROAMING="heap_massaging:linux" "`pwd`"/sshd -o ListenAddress=127.0.0.1:222 -o
>> UsePrivilegeSeparation=no -f /etc/ssh/sshd_config -h /etc/ssh/ssh_host_rsa_key
>
> Does your proof of concept patch actually include support for this
> heap_massaging mode?

Read more carefully, answered my own question:

> - Massage the client's heap before roaming_reply() malloc()ates out_buf,
>   and force malloc() to return a previously free()d but uncleansed chunk
>   of sensitive information. The simple proof-of-concept in this advisory
>   does not implement heap massaging.

That's a shame. Please reconsider.
