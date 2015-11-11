X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3264" "Wednesday" "11" "November" "2015" "08:06:42" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20151111160641.GQ1213@sentinelchicken.org>" "69" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111116:06:42" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        tim-security Nov 11   69/3264  " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<56431D4F.7090006@eenterphace.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14236 invoked by uid 550); 11 Nov 2015 16:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14192 invoked from network); 11 Nov 2015 16:07:00 -0000
Message-ID: <20151111160641.GQ1213@sentinelchicken.org>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56431D4F.7090006@eenterphace.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Wed, 11 Nov 2015 08:06:42 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com


Hi Moritz,

> The problem here is that the amount of potential "sinks" is incredibly
> large - everything on your classpath. No objection here to hardening the
> specific instance, but thinking one will be safe afterwards is a
> misconception. Like someone else put it, it's a game of whack-a-mole.

Does every class in your classpath implement Serializable?  If your
library is implemented that way, it is broken.  Web architectures used
to be implemented such that you had to encode HTML in hundreds of
separate places, one by one.  Did we stop receiving and displaying
user input because of it?  No, we changed our archtectures to
accommodate a better understanding of XSS.

I don't think fixing one instance of a broken Serializable class will
make us safe, but playing whack-a-mole with every application that
uses serialization to transfer data isn't attractive either.  Note
that eliminating the use of serialization is harder because that
requires a *functional* design change, rather than a change in
implementation details.


> Sure, as long as nobody does any funny stuff in their default
> constructors, setters or getters. But the difference there is that these
> unmarshallers (at least the ones I know of) only act on a very specific
> set of classes you mostly control.
> Looking at the flawed deserialization design at hand...

I'm not saying Java's serialization architecture is good.  Oracle
definitely needs to do something.  But passing the buck up to all
applications and asking them to eliminate serialization is impractical
and *dangerous*.  The higher up you go in the software stack, the less
developers understand security.  Very few developers will get the
message that they can't use it to process untrusted data and that will
lead to a continued series of vulnerabilities.


> And that's the assumption you are making. There is no such statement in
> the Serializable definition, neither is anywhere defined what is
> acceptable behavior for a readObject method and neither forbids the
> collection API to do something dangerous in a getter (which in OpenJDK
> seems to generally be an acceptable call).

I agree that there's no statement about serialization security there.
That's not surprising at all, because Oracle really sucks about
security, always giving us a "not my problem" attitude.  That's why I
mentioned XMLDecoder.  Even something as blatantly vulnerable as that
interface doesn't receive any documentation that it shouldn't be used
with untrusted data.  So how can you expect them to rise to the
occasion and document something slightly more nuanced?

However, my assumption is the only one that makes sense, given the
design of Java's serialization.  Clearly, the lack of documentation
has confused everyone, though, which is why we're having this
discussion.


> Maybe forcing them to take a position on the RMI implementation will be
> of some use. They clearly assume deserialization is safe there and fun
> fact, even use it for the authentication crendentials.

Anything to nudge them into taking responsibility *for something,
ever* would be a good start.  However, last time I tried to convince
them of something like this, they just told me "use a security
manager".  lulz.  So good luck.

Thanks much,
tim
