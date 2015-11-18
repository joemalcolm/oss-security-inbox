X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1931" "Wednesday" "18" "November" "2015" "15:59:44" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" "<564C9260.5070505@eenterphace.org>" "54" "Re: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" "^Date:" nil nil "11" "2015111814:59:44" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization" (number mark "        mbechler@een Nov 18   54/1931  " thread-indent "\"Re: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability due to unsafe deserialization\"\n") "<20151118111756.05AB234E03F@smtpvbsrv1.mitre.org>" ("<20151118111756.05AB234E03F@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9340 invoked by uid 550); 18 Nov 2015 15:03:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7530 invoked from network); 18 Nov 2015 14:59:56 -0000
References: <20151118111756.05AB234E03F@smtpvbsrv1.mitre.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <564C9260.5070505@eenterphace.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151118111756.05AB234E03F@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Date: Wed, 18 Nov 2015 15:59:44 +0100
From: Moritz Bechler <mbechler@eenterphace.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: Jenkins remote code execution
 vulnerability due to unsafe deserialization
To: oss-security@lists.openwall.com

Hi,

the question that remains is, what do we do about this vulnerability
class in general. To whom do I report these?

The options I see right now:

a) If we say that performing deserialization of data crossing a
privilege boundary is a vulnerability per se we can probably assign a
CVE for almost every single piece of java software out there, as this
includes:
- every product with an, even optional, JMX listener.
- any other use of RMI/JRMP
- use of JMS ObjectMessage, with an implementation that has no further
checks.
- use of JPA to store Serializable properties in databases, with an
implementation that has no further checks.
- custom deserialization stuff
- potentially many more...

b) We go back to the start and say that these are vulnerabilities in the
libraries, that deserialization should be safe.

c) If we say that we need both the deserialization and a useable item on
the classpath (so that we have an actual exploitable vulnerability)
things get rather complicated as we have to identify both the "gadgets"
from b) and the products from a) using them.

d) Consider specifications/protocols "vulnerable", either in a way that
they allow the deserialization of untrusted inputs, or going deeper the
java deserialization mechanism itself.

In any case, both a) and c) lead to a rather big amount (one might even
call unmanagable) of vulnerability instances.

So, let us assume for a moment I went looking for other gadgets and
found instances in other widely used libraries, what do I do with them:
1) report them to the library vendor
or
2) search for projects using them, see if they use something mentioned
in a), and report to maybe hundreds of projects. Non OS projects would
propably never notice these. And I really can't spend the rest of the
year with this.


This is quite a mess.


Moritz

PS: If you are trying to fix these in your products. Don't, i repeat ,
DON'T, try to do it by blacklisting.


