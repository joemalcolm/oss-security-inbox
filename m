X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1327" "Friday" "13" "November" "2015" "15:07:11" "-0600" "Mark Felder" "feld@feld.me" "<1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>" "40" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111321:07:11" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        feld@feld.me Nov 13   40/1327  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<5645980D.9010105@gmail.com>" "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1435 invoked by uid 550); 13 Nov 2015 21:07:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1404 invoked from network); 13 Nov 2015 21:07:23 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=bFXffZxBKRVtdFStYdBAyO6XbHU=; b=AWHk1/
	x08qTvfKr6ZuAc6M8ctzaEZLRjk0RVN1Pm8DiOJtUuzTaPy4HcB1SkobxHXidcJw
	orLHCUHFSJ5ysXhzw1xvtV0ZPWBJq9bFIkdLy6jWbKocoUBpl06o5Q+5zaWK7QDH
	wO8f8OMAMD2eEibEHxqNpD8Cf8G7L+nTwXHm8=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=bFXffZxBKRVtdFS
	tYdBAyO6XbHU=; b=L8bYAJedseC5wyWE06um+yXnBDn/9HqOf5Q/Z8d7FOwITki
	Xrx7TMMwdIqMzfnGCrpz+zjnNkupdsrg/0SsLc06DDLwDJ900baw2xYnahy/urNh
	dQ4TJsVbrk2K7S4Zt8FI4d+NpZ4c3IMTlSHp9izWnsCfMjmNVLlNHGUid4Ww=
Message-Id: <1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>
X-Sasl-Enc: yqcGlj5dQbXgm+LNuVGYf3byqD7lxsD4S2a2VOYi61Td 1447448831
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-37ba1837
In-Reply-To: <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <5645980D.9010105@gmail.com>
 <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>
Date: Fri, 13 Nov 2015 15:07:11 -0600
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections remote
 code execution on deserialisation flaw
To: oss-security@lists.openwall.com



On Fri, Nov 13, 2015, at 08:37, Mark Felder wrote:
> 
> 
> On Fri, Nov 13, 2015, at 01:58, Gsunde Orangen wrote:
> >
> > I share Tim's view [2] and a dozen of (own) applications we checked
> > won't break. A property that re-enables deserialization of course would
> > help additionally: allow applications that really *need* this to get it
> > working; but that requires an explicit step - so latest by that time:
> > those, whose applications break after including a "fixed" version of
> > Commons-Collections would (hopefully) start to think about their design.
> > 
> > Gsunde
> > 
> > [1] http://seclists.org/oss-sec/2015/q4/238
> > [2] http://seclists.org/oss-sec/2015/q4/263
> 
> This statement is how we have been operating our mitigation strategy:
> 
> "Applications which use Apache Commons Collections and do not use
> deserialization are not vulnerable."
> 


CERT has released a statement[1] indicating that you are vulnerable
simply by having this in your classpath. It does not matter if you are
doing deserialization or not. The patch[2] to disable serialization
functionality by default seems to me like the only option to mitigate
the CVE now.


[1] https://www.kb.cert.org/vuls/id/576313
[2]
https://issues.apache.org/jira/secure/attachment/12771520/COLLECTIONS-580.patch

-- 
  Mark Felder
  feld@feld.me
