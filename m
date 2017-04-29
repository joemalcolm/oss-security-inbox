X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1822" "Saturday" "29" "April" "2017" "19:24:09" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc_yrmXsGOs_nRLJoqP=sTPRnjsnxL=ts=E5Vj-UxT_VhQ@mail.gmail.com>" "60" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042911:24:09" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        rootredrain@ Apr 29   60/1822  " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") "<CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>" ("<20170428015004.11956.12148@falcon>" "<20170428030522.GA53619@wopr>" "<CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>" "<CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com>" "<CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3810 invoked by uid 550); 29 Apr 2017 11:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3784 invoked from network); 29 Apr 2017 11:24:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=kXTUgxEqrAG30nWHMqT7hCKzTDkWr3ZKc34tD9LdV0U=;
        b=IoZ4rybAaCTlzyFNMNGffOCiD0owgVuiJJuL8iaVK0LVj59gA/vM47pxvPGEj1ANnN
         yzd5WX852tINVAAYmaTGhuyjCcOisQYZlOUyJe8dJBCDfWA0KeQI3XS5Dimw4/7VkBtA
         i/CzE74FKyi0BZJF7HOV/g1CRJx7x8dlS4VJuHGtWw7PXAvZiUs+usLgPdp6kJPhO3HL
         5qrehlGccqaSoVdKnt9GLREsvpCEZKPoZ1/bJrcemRRzyJENPspBs4AXYqHJOb8tcO+b
         6BXMmXm3obr7E4CBwqm374yb5JCoeXG5R+V3lIjmWrXN0uOcnqEADe2pXa/hCU259lHM
         MyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=kXTUgxEqrAG30nWHMqT7hCKzTDkWr3ZKc34tD9LdV0U=;
        b=je+t5aFQSR1uYmDmnPjAPdOuXvoDOzGAvI9mtPy5mds6RpfEbtREUfVZb4lVDWgwGK
         3eywTzzAUJ3JWzCm7hP09DTnJrHphMI4ovfKPkAc0Zs5TZoyUAqxcwNVNYw0VycaI9VR
         YURudn7ajfvFyaE/LAvQTp1HjQWhzxm+HeaRK72F5C7zLrT95RkxIrhe8D5QqSNAKCpU
         D/215MROWdldqDbTtSheDo1qSreC1gpHS3R81Bi2bEq+skHtaxZf7cmf8kFmrhJGncP1
         5ZfLN7F3mpfPlgNDVQDKD0JDkIHk9u5m17ujhKMaZIksflhcuy1YRk9mbTPVvrn3qi7r
         Hxkw==
X-Gm-Message-State: AN3rC/7XMqxws0Cmlym/F8hVAM8L0eL6YXGrFSuaHf1TpbFUElM/D0Hz
	NZt4BIa5VN7fqpxND3iJQ9G+f2Y7xEezGz8=
X-Received: by 10.129.48.68 with SMTP id w65mr12354840yww.99.1493465049769;
 Sat, 29 Apr 2017 04:24:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>
References: <20170428015004.11956.12148@falcon> <20170428030522.GA53619@wopr>
 <CAAYo3Bu+9QFoqsRU__WmCou09Y_xt39VMEyoV3Y-RR0qv-gtng@mail.gmail.com>
 <CAPGxrc_kUAFA6Y_QnSxx-iyt2kGoKG1=RCSKUGE=ot1qvTtL=w@mail.gmail.com> <CAJ_zFkLfOaQEkD+o8j7GMiXFxcZ-ANA4aYA13NjtN6iOUWfDuQ@mail.gmail.com>
Message-ID: <CAPGxrc_yrmXsGOs_nRLJoqP=sTPRnjsnxL=ts=E5Vj-UxT_VhQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11409d0ec6ad25054e4c6df7
Date: Sat, 29 Apr 2017 19:24:09 +0800
From: redrain root <rootredrain@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: oss-security@lists.openwall.com

--001a11409d0ec6ad25054e4c6df7
Content-Type: text/plain; charset=UTF-8

nope~
I know this issue is a type confusion similar to your initialized dsc
parser
for example
The last previous vulnerability code exists in the
zinitialize_dsc_parser(). The method gets the memory data using
dict_memory() and treats it as an object to call its gs_alloc_struct()
method.
in the Evince code execution demo,  uses ghostscript (libgs.so) as the .ps
file processor
and another demo attack imagick is the shell command injection vuln.

and CVE-2017-8291 is a part of my exploit last year it also affect some
programs use ghostscript
that's why I use Evince as the example.

Regards,
redrain



2017-04-29 13:36 GMT+08:00 Tavis Ormandy <taviso@google.com>:

> On Fri, Apr 28, 2017 at 7:43 PM, redrain root <rootredrain@gmail.com>
> wrote:
> >
> > what a awkward??
> > I have discovered a part of my vulns about ghostscript last year and
> > exploited in fulldisclosure early!
> > and these vulns are part of mine I was going to discovered these in
> defcon
> > or other conference...WTF...
> > u guys are logo designer???
> >
> > there are two demos last year
> > Evince Arbitrary Code Execution https://youtu.be/wzcrHXngfcM Attack
> Imagick
> > through Ghostscript https://youtu.be/tPGm_ANDyOw
> >
>
> I don't think so, that is CVE-2016-7976 and is entirely unrelated to
> the issue being discussed, other than superficial similarity of the
> exploit.
>
> That issue was reported by me, and we discussed the ImageMagick and
> evince attack vectors at the time, you can check the archives if
> you're interested.
>
> http://seclists.org/oss-sec/2016/q4/29
>
> This issue (CVE-2017-8291) is a type confusion vulnerability (well,
> technically two vulnerabilities), and was found in the wild.
>
> Tavis.
>

--001a11409d0ec6ad25054e4c6df7--
