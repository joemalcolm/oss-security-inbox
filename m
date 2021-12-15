X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Wednesday" "15" "December" "2021" "19:45:58" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" nil "42" "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil "12" nil nil (number mark "U       mbechler@een Dec 15   42/1787  " thread-indent "\"Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26482 invoked by uid 550); 15 Dec 2021 18:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23775 invoked from network); 15 Dec 2021 18:46:11 -0000
Message-ID: <fc29939d-fac1-737a-a583-ea14a6a0baa9@eenterphace.org>
Date: Wed, 15 Dec 2021 19:45:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <b1b3fb6f-a394-ede3-0c3c-ea2c11018062@apache.org>
 <CAH8yC8=R7+DwZ19C0c3D_r=BL2Bde7rVQd11RcLKGSkdn0EVqw@mail.gmail.com>
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <CAH8yC8=R7+DwZ19C0c3D_r=BL2Bde7rVQd11RcLKGSkdn0EVqw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context
 Message Pattern and Context Lookup Pattern vulnerable to a denial of service
 attack

Hi,

> 
>> It was found that the fix to address CVE-2021-44228 in
>> Apache Log4j 2.15.0 was incomplete in certain non-default
>> configurations. This could allows [DoS]...
> 
> Is there any information on the non-default configuration that triggers the DoS?
> 
> What I am trying to understand is, if we clear the first CVE through,
> say, envar LOG4J_FORMAT_MSG_NO_LOOKUPS=true or
> -Dlog4j2.formatMsgNoLookups=true, then where does the vulnerability
> lie for the second CVE? What configuration change needs to be done to
> reduce risk on the second CVE after the first CVE has been mitigated?

[not affiliated with log4j, but maybe I can still shed some light]

The issue is that expansion of the lookup expressions was only disabled 
for the message contents, not within the layout pattern formatting.

The thread local MDC context may contain information that can be 
controlled by an attacker (if used). If you then have a layout pattern 
configured that includes such information, e.g. $${ctx:name} [the 
mentioned vectors via %X, %mdc, or %MDC I personally (and I think 
others) could not easily replicate, maybe there is some trick to it], 
expansion of an attacker provided expression will still happen and can 
be exploited.

For versions <2.15 this renders log4j2.formatMsgNoLookups=true 
ineffective if such a layout configuration is used.

For =2.15 this is mostly mitigated by the fact protocol and target host 
to which lookups are possible are also restricted to localhost by 
default. There still seems to be a way to hang/crash the process, thou.

You could probably check whether any of the layouts used contain any MDC 
data, but imho, if you want to avoid surprises you would really be 
better off patching. Not sure why you would not be able to update.



Moritz
