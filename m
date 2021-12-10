X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Friday" "10" "December" "2021" "19:55:34" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" nil "31" "Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints" nil nil nil "12" nil nil (number mark "U       mbechler@een Dec 10   31/1164  " thread-indent "\"Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9456 invoked by uid 550); 10 Dec 2021 19:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26584 invoked from network); 10 Dec 2021 18:55:47 -0000
Message-ID: <9aa6ae9f-fa20-0804-1511-cb81d1491cc8@eenterphace.org>
Date: Fri, 10 Dec 2021 19:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: oss-security@lists.openwall.com, rgoers@apache.org
References: <10f758e4-7ee5-b4a4-c4c4-54d2bd253ce8@apache.org>
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <10f758e4-7ee5-b4a4-c4c4-54d2bd253ce8@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not
 protect against attacker controlled LDAP and other JNDI related endpoints

Hi,


> Java 8u121 (see https://www.oracle.com/java/technologies/javase/8u121-relnotes.html) protects against remote code execution by defaulting "com.sun.jndi.rmi.object.trustURLCodebase" and "com.sun.jndi.cosnaming.object.trustURLCodebase" to "false".
> 

I also believe this should be Java 8u191, as only then remote 
classloading for LDAP was disabled by default. Only since then the 
direct remote classloading attack vector through JNDI injection is 
mitigated.

I put together a little post on the different JNDI attack vectors and 
how which Java versions are affected:
<https://mbechler.github.io/2021/12/10/PSA_Log4Shell_JNDI_Injection/>

TLDR:
- Direct remote classloading through RMI up to 8u121 (and corresponding 
patch versions)
- Direct remote classloading through LDAP up to 8u191 (and corresponding 
patch versions)
- Runtime environment may provide exploitable local JNDI factory classes 
(Tomcat, WebSphere known)
- Deserialization attacks are possible (if no global filter is applied), 
independent of runtime version

=> Do not rely on newer Java versions for mitigation, do patch 
immediately (or remove/disable the functionality)



Moritz
