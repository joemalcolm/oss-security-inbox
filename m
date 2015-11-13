X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1544" "Friday" "13" "November" "2015" "23:07:49" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<56465F35.1040403@gmail.com>" "43" "Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111322:07:49" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        gsunde.orang Nov 13   43/1544  " thread-indent "\"Re: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>" "<56445609.9050301@gmail.com>" "<1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>" "<5645980D.9010105@gmail.com>" "<1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>" "<1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8111 invoked by uid 550); 13 Nov 2015 22:07:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8093 invoked from network); 13 Nov 2015 22:07:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=d3EgJPyxMG2bHs7rVzueImkBILJpzLwj17oCERgJoQQ=;
        b=y4Hv4lMpUZOLmU6h0+VouaQV6Sm0Y00L3nQwGUOu+Xv7/dU+4IUBDJ532wKMmE7qMw
         U6wLDOxLeNgRL9LTWw5NsQJ0aAmjDazbOenCLTe9ULuyTkWCFax2gmpTOawPTCbVENPb
         wOQtz3OBESLs4vqNNCwD8gLPDDJ6ZTjdFrVVvoe2fMo2Mg0afsY/t5oc5qCd0ktuBpM+
         +VUAyjZ2wdpl15f8eBF1FhvJWwRm8v/pYyNhE36+uWXanEM1kAjE3/n6viI+FHSeYk07
         QqL3bmb4kjAUvUUeAjA5hUgy2LI6l8EARIUl/84d3afvyUClNNyvPwnjCBfxuWWLd48h
         CaOw==
X-Received: by 10.28.45.72 with SMTP id t69mr6554479wmt.32.1447452462691;
        Fri, 13 Nov 2015 14:07:42 -0800 (PST)
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org> <56445609.9050301@gmail.com>
 <1447365167.1146869.438300073.116F736D@webmail.messagingengine.com>
 <5645980D.9010105@gmail.com>
 <1447425465.3344943.438911641.39FADD79@webmail.messagingengine.com>
 <1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56465F35.1040403@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1447448831.18663.439272417.5B47DBB1@webmail.messagingengine.com>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Date: Fri, 13 Nov 2015 23:07:49 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: Assign CVE for common-collections
 remote code execution on deserialisation flaw
To: oss-security@lists.openwall.com

On 2015-11-13, 22:07 Mark Felder wrote:
> 
> 
> On Fri, Nov 13, 2015, at 08:37, Mark Felder wrote:
>>
>>
>> On Fri, Nov 13, 2015, at 01:58, Gsunde Orangen wrote:
>>>
>>> I share Tim's view [2] and a dozen of (own) applications we checked
>>> won't break. A property that re-enables deserialization of course would
>>> help additionally: allow applications that really *need* this to get it
>>> working; but that requires an explicit step - so latest by that time:
>>> those, whose applications break after including a "fixed" version of
>>> Commons-Collections would (hopefully) start to think about their design.
>>>
>>> Gsunde
>>>
>>> [1] http://seclists.org/oss-sec/2015/q4/238
>>> [2] http://seclists.org/oss-sec/2015/q4/263
>>
>> This statement is how we have been operating our mitigation strategy:
>>
>> "Applications which use Apache Commons Collections and do not use
>> deserialization are not vulnerable."
>>
> 
> 
> CERT has released a statement[1] indicating that you are vulnerable
> simply by having this in your classpath. It does not matter if you are
> doing deserialization or not. The patch[2] to disable serialization
> functionality by default seems to me like the only option to mitigate
> the CVE now.
> 
> 
> [1] https://www.kb.cert.org/vuls/id/576313
> [2]
> https://issues.apache.org/jira/secure/attachment/12771520/COLLECTIONS-580.patch
> 
... and Apache.org's statement [3] summarizes the issue and the current
status quite well

[3]
https://blogs.apache.org/foundation/entry/apache_commons_statement_to_widespread
