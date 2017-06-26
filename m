X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1839" "Monday" "26" "June" "2017" "16:59:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>" "47" "Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth" "^Date:" nil nil "6" "2017062622:59:57" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth" (number mark "        kseifried@re Jun 26   47/1839  " thread-indent "\"Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth\"\n") "<5951818E.21842.8B6A4375@pageexec.freemail.hu>" ("<20170624005003.GB27479@grsecurity.net>" "<CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>" "<CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>" "<5951818E.21842.8B6A4375@pageexec.freemail.hu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11574 invoked by uid 550); 26 Jun 2017 23:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11553 invoked from network); 26 Jun 2017 23:00:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=pN7DbytJEir5PKHmfYyTc1XdsVy/3P7iKbrZBDdqSS4=;
        b=t1yZY+FFY+qxflWhQaExHBo6GBWyceaoqTgWjrTA0mYDf02D4RPMEULXKqv/nOSK9l
         WKdlJ6BsJudU+kIzPtXiMp3owtQUtiEZyZ6+TIGdLpNPkGoKEUAI+/ECr4SzbNJ8PdjX
         I/TbsaawYjznkmYCSH/2C11cp/z76HJgLlCdINfWTp8JHys6ie2d8Tg/8KXe5+uxnmDZ
         c6oc5X5Ra0XQlxWLdWxgSTYB7MgzOGsTGTZZr6lrmfYP9vv1RGLPfsLGxEf4Gj2zeayO
         non8CNxiAGTYoBDmTRiL73LEBaJN0FcGRNK/OESgF27GGHTKxtQBHsTJxbzBC9+NClyw
         OYWg==
X-Gm-Message-State: AKS2vOwCqpoiQnGbhKXTV715quxfPYNDOZoH7fzJ30piyNdfm0peUs6D
	OxMqrr1VGRyQTFrGxpO5Sg==
X-Received: by 10.107.16.214 with SMTP id 83mr3785206ioq.88.1498517998775;
        Mon, 26 Jun 2017 15:59:58 -0700 (PDT)
References: <20170624005003.GB27479@grsecurity.net>
 <CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>
 <CANO=Ty1f8yEyvBy_ZR9xU3MxSjjxKUk5q1S_VRsmJAHy7z2KhQ@mail.gmail.com>
 <5951818E.21842.8B6A4375@pageexec.freemail.hu>
Message-ID: <a7c4a449-27df-1595-5ba5-4c5cd7ba93e0@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <5951818E.21842.8B6A4375@pageexec.freemail.hu>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
Date: Mon, 26 Jun 2017 16:59:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities,
 refcount_t UAF, and an ignored Secure Boot bypass / rootkit meth
To: pageexec@freemail.hu, oss-security <oss-security@lists.openwall.com>



On 2017-06-26 3:50 PM, PaX Team wrote:
> On 26 Jun 2017 at 13:47, Kurt Seifried wrote:
>
>> I think we can agree as a community of professionals that insults and na=
me
>> calling are unnecessary and also not very effective.
> I completely agree with you but then I can't explain why you chose to ins=
ult
> our projects last week and still have not remedied it (both the CVE and y=
our
> insulting tweet are still up). I find it curious how you can preach about
> professionalism after being the very instigator of the recent splat (heck,
> instead of answering, you called it a conspiracy theory when I asked you =
in
> private why you issued the CVE to begin with which then forced us to take
> the issue public).
So as per the private email thread we had previously I'm not going to be
interacting with you beyond what is strictly neccesary for CVE and other
professional purposes.

One the CVE REJECT side, CVE-2017-1000377 looks legitimate, although I'm
inclined to agree with Qualys and REJECT it so that you stop emailing. I
did contact MITRE, I haven't had time to reply to them yet (they are
also wondering why the CVE needs REJECT'ing), as such I think it may be
best to recuse myself from this specific CVE and let you handle this
with MITRE. I have also previously told you how to go about doing this.

I will say that CVE identifiers doesn't just cover full code execution
flaws, but also covers situations where for example a security property
is claimed but is not as effective as we thought (e.g. the stackguard
page size in this case). Many CVE's are not fully exploitable on their
own but are part of an exploit chain.


>
> cheers,
>  PaX Team
>

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


