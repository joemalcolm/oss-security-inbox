X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3370" "Friday" "13" "November" "2015" "20:44:26" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<56463D9A.5080108@gmail.com>" "76" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Cc:" nil nil "11" "2015111319:44:26" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        gsunde.orang Nov 13   76/3370  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<201511131617.tADGHauO002339@d03av02.boulder.ibm.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<5645980D.9010105@gmail.com>" "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>" "<201511131617.tADGHauO002339@d03av02.boulder.ibm.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9405 invoked by uid 550); 13 Nov 2015 19:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9385 invoked from network); 13 Nov 2015 19:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=7zsYN0aVp2TANk+/YjfvOyoX9PfBpW9l6T3BX82xm9M=;
        b=o8puyogDWsbJiE2dwsBBRdmXW52letKvsQIEDNJ2d01Iiimw0xBlsjln+UaR1TMpED
         enstjIaRmwLNJXNkKc7gLm7mEPgySIR/ry2eIt8B9362MO6XHWveyXGF1P1lj9Ar//Gn
         GW8bEgLL8fcukrZ5gwGTiYqT7y0D3tw6wN6fo5ExO941uW3DukIDbmoyUQU2lzL1UoEw
         wUoJe0R3QJmpg6ntqAvXVOqfeU3uD5ZpG7mJdlI4xC02R4NUZO+3Z1hNkbjE3+uFxfGh
         0XHOxEP3Hnxhy4+6PqNbCqF/KXtifHdZhoLlGUqu39iHtKd8shjnTmWMW/hQCOObw6w4
         JWuQ==
X-Received: by 10.194.6.40 with SMTP id x8mr23087449wjx.50.1447443860505;
        Fri, 13 Nov 2015 11:44:20 -0800 (PST)
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <5645980D.9010105@gmail.com>
 <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>
 <201511131617.tADGHauO002339@d03av02.boulder.ibm.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56463D9A.5080108@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <201511131617.tADGHauO002339@d03av02.boulder.ibm.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: cve-assign@mitre.org
Date: Fri, 13 Nov 2015 20:44:26 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections
 remote code execution on deserialisation flaw
To: oss-security@lists.openwall.com, security@apache.org,
 secalert_us@oracle.com

inline...

On 2015-11-13, 17:14 Lisa Bradley wrote:
> Seems Oracle has a CVE for this:
> https://blogs.oracle.com/security/entry/security_alert_cve_2015_4852
Thanks for the pointer!
CVE-2015-4852 was thus created by Oracle CNA (to address the issue in
WebLogic). I would propose to use this ID for Apache Commons-Collections
as well, plus as a reference for other applications that suffer from
unsafe deserialisation in combination with the functors packages.

But I am certainly not the one to decide ;-) - CC goes to Mitre, Apache
& Oracle.

Regarding Mark's (valid) concerns see further down below.

Gsunde


On 2015-11-13, 15:37 Mark Felder wrote:
> On Fri, Nov 13, 2015, at 01:58, Gsunde Orangen wrote:
>>
>> I share Tim's view [2] and a dozen of (own) applications we checked
>> won't break. A property that re-enables deserialization of course would
>> help additionally: allow applications that really *need* this to get it
>> working; but that requires an explicit step - so latest by that time:
>> those, whose applications break after including a "fixed" version of
>> Commons-Collections would (hopefully) start to think about their design.
>>
>> Gsunde
>>
>> [1] http://seclists.org/oss-sec/2015/q4/238
>> [2] http://seclists.org/oss-sec/2015/q4/263
> 
> This statement is how we have been operating our mitigation strategy:
> 
> "Applications which use Apache Commons Collections and do not use
> deserialization are not vulnerable."
I agree

> 
> Assuming that statement is correct, disabling deserialization by default
> doesn't offer additional protection to people. Instead it requires a
> code change when they upgrade to re-enable it and cause them to be
> vulnerable again.
It does offer additional protection to those applications who use
deserialization in general, but don't want to have this executed on the
unsafe Commons-Collections classes (or even are not aware that theses
classes are reachable via their remote interfaces).
>From my point of view and investigation this may be a lot of
applications in the world.
All those may not need to do anything else than upgrading their
Commons-Collections package to be safe from this particular issue.
(not addressing the important general issue of course yet...)

> 
> Would the greater community be better served by additional documentation
> on how to safely handle the deserialization in their application?
Definitely yes, I agree! For the sustainable and long term.

> Is there such a method, or is this hopelessly broken?
I have to leave this up to the top Java experts (where I am not a member of)
Again, this is something very useful for the long term (and honestly I
would expect these activities starting latest by now - we may also await
the next posts, where others again will find other widespread classes
that are exploitable in a similar way. The race is on...)

My main point with having a single CVE ID and a new Apache
Commons-Collections version that fixes this ID is:
If you don't do it, then you end up with 1-5 CVE ids (individually for
those applications mentioned in the original publication: WebLogic,
Jenkins, etc.) and they all are reported in the context of these
individual applications only.
We would miss to address a significant number of applications in the
world, as it's not on their radar (but they have Commons-Collections
included, so that is on their radar)
