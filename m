X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1162" "Thursday" "22" "October" "2015" "22:40:29" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "39" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102302:40:29" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        robertcwatso Oct 22   39/1162  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<20151021153633.GA2430@boyd>" ("<20151021153633.GA2430@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18167 invoked by uid 550); 23 Oct 2015 02:41:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18149 invoked from network); 23 Oct 2015 02:41:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=43ICFeZw9BfAMgicYLehFSDJoIe1cHkfoT6iVWg0LOI=;
        b=DfmaQC6nCh8N/3IXKLoQluiq57S7sZSYMKVw1pE1JQX6Qr8twF5wojlPWXF6n+KAmY
         kblOZyey/bLklHjYwNF542FRw+HIwMY+YB8xV8ik923J6QPa86DtxOxjuLppMxdNCf1u
         GRb5exc1pCXplA0WSEz2AM9I9ygDmylgubDxNnz2w91xPEme2dkWAnokgSear8gDrF8X
         5f6QSaZwnNerTxv2rHtNHCl32AGj1htGuIxBEXnA2AV9c2rm+fn83KQ3N5YUuaHwXYq2
         khLmsy9w5W51n1feoEJ5qJFk46OIDl6/s6ozkBOtUyWdazUGmNOmqYpfz9uXfmJheNCk
         3H8Q==
X-Received: by 10.50.143.4 with SMTP id sa4mr1760402igb.52.1445568068514; Thu,
 22 Oct 2015 19:41:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151021153633.GA2430@boyd>
References: <20151021153633.GA2430@boyd>
Message-ID: <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1134bce238fe3b0522bc8ba1
Date: Thu, 22 Oct 2015 22:40:29 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--001a1134bce238fe3b0522bc8ba1
Content-Type: text/plain; charset=UTF-8

Apologies if I'm naive but... since /tmp is world writable, how is this a
vulnerability?




*Trust in truth keeps hope aliverobertcwatson1@gmail.com
<robertcwatson1@gmail.com>www.docsalvage.info
<http://www.docsalvage.info>www.CivicChorale.org
<http://www.CivicChorale.org>*
<http://www.wunderground.com/cgi-bin/findweather/getForecast?query=Tallahassee,%20FL>
<https://www.healthcare.gov/>

On Wed, Oct 21, 2015 at 11:36 AM, Tyler Hicks <tyhicks@canonical.com> wrote:

> Hello - The BusyBox implementation of tar will extract a symlink that
> points outside of the current working directory and then follow that
> symlink when extracting other files. This allows for a directory
> traversal attack when extracting untrusted tarballs.
>
> This behavior was documented in the BusyBox source with the following
> 2011 commit:
>
>
> http://git.busybox.net/busybox/commit/?id=a116552869db5e7793ae10968eb3c962c69b3d8c
>
> I've created an upstream bug report:
>
>   https://bugs.busybox.net/8411
>
> Can we get a CVE assigned to track this? Thanks!
>
> Tyler
>

--001a1134bce238fe3b0522bc8ba1--
