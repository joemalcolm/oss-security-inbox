X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1407" "Friday" "13" "November" "2015" "08:37:45" "-0600" "Mark Felder" "feld@feld.me" "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>" "38" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111314:37:45" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        feld@feld.me Nov 13   38/1407  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<5645980D.9010105@gmail.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<5645980D.9010105@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6022 invoked by uid 550); 13 Nov 2015 14:37:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5995 invoked from network); 13 Nov 2015 14:37:56 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=7ENol3AM+xY/T7mxpCr1I4yKcAY=; b=yO5D5z
	fLf1uscH7JIF/3hV1CppC2qn0hGJ1GButL9CuB75eJxslC+5YX/Y1ysLBnPd16W/
	uNQ9kS+0Nya08kcBvYseVpVtH93aLcf3pZISqUMu4NuMlODOW+x0rVJab8dIRnue
	5uRvZ92E2aPhgUY9Wl2HaJqgaEenrRsWGE+5U=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=7ENol3AM+xY/T7m
	xpCr1I4yKcAY=; b=FwJDk5dA8ctQvEdRc3XfbAo8Wc464jpnaKzLQIQWJiQXWvS
	bpjkoOHlDArogPRL/AnvjitYGWVq5gOoXaVq3NymHL1xwo3ZNwO16Gpqy+TPmj1D
	iu7MPYdCqkIhSY2c5bUo8VI26+/Pld7wMA0R4yDKXO0/V+/EpMp4BadRTktE=
Message-Id: <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>
X-Sasl-Enc: CLg2viiwWdosqat20fIvutVhQz1qCP5CrHE1t9NkoYvs 1447425465
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-37ba1837
In-Reply-To: <5645980D.9010105@gmail.com>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <5645980D.9010105@gmail.com>
Date: Fri, 13 Nov 2015 08:37:45 -0600
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections remote
 code execution on deserialisation flaw
To: oss-security@lists.openwall.com



On Fri, Nov 13, 2015, at 01:58, Gsunde Orangen wrote:
>
> I share Tim's view [2] and a dozen of (own) applications we checked
> won't break. A property that re-enables deserialization of course would
> help additionally: allow applications that really *need* this to get it
> working; but that requires an explicit step - so latest by that time:
> those, whose applications break after including a "fixed" version of
> Commons-Collections would (hopefully) start to think about their design.
> 
> Gsunde
> 
> [1] http://seclists.org/oss-sec/2015/q4/238
> [2] http://seclists.org/oss-sec/2015/q4/263

This statement is how we have been operating our mitigation strategy:

"Applications which use Apache Commons Collections and do not use
deserialization are not vulnerable."

Assuming that statement is correct, disabling deserialization by default
doesn't offer additional protection to people. Instead it requires a
code change when they upgrade to re-enable it and cause them to be
vulnerable again.

Would the greater community be better served by additional documentation
on how to safely handle the deserialization in their application? Is
there such a method, or is this hopelessly broken?

If you're still vulnerable even if you don't use deserialization in your
application this completely changes our risk profile and we need to
change our mitigation strategy.


-- 
  Mark Felder
  feld@feld.me
