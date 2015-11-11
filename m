X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5036" "Tuesday" "10" "November" "2015" "16:23:07" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20151111002307.GP1213@sentinelchicken.org>" "106" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111100:23:07" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        tim-security Nov 10  106/5036  " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<5641360D.8070102@eenterphace.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18065 invoked by uid 550); 11 Nov 2015 00:23:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18044 invoked from network); 11 Nov 2015 00:23:26 -0000
Message-ID: <20151111002307.GP1213@sentinelchicken.org>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
 <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5641360D.8070102@eenterphace.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Tue, 10 Nov 2015 16:23:07 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com


Hi Moritz,

I sincerely appreciate your response and thoughtful explanation.
However, I also think you're wrong. ;-)  See my premise below. 
(I tried to keep it reasonably short!)


On Tue, Nov 10, 2015 at 01:10:53AM +0100, Moritz Bechler wrote:
> ...
> 
> The main problem is that deserialization can easily get you into
> executing code paths (either through custom serialization code or other
> funny code). Given that the regular deserialization routines allow any
> (Serializable) class to be deserialized, you would have to make sure
> that cannot happen by any interaction of any code (what, given the sheer
> amount of library code in typical java projects, you simply cannot). If
> you cannot, you either must refrain from deserializing any untrusted or
> privilege-boundary-crossing data or use a whitelisting approach to
> reduce the amount of classes you need to check for problems (that of
> course still leaves room for error and often is not easily possible as
> the code performing the deserialization is buried in libraries or even
> the standard library).
> 
> Regarding the issue at hand, it's pretty clear that the involved parties
> make different assumptions about whether it should be okay to
> deserialize untrusted data and there simply is no way of differentiating
> between the two - one Serializable to rule them all. (Standard library
> behaviour, OpenJDK, is also a bit frightening, as they, for example,
> assume it is okay to call into collection api methods).
> 
> Given that, the only sane advice I have right now is - don't do it at
> all. No RMI, JMX, whatever. Of course that is pretty inconvenient.
> 
> This needs to be fixed on a much lower level than commons collections.
> Whitelisting might be a mitigation, but right now, e.g. for RMI code you
> cannot really do it without patching your JRE.



1. Most vulnerabilities require a "source" of untrusted data, and a 
"sink" in the code where that data is used unsafely.  In my
experience, most vulnerabilities are best corrected by making the
"sink" safe.  For example: output encoding in HTML or prepared
statements in SQL.  While many people preach input validation (or
*gag* "sanitization"), this is not how most classes of bugs are fixed
reliably.


2. There's absolutely no reason serialization can't be done safely.
It's absurd to think otherwise, given the fact that developers
regularly serialize/marshal/pickle objects into a wide variety of
formats, accept these from untrusted sources, deserialize them and
aren't made vulnerable by it.  Examples: JSON from websites, XML in
SOAP, ...  Any advice telling developers that "you shouldn't
deserialized objects from untrusted sources" must apply only to
software that has a flawed deserialization design.


3. Java *does* provide a way to distinguish those to be trusted during
deserialization from all other classes.  Trusted classes implement
Serializable.  If you implement Serializable, you've been added to a
white list of code that should be safe.  If you've added a "sink" to
your Serializable objects, then that's a vulnerability.  Not only is
it a "sink", but validating the input prior to deserialization is
nearly impossible, which means you can't filter it at the "source"
even if you wanted to.  


As you mentioned, there's a difference in assumptions.  I feel it is
very important that the security community speak with one voice when
it comes to these underlying assumptions.  (Shich is why I spent so
much time on this email.)  

This failure perhaps stems from Commons developers believing that Java
serialization is inherently unsafe anyway and therefore no one should
ever receive serialized objects from outside their control.  This is
untrue.  We can do serialization safely.  Also, we've seen that many
applications rely on deserialization to be safe.  That is, "in the
real world", people use this stuff all the time.  You can't just go
and make all of it unsafe based on a limited, rigid view of the world.

Does Java make it hard to do serialization safely?  Sure.  Should we
avoid accepting serialized objects because of the history of abuse?
Yes, probably.  But does that mean you can go around adding execution
sinks to your library and feel ok about it?  Absolutely NOT.  That's
irresponsible and naive.*

So I do agree with you that Oracle could do a much better job here.
They could give us better tools and better ways to whitelist the kinds
of objects we're willing to accept.  Good luck convincing them of
that.  Last I checked, they still think XMLDecoder is ok.

Best regards,
tim


* Other code that falls into this irresponsible and naive category:
  - Java's XMLDecoder which doesn't require objects be Serializable (!)

  - Ruby's session management. While objects are signed, theft of the
    signing key leads to object forgery, which leads to
    deserialization RCE.  RCE is just one directory traversal away!

  - Apache Struts HTTP request parsing, which invents a whole new
    serialized, executable syntax to shoot us in the foot with.
