X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6219" "Monday" "22" "May" "2017" "13:47:43" "+0200" "Moritz Bechler" "mbechler@eenterphace.org" "<76bfe937-f6da-48e2-7844-65c889eb8e85@eenterphace.org>" "184" "[oss-security] Code Execution through a variety Java (Un-)Marshallers" nil nil nil "5" "2017052211:47:43" "[oss-security] Code Execution through a variety Java (Un-)Marshallers" (number mark "U       mbechler@een May 22  184/6219  " thread-indent "\"[oss-security] Code Execution through a variety Java (Un-)Marshallers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9314 invoked by uid 550); 22 May 2017 11:48:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8024 invoked from network); 22 May 2017 11:47:55 -0000
From: Moritz Bechler <mbechler@eenterphace.org>
To: oss-security@lists.openwall.com
Message-ID: <76bfe937-f6da-48e2-7844-65c889eb8e85@eenterphace.org>
Date: Mon, 22 May 2017 13:47:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Code Execution through a variety Java (Un-)Marshallers

Hi,

(As per list policy I tried to include the most relevant information,
but I don't think including the full details makes any sense - hope that
is okay.)

Full paper as well as payload generation tools are available at
<https://www.github.com/mbechler/marshalsec/>


Over the past two years we have seen a great number of vulnerabilities
resulting from careless use of Java serialization.

This research shows that issues like that are in no way limited to
mechanisms as expressive or "powerful" as Java serialization but can be
generalized to a wide range of other ones.

Any unmarshaller that performs object binding, implicitly (e.g. magic
methods on collection insertion) or explicitly (e.g. property setters)
executes behaviors attached to the object's type (read: calls
methods/executes codes).

To do their work these mechanisms need to assume some kind of contract
on these behaviors - simply put, they should not have any side effects.
In practice however these conventions are broken quite often, either
deliberately or unconsciously, and can lead to the execution of code
with unwanted side-effects, in the worst case trigger command or remote
code execution.

Many mechanisms embed type information in their outputs. In some form
this is always required to properly restore polymorphic types (and pre
Java 1.5 this was even required for regular collections as well).
Insufficiently restricting the types that can be used there however
means that an attacker can trigger these behaviors on more or less
arbitrary types on the classpath (which in a normal Java projects is a
humongous amount of code no-one fully understands - standard library
alone...).

That usually is enough to achieve RCE, in some cases using some third
party library code, in many cases even universally through code in the
Java standard library.

Even the most restrictive implicit (technical) type restrictions (e.g.
constructor requirements) that can be applied by these mechanisms are
insufficient to prevent these issues. With Java's java.io.Serializable
we have already seen a model fail where the types themselves declare
their intent to be used in such a situation (for various reasons),
although not having such a restriction seems even worse.

The only option left is explicit restriction to types known to fulfill
the contract by the user, be that in the form of registration (e.g. JAXB
or a variety of mechanisms requiring schema definitions or compilation),
an explicit whitelist or strict runtime type checking from a root type.
Hybrid type checking and registration like found in GSON or Jackson with
JsonTypeInfo.Id.Name so far seem to offer the best balance between
convenience and security.

While in the best case scenario one would restrict to data objects not
containing any logic at all -- for practical purposes restricting to the
types that are actually used seems good enough, usually it's the ton of
code that you don't even care about that will get you pwned.



(Open Source) marshaller libraries (some pretty rare, but for the sake
of completeness) that allow(ed) for unmarshalling into arbitrary types,
their their known worst case impacts and possible mitigations, are

-------------------------------
Apache BlazeDS AMF Marshalling
- JDK only escalation to Java serialization
- third party library RCEs (spring, c3p0)

Mitigations: Configure a DeserializationValidator for type whitelisting.
Upgrade to 4.7.3 which enables it by default (CVE-2017-5641).

-------------------------------
Hessian/Burlap:
- third party library RCEs (spring, rome, xbean-naming, resin)

Mitigation: Upgrade to 4.0.51 and enable type whitelisting through
ClassFactory.

-------------------------------
Castor:
-> POM dependency library RCE (spring)

Mitigation: N/A

-------------------------------
Jackson:
- >=2.7.0: not totally reliable JDK only RCE
- possibly JDK only escalation to Java serialization
- third party library RCEs (spring, c3p0)

Jackson takes a somewhat special position here, in that by default it is
unaffected but only becomes exploitable when class based polymorphism is
enabled
(https://github.com/FasterXML/jackson-docs/wiki/JacksonPolymorphicDeserialization)
and there are unbounded or insufficiently bounded properties.

Mitigation: Use explicit polymorphism with JsonTypeInfo.Id.Name

-------------------------------
Java serialization:
- one new library gadget

-------------------------------
Java XMLDecoder:
- well, we know about that one...

-------------------------------
json-io
-> JDK only RCE

Mitigation: N/A

-------------------------------
jYAML
-> JDK only RCE

Mitigation: N/A

-------------------------------
Kryo:
- using default instantiation: third party RCEs (commons-beanutils, spring)
- using StdInstantiatorStrategy: JDK only RCE

Mitigation: Enforce type registration

-------------------------------
Red5 AMF Marshalling:
-> JDK only RCE

Mitigation: Upgrade to 1.0.8 which enables type blacklisting :( of the
known bad ones

-------------------------------
SnakeYAML
-> JDK only RCE

Mitigation: Use SafeConstructor or a custom implementation for type
whitelisting.

-------------------------------
XStream
-> JDK only RCE

Mitigation: Use XStream's TypePermission for type whitelisting.

-------------------------------
YAMLBeans:
- third party library RCE (c3p0)

Mitigation: N/A

-------------------------------


Vulnerabilities where one of these was exploitable under some
circumstances identified as a part of this research and have been fixed
include:

- JBoss Resteasy - SnakeYAML (CVE-2016-9606)
- Apache Camel - SnakeYAML/Jackson/... (CVE-2017-3159,CVE-2016-8749)
- Apache Brooklyn - SnakeYAML (CVE-2016-8744)
- Jenkins - XStream (CVE-2017-2608)
- Red5 Media Server/Apache OpenMeetings (CVE-2017-5878)
- Magnolia CMS - json-io (CVE N/A, tracking MGNLCACHE-165)
- OpenNMS - Castor (CVE N/A, tracking NMS-9099/9100)
- Atlassian Bamboo - XStream (CVE 2016-5229)
- Adobe Coldfusion - BlazeDS (CVE 2017-3066)

Other affected instances, which have been reported but the author hasn't
recently received feedback on their current state include: Caucho Resin
(Hessian), Netflix Eureka (XStream), Amazon's AWS Simple Workflow
Library (Jackson).


regards

Moritz


