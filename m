X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Saturday" "18" "December" "2021" "11:30:16" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" nil "28" "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil "12" nil nil (number mark "U       mbechler@een Dec 18   28/734   " thread-indent "\"Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context Message Pattern and Context Lookup Pattern vulnerable to a denial of service attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32166 invoked by uid 550); 18 Dec 2021 13:23:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3673 invoked from network); 18 Dec 2021 10:30:29 -0000
Message-ID: <11aa374e-5dcf-71a3-9a56-aa1ea764cb12@eenterphace.org>
Date: Sat, 18 Dec 2021 11:30:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <b1b3fb6f-a394-ede3-0c3c-ea2c11018062@apache.org>
 <CAH8yC8=R7+DwZ19C0c3D_r=BL2Bde7rVQd11RcLKGSkdn0EVqw@mail.gmail.com>
 <fc29939d-fac1-737a-a583-ea14a6a0baa9@eenterphace.org>
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <fc29939d-fac1-737a-a583-ea14a6a0baa9@eenterphace.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2021-45046: Apache Log4j2 Thread Context
 Message Pattern and Context Lookup Pattern vulnerable to a denial of service
 attack

Hi,


> For =2.15 this is mostly mitigated by the fact protocol and target host 
> to which lookups are possible are also restricted to localhost by 
> default. There still seems to be a way to hang/crash the process, thou.
> 

Updating that for completeness: a bypass of that hostname restriction 
was found by Alvaro Munoz, exploiting different URI interpretations by 
the standard Uri class and JNDI.
Therefore 2.15 can be vulnerable again for RCE, if a layout
with attacker-controlled input outside the message is used or the 
expression lookup has been re-enabled.

This also requires resolving a DNS name like 127.0.0.1#x.y.z or 
localhost#x.y.z, which some resolvers and likely recursors will directly 
reject.




Moritz





