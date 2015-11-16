X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["850" "Tuesday" "17" "November" "2015" "01:30:24" "+0800" "Shawn" "citypw@gmail.com" "<CABniQZMcHBUkje0JG0sNS=OgMjpjnq52+GyEHwo9cEvsPD_8VQ@mail.gmail.com>" "23" "Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00" "^Date:" nil nil "11" "2015111617:30:24" "[oss-security] CVE request-HUAWEI P8 GRA-UL00" (number mark "        citypw@gmail Nov 17   23/850   " thread-indent "\"Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00\"\n") "<20151116125652.GA18548@openwall.com>" ("<2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>" "<20151116125652.GA18548@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1407 invoked by uid 550); 16 Nov 2015 17:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1383 invoked from network); 16 Nov 2015 17:30:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=TZ4I4uFCpsm1h4HMX6NmBaTw59ENbgeh2KmaajnTpf4=;
        b=ugamt32DbSRTmrjZT10IkfL+AZmMhhatgyQQ7K9OFj+Du0rTKl6Ft2wZa5II0lUIYI
         B4cZvF54Prqlz89smH2s347BNbgDqe0f8MdAzrvcUN5A26fwnFG64hH+hf5Bu0E0eMii
         m90nMOyAYFsN98mcOiyiHQHLq+qX3KQUqpc3aH7MGqSGCmHlxyx7/E6Wa3y2zjwI1Sq+
         rl2FwalWKQfK1d9xPvvcffGaKb7Sn7KxXJ6nwYa/OLZX2Rl3tgfb1GcCc3L+/m7CDEso
         D76mSvgGkb9UK0Quuioxys6DV3SW7QP05H0u5tfqLEPIXJy8CVOBA7Oa0KcJHfOlrQ/o
         O8Jg==
MIME-Version: 1.0
X-Received: by 10.194.21.170 with SMTP id w10mr37415514wje.29.1447695024095;
 Mon, 16 Nov 2015 09:30:24 -0800 (PST)
In-Reply-To: <20151116125652.GA18548@openwall.com>
References: <2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>
	<20151116125652.GA18548@openwall.com>
Message-ID: <CABniQZMcHBUkje0JG0sNS=OgMjpjnq52+GyEHwo9cEvsPD_8VQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Nov 2015 01:30:24 +0800
From: Shawn <citypw@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00
To: oss-security@lists.openwall.com

On Mon, Nov 16, 2015 at 8:56 PM, Solar Designer <solar@openwall.com> wrote:
> On Mon, Nov 16, 2015 at 02:56:41AM +0000, ?????? wrote:
>> Code below will lead P8 restart :
>
> As a moderator, I reluctantly approved this, but I could not confirm
> that the phone's software in question (a modified Linux kernel? or a
> kernel module?) is Open Source.  If it is not, then this is off-topic
> for oss-security.  Google web search for hi6402dbg did not find
> anything, suggesting the code in question has not been published.
>
I've tested it on a very similar type: Huawei P8 Lite ALE-UL00 . It
ended up in an error 4 segfault, which typically caused by no page
being found in userspace. If it were cause the machine reboot, it
should be likely a highly customized libc/kernel.


-- 
GNU powered it...
GPL protect it...
God blessing it...

regards
Shawn
