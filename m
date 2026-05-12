Received: (qmail 14303 invoked by uid 550); 12 May 2026 18:13:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14276 invoked from network); 12 May 2026 18:13:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778609601;
	bh=qsb3dcBWbikfLZ790nMFVhTn6TAANh1GjG+lQRCMZ0w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=u1v0wghilIBb2B4wpy8l0tEFFlugcVo9GIYd64VQnghOiL1I5a2sJSoJBPLLY5tHw
	 txDIpjzST8hE7G+H1xi0RzpFDjm8bdJ+bgZydyxYmJ/isAP/f8CLVDmqANVTjP8V2W
	 xKIXha92FsDF8AGTbyT1R/Spp3A+MkYF92gqI60WxnESmGByqARvziALm6C11c1ryq
	 5UTJrkU6C6OXewVxuCFArrMvS/LVQ+wbh5X3/dBpN43q095IYnn4vgpIVKcsDRimO1
	 Zwt9pYBOtEsHyDbg29gELBvFxE/Hu2ubb4RZPjsqzecPpF9Ato18eVRi46ZoY5iHWG
	 uYFx/ep00VAWw==
Message-ID: <9079a54f-f83b-486f-b66b-79ed0ba69838@pipping.org>
Date: Tue, 12 May 2026 20:13:21 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Cc: Ilia <ilia@ilia.ws>, solar@openwall.com
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
 <20260510074756.GA17210@openwall.com>
 <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
 <CALkpNnQHhjgua8=6iH+L+5hB1AgcLeJTV9Js_9uQ4OJA5Sd+qQ@mail.gmail.com>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <CALkpNnQHhjgua8=6iH+L+5hB1AgcLeJTV9Js_9uQ4OJA5Sd+qQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and
 CVE-2026-44928

Ilia, thanks for jumping in!


On 5/12/26 19:44, Ilia wrote:
>      > CVE-2026-44927: In uriparser before 1.0.2, there is pointer
>     difference
>      > truncation to int in various places.
> 
>  From my perspective CVE-2026-44927 is a low-severity security issue 
> that would be hard to exploit in reality since it requires an actual 
> 2gb+ input to even trigger. For example, in the context of PHP (which 
> uses the lib) you'd hit the memory limit long before this even triggers. 
> Therefore, this is "Low" severity from my perspective. Given the input 
> size, it definitely doesn't have a remote vector.

I have no problem with this being considering "low severity" based
on the payload size needed, but this /does/ have a remote vector that is
independent of size constraints, as far as I am concerned. I just 
checked the definition of a remote attack vector a la CVSS [3][4] and
it's not "adjacent", not "local", and not "physical": I see nothing
stopping applications from parsing URI strings read "from the wire",
directly or indirectly, the same way that XMPP parses XML from the wire.
Am I missing something here?

Best



Sebastian


[3] 
https://www.first.org/cvss/v3.0/specification-document#Exploitability-Metrics
[4] 
https://www.first.org/cvss/v4.0/specification-document#Exploitability-Metrics

