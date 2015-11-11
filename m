X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3295" "Wednesday" "11" "November" "2015" "11:49:51" "+0100" "Moritz Bechler" "mbechler@eenterphace.org" "<56431D4F.7090006@eenterphace.org>" "63" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111110:49:51" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        mbechler@een Nov 11   63/3295  " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<20151111002307.GP1213@sentinelchicken.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30231 invoked by uid 550); 11 Nov 2015 13:07:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5826 invoked from network); 11 Nov 2015 10:50:03 -0000
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
Openpgp: url=hkp-x://random.sks.keyserver.penguin.de
X-Enigmail-Draft-Status: N1110
Message-ID: <56431D4F.7090006@eenterphace.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151111002307.GP1213@sentinelchicken.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Date: Wed, 11 Nov 2015 11:49:51 +0100
From: Moritz Bechler <mbechler@eenterphace.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com

Hi,

> 1. Most vulnerabilities require a "source" of untrusted data, and a 
> "sink" in the code where that data is used unsafely.  In my
> experience, most vulnerabilities are best corrected by making the
> "sink" safe.  For example: output encoding in HTML or prepared
> statements in SQL.  While many people preach input validation (or
> *gag* "sanitization"), this is not how most classes of bugs are fixed
> reliably.
The problem here is that the amount of potential "sinks" is incredibly
large - everything on your classpath. No objection here to hardening the
specific instance, but thinking one will be safe afterwards is a
misconception. Like someone else put it, it's a game of whack-a-mole.

> 2. There's absolutely no reason serialization can't be done safely.
> It's absurd to think otherwise, given the fact that developers
> regularly serialize/marshal/pickle objects into a wide variety of
> formats, accept these from untrusted sources, deserialize them and
> aren't made vulnerable by it.  Examples: JSON from websites, XML in
> SOAP, ...  Any advice telling developers that "you shouldn't
> deserialized objects from untrusted sources" must apply only to
> software that has a flawed deserialization design.
Sure, as long as nobody does any funny stuff in their default
constructors, setters or getters. But the difference there is that these
unmarshallers (at least the ones I know of) only act on a very specific
set of classes you mostly control.
Looking at the flawed deserialization design at hand...

> 3. Java *does* provide a way to distinguish those to be trusted during
> deserialization from all other classes.  Trusted classes implement
> Serializable.  If you implement Serializable, you've been added to a
> white list of code that should be safe.  If you've added a "sink" to
> your Serializable objects, then that's a vulnerability.  Not only is
> it a "sink", but validating the input prior to deserialization is
> nearly impossible, which means you can't filter it at the "source"
> even if you wanted to.  
And that's the assumption you are making. There is no such statement in
the Serializable definition, neither is anywhere defined what is
acceptable behavior for a readObject method and neither forbids the
collection API to do something dangerous in a getter (which in OpenJDK
seems to generally be an acceptable call).
Serializable is inherited, so the base class can give guarantees about
it's children - don't think so.

Serialization is also used for passivation in trusted contexts where
different rules apply and checking all this code is an unnecessary
effort. In fact I would guess that the majority of the classes out there
are solely Serializable for that purpose. These concepts don't mix well
and the mixture unnecessarily increases the attack surface.

> 
> So I do agree with you that Oracle could do a much better job here.
> They could give us better tools and better ways to whitelist the kinds
> of objects we're willing to accept.  Good luck convincing them of
> that.  Last I checked, they still think XMLDecoder is ok.
> 

Maybe forcing them to take a position on the RMI implementation will be
of some use. They clearly assume deserialization is safe there and fun
fact, even use it for the authentication crendentials.


Moritz
