X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["912" "Friday" "10" "December" "2021" "11:29:48" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" nil "15" "Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints" nil nil nil "12" nil nil (number mark "U       mbechler@een Dec 10   15/912   " thread-indent "\"Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not protect against attacker controlled LDAP and other JNDI related endpoints" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5568 invoked by uid 550); 10 Dec 2021 10:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32024 invoked from network); 10 Dec 2021 10:30:02 -0000
Message-ID: <c24bb38a-bd87-3bcb-7831-811e8d8d5405@eenterphace.org>
Date: Fri, 10 Dec 2021 11:29:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: oss-security@lists.openwall.com, rgoers@apache.org
References: <10f758e4-7ee5-b4a4-c4c4-54d2bd253ce8@apache.org>
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <10f758e4-7ee5-b4a4-c4c4-54d2bd253ce8@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2021-44228: Apache Log4j2 JNDI features do not
 protect against attacker controlled LDAP and other JNDI related endpoints

Hello,


> In previous releases (>2.10) this behavior can be mitigated by setting system property "log4j2.formatMsgNoLookups" to “true” or by removing the JndiLookup class from the classpath (example: zip -q -d log4j-core-*.jar org/apache/logging/log4j/core/lookup/JndiLookup.class). Java 8u121 (see https://www.oracle.com/java/technologies/javase/8u121-relnotes.html) protects against remote code execution by defaulting "com.sun.jndi.rmi.object.trustURLCodebase" and "com.sun.jndi.cosnaming.object.trustURLCodebase" to "false".


Please note, that Java 8u121+ does not necessarily protect against 
remote code execution. There are known exploitation vectors using local 
naming factories, e.g. a XBean BeanFactory (bundled with Tomcat). Also, 
both RMI and LDAP lookups can be made to perform Java deserialization on 
remote input and therefore there is a good chance for secondary RCE 
exploits.


Moritz
