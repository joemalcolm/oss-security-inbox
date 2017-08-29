X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1935" "Tuesday" "29" "August" "2017" "10:49:17" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0+7=X0u+o6yyvZcjbEmvj-_c0QzDQiSRxgUAFy7mF6hw@mail.gmail.com>" "65" "Re: [oss-security] A bunch of duplicate CVEs requested for?? bho.." "^Date:" nil nil "8" "2017082916:49:17" "[oss-security] A bunch of duplicate CVEs requested for?? bho.." (number mark "        kseifried@re Aug 29   65/1935  " thread-indent "\"Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..\"\n") "<alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>" ("<6609652.OIiHvm4qLd@wanheda>" "<alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26567 invoked by uid 550); 29 Aug 2017 16:49:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26546 invoked from network); 29 Aug 2017 16:49:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=WzsvlD56opdUs1ovzVGb7OQOYeY2zz9rXYoLnIjlRj4=;
        b=KfGSH9BSk/8M1OoC9t/o2wNmUERe3wpIe/2u/XKKO21VYAP2clfU/eWIldaodwjtsG
         ud+LzExTxdhuUjOIw4FMVcuz+39xPwTyObK73EIq9OrQ2py18WEj6EVw8eGcsUJhfp7k
         ryJLSniqDueJtUsrpWnId8ZvIwKcZXHYLTxtkGE3oMYHqdX7bJq9JNTfZbSn2fcK8iSl
         +/r0PyhTk2hhnXSvJE37ISOzb3sUQm12BOjro/4aljoHonvavUPHl/H0gNuAecF5sfuN
         cN2ZVbdUiPa2Qu0ViPLcwxJDgYF+bDEg8zHRV3cyfxNfpRFMgRifNva8TkE54WBGIZIW
         1sCw==
X-Gm-Message-State: AHYfb5gmvLdrDa4Dlf/j7EYLTiN6B7yOa5yd0dQfj4LMJFI9CN72GGMR
	gdKbmx8DCHrj2+sp/beXnISO2EcvrKMVba2b3w==
X-Received: by 10.202.232.84 with SMTP id f81mr969720oih.121.1504025358262;
 Tue, 29 Aug 2017 09:49:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>
References: <6609652.OIiHvm4qLd@wanheda> <alpine.GSO.2.20.1708291116010.12310@scrappy.simplesystems.org>
Message-ID: <CANO=Ty0+7=X0u+o6yyvZcjbEmvj-_c0QzDQiSRxgUAFy7mF6hw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11407ac23693180557e7315c"
Date: Tue, 29 Aug 2017 10:49:17 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A bunch of duplicate CVEs requested for?? bho..
To: oss-security <oss-security@lists.openwall.com>

--001a11407ac23693180557e7315c
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 29, 2017 at 10:44 AM, Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> On Tue, 29 Aug 2017, Agostino Sarubbo wrote:
>
> Hi all.
>>
>> In the last time there are some people that run afl for fuzzing...that's
>> just
>> fine and great. Some people miss to communicate their findings to
>> upstream and
>> request a CVE from mitre.
>> However I'm noticing that every day there are new duplicates, let me post
>> some
>> examples:
>>
>
> It is important to keep in mind that CVEs are issued against "products".
> There might be a CVE issued against a software version distributed by Red
> Hat or Debian which is not applicable to the upstream version.  Since each
> distribution patches their version it is difficult to know the "product"
> that a particular CVE is applicable to.


Actually no, that is incorrect. Please see the CVE counting rules, it's a
LOT more nuanced than "CVEs are issued against products". THe docs are at

https://cve.mitre.org/cve/editorial_policies/counting_rules.html

TL;DR: CNT1 comes into play and you get situations like libxml/gzip being
embedded all over the place, but only a single CVE because 1) it's a single
code based that's copied everywhere and 2) pragmatism.


>
> I agree that in my personal experience upstream maintainers are rarely
> involved in the CVE process.


Something I am trying to change. If you are an upstream and you want to
become a CVE Numbering Authority (CNA) for your project(s) please contact
me.


>
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11407ac23693180557e7315c--
