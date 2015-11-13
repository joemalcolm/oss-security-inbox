X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2211" "Friday" "13" "November" "2015" "08:58:05" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<5645980D.9010105@gmail.com>" "47" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111307:58:05" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        gsunde.orang Nov 13   47/2211  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26576 invoked by uid 550); 13 Nov 2015 07:58:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26555 invoked from network); 13 Nov 2015 07:58:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=B1BR5tobQrQD12cntaIuCPN4kciOJZzAhJLt9ESlUws=;
        b=j/3vyx30SOIF6DpCjMJRpp607Bu65LWKcteABEJGO+98ZEVCG4rVmbCF1218anYxsg
         YdSe37m0idoOjEIre+9FhKwAtDGN93dPSYtu31cf+amPufmVJkYxBl6zptPBXIudybMc
         d9puYZjdyXVv/UOj13gz+y/wawiyCfSSnLei0g0c5gqB57dqm3dj2xi3ZYoxeyp7XP6u
         I2wJlxfaRZSMMF9nKU2Gn/o7h1fkmB0HV39NEmYveV4fIWszF974KJ96TBbPgZv3njNV
         iJ1BCH4s0iF4NloGWAR+Y/Iyd/+AFMoYnAkd8asgeHA0QL80mm+gZE5I2ysHltagMjtK
         saSQ==
X-Received: by 10.28.131.11 with SMTP id f11mr1917118wmd.59.1447401479145;
        Thu, 12 Nov 2015 23:57:59 -0800 (PST)
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5645980D.9010105@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Date: Fri, 13 Nov 2015 08:58:05 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections
 remote code execution on deserialisation flaw
To: oss-security@lists.openwall.com

On 2015-11-12, 22:52 Mark Felder wrote:
> 
> 
> On Thu, Nov 12, 2015, at 03:04, Gsunde Orangen wrote:
>> CVE-Request:
>> I appreciate this general discussion around deserialization issues and
>> hope this will make a jump-start for sustainable improvements on both
>> Java and application level in the long run.
>> Aside of that however, I'd like to go back to Jason's original request
>> to Mitre to get a CVE ID assigned to this particular issue with the
>> Apache Commons Collections functors package (specifically in the
>> InvokerTransformer class).
> 
> Is there any proof that Apache Commons Collections functors package
> isn't doing what it's intended to be doing? Everything I'm reading
> indicates that the problem is with applications believing they can
> *trust* the input, not that there's a bug in the functors package, ie,
> bad design.
I agree, and Florian stated similar concerns already in the beginning of
this thread [1]. However, what the functors package does seems to be
very easily to exploit through untrusted input. So the "bug" I would
assign to Commons-Collections is that it allows deserialization by
default while it shouldn't by default.

> 
>> So people (esp. Java applications developers) have a unique reference
>> when analysing and fixing this particluar one (by e.g. removing the
>> class, make it non-serializable or wait for a new Commons Collections
>> release that includes that fix - whatever is most appropriate to their
>> application's context).
>>
> 
> The currently proposed "fix"[1] is to disable functionality that is
> being used. This will break applications that need them.
> 
> [1] https://issues.apache.org/jira/browse/COLLECTIONS-580
I share Tim's view [2] and a dozen of (own) applications we checked
won't break. A property that re-enables deserialization of course would
help additionally: allow applications that really *need* this to get it
working; but that requires an explicit step - so latest by that time:
those, whose applications break after including a "fixed" version of
Commons-Collections would (hopefully) start to think about their design.

Gsunde

[1] http://seclists.org/oss-sec/2015/q4/238
[2] http://seclists.org/oss-sec/2015/q4/263
