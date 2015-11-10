X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2098" "Tuesday" "10" "November" "2015" "01:10:53" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" "<5641360D.8070102@eenterphace.org>" "43" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111000:10:53" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        mbechler@een Nov 10   43/2098  " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<20151109215303.GN1213@sentinelchicken.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28430 invoked by uid 550); 10 Nov 2015 07:21:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24254 invoked from network); 10 Nov 2015 00:11:05 -0000
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <5641360D.8070102@eenterphace.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151109215303.GN1213@sentinelchicken.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Tue, 10 Nov 2015 01:10:53 +0100
From: Moritz Bechler <mbechler@eenterphace.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com

Am 09.11.2015 um 22:53 schrieb Tim:
> 
>> This is not a vulnerability in the library.  How can this feature allow
>> remote code execution if it does not involve any networking at all?
>>
>> The root cause is the incorrect use of Java deserialization.  As long as
>> you do not fix that, something else on the classpath will serve the role
>> of Apache Commons Collections.
> 
> Can you elaborate on this last point?  Can you better describe the
> root cause, as you see it, and what should have been done differently
> by the systems using Apache Commons?


The main problem is that deserialization can easily get you into
executing code paths (either through custom serialization code or other
funny code). Given that the regular deserialization routines allow any
(Serializable) class to be deserialized, you would have to make sure
that cannot happen by any interaction of any code (what, given the sheer
amount of library code in typical java projects, you simply cannot). If
you cannot, you either must refrain from deserializing any untrusted or
privilege-boundary-crossing data or use a whitelisting approach to
reduce the amount of classes you need to check for problems (that of
course still leaves room for error and often is not easily possible as
the code performing the deserialization is buried in libraries or even
the standard library).

Regarding the issue at hand, it's pretty clear that the involved parties
make different assumptions about whether it should be okay to
deserialize untrusted data and there simply is no way of differentiating
between the two - one Serializable to rule them all. (Standard library
behaviour, OpenJDK, is also a bit frightening, as they, for example,
assume it is okay to call into collection api methods).

Given that, the only sane advice I have right now is - don't do it at
all. No RMI, JMX, whatever. Of course that is pretty inconvenient.

This needs to be fixed on a much lower level than commons collections.
Whitelisting might be a mitigation, but right now, e.g. for RMI code you
cannot really do it without patching your JRE.


Moritz
