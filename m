X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1748" "Monday" "13" "December" "2021" "20:22:29" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" nil "38" "Re: [oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2" nil nil nil "12" nil nil (number mark "U       mbechler@een Dec 13   38/1748  " thread-indent "\"Re: [oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-4104: Deserialization of untrusted data in JMSAppender in Apache Log4j 1.2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27961 invoked by uid 550); 13 Dec 2021 19:24:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26597 invoked from network); 13 Dec 2021 19:22:42 -0000
Message-ID: <9fb9155e-c91e-7414-6343-523864d69536@eenterphace.org>
Date: Mon, 13 Dec 2021 20:22:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: oss-security@lists.openwall.com, Ralph Goers <rgoers@apache.org>
References: <cd490e11-90d5-946a-eeaf-d17e4391f788@apache.org>
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <cd490e11-90d5-946a-eeaf-d17e4391f788@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2021-4104: Deserialization of untrusted data
 in JMSAppender in Apache Log4j 1.2

Hello,

> 
> JMSAppender in Log4j 1.2 is vulnerable to deserialization of untrusted data when the attacker has write access to the Log4j configuration. The attacker can provide TopicBindingName and TopicConnectionFactoryBindingName configurations causing JMSAppender to perform JNDI requests that result in remote code execution in a similar fashion to CVE-2021-44228.
> 
> Note this issue only affects Log4j 1.2 when specifically configured to use JMSAppender, which is not the default.

Pretty sure someone was pushing for this, sorry to be nagging again, but 
I don't think adding that to the overall panic and confusion is really 
helping.

To emphasize again: this needs write access to the Log4j configuration.

This is in no way even coming close to CVE-2021-44228 - log4j 1.2 is 
absolutely unaffected by that bug.

Only for people allowing untrusted parties to modify logger 
configuration this could be considered to cross a trust boundary. 
Allowing that, in my opinion, already would require very careful 
consideration on the caller/user side and cannot be assumed to be safe.

If one can modify the logger configuration, one might as well 
(re)configure a FileAppender and write to files with the process 
privileges - most likely also resulting in code execution.

Everybody else should probably forget about this - expect for the fact 
that they still might be using software that has been unsupported for 
many years.

Configuring e.g. DataSources via JNDI name lookups is not that uncommon 
in Java applications and application servers, these all suffer from the 
same "vulnerability". JNDI is a overly complex mess of bad surprises 
(and in my opinion absolutely should go away), but that is really not 
log4j's fault.



Moritz
