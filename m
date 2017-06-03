X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1780" "Friday" "2" "June" "2017" "18:17:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty37M4dTtMHiRAJ1nbp6sz33SuCDZedY3dysg6SKOh7i5g@mail.gmail.com>" "55" "Re: [oss-security] What happens in order to get CVE numbers" "^Cc:" nil nil "6" "2017060300:17:11" "[oss-security] What happens in order to get CVE numbers" (number mark "        kseifried@re Jun  2   55/1780  " thread-indent "\"Re: [oss-security] What happens in order to get CVE numbers\"\n") "<PVUnAZzWQ8f0rd5-Ie-aBolsYcjjhMDobF4RyKS65EgbkEN4afROZfrtOtSQplyixFRdLfVEPwxxWxRmTZkKllcyWGqaEaydd5DNv8BgdyA=@protonmail.com>" ("<nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>" "<20170602154155.GB3713@jasmine>" "<PVUnAZzWQ8f0rd5-Ie-aBolsYcjjhMDobF4RyKS65EgbkEN4afROZfrtOtSQplyixFRdLfVEPwxxWxRmTZkKllcyWGqaEaydd5DNv8BgdyA=@protonmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13575 invoked by uid 550); 3 Jun 2017 00:17:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13554 invoked from network); 3 Jun 2017 00:17:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1isSO3dUBe88IYvRTxHjnwC2jiWMKUjUpGwjC3eWy7w=;
        b=Zy//kstI33Khwo17BhRRf1boryhnSDuuh1DGiwppmS8QZdh4k9DBqRELNqj13aokXx
         PNBfoM5kWOBDCS1qnD8laZsiqvroNAk6PnBDUiNOHdz0xmrkYqFSlroLYvZD69KJT0Eh
         zPgFk75a2NVbrP3rkDw+GZmxk3pzvlbrNizYJAHeG2Qa9/Q3RsbVF8Dj3D0NwR6zvuOp
         +o5NQZYYOG2akW9/1Z2yZy3L97la3ok+YrFnGGQzpurjlRz+hDQgZ2ndTj8VAnduD9ml
         Hz+/AbG9SB/FCEYGQ8eA3muQ96YqVaYheIe53aNDXoh6zNOlY/rp+V8ksr8rM0v0rrQx
         DIYg==
X-Gm-Message-State: AODbwcC2ESZkHKX2+yXFcSjKMxiaz4qlyRQ9G8mP0vPPuAkPOBy+4Iea
	JSKkewOZTwywkgzqA2znFjvZSsk2RQwJWWY=
X-Received: by 10.202.213.2 with SMTP id m2mr3476300oig.146.1496449031672;
 Fri, 02 Jun 2017 17:17:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <PVUnAZzWQ8f0rd5-Ie-aBolsYcjjhMDobF4RyKS65EgbkEN4afROZfrtOtSQplyixFRdLfVEPwxxWxRmTZkKllcyWGqaEaydd5DNv8BgdyA=@protonmail.com>
References: <nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>
 <20170602154155.GB3713@jasmine> <PVUnAZzWQ8f0rd5-Ie-aBolsYcjjhMDobF4RyKS65EgbkEN4afROZfrtOtSQplyixFRdLfVEPwxxWxRmTZkKllcyWGqaEaydd5DNv8BgdyA=@protonmail.com>
Message-ID: <CANO=Ty37M4dTtMHiRAJ1nbp6sz33SuCDZedY3dysg6SKOh7i5g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113de526f529cf055103304a"
Cc: Leo Famulari <leo@famulari.name>
Date: Fri, 2 Jun 2017 18:17:11 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] What happens in order to get CVE numbers
To: oss-security <oss-security@lists.openwall.com>

--001a113de526f529cf055103304a
Content-Type: text/plain; charset="UTF-8"

You can request a CVE Identifier as soon as you can answer the following
questions:

1) What software is affected? Product name? Product version?
2) What is the problem type? (in some cases we accept "unknown" but you
better have a reproducer that does something nasty like crash the system or
execute code)
3) A description of the issue (which includes affected software. problem
type and ideally the impact)
4) A reference URL, and I know the DWF will accept URL's that don't exist
yet as long as you are trustworthy (e.g. "we will post the advisory at URL
X"), typically for open source something like a link to the issue or the
affected code is more than sufficient.

So yes, you can ask for a CVE well before you commit a fix (and in some
cases before you even fully understand the issue).



On Fri, Jun 2, 2017 at 10:22 AM, Qhdwns123 <qhdwns123@protonmail.com> wrote:

> The developer has not yet patched it.
>
> Can I request CVE before committing?
>
> -------- Original Message --------
> Subject: Re: [oss-security] What happens in order to get CVE numbers
> Local Time: June 3, 2017 12:41 AM
> UTC Time: June 2, 2017 3:41 PM
> From: leo@famulari.name
> To: Qhdwns123 <qhdwns123@protonmail.com>
> oss-security@lists.openwall.com <oss-security@lists.openwall.com>
>
> On Fri, Jun 02, 2017 at 09:09:09AM -0400, Qhdwns123 wrote:
> > Hi
> >
> > What happens in order to get CVE numbers
>
> In order to get a CVE assignment, you can fill out the CVE request form:
>
> https://cveform.mitre.org/
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113de526f529cf055103304a--
