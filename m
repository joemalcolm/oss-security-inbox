Received: (qmail 5651 invoked by uid 550); 1 May 2026 18:04:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30527 invoked from network); 1 May 2026 17:55:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Zowalla <rzo1@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ddba93ab-9c17-f77c-ac94-105c9b917d18@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 May 2026 17:55:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42027: Apache OpenNLP: Arbitrary Class Instantiation via
 Model Manifest in ExtensionLoader 

Severity: moderate=20

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-tools) before 2.5.9
- Apache OpenNLP (org.apache.opennlp:opennlp-tools) 3.0 before 3.0.0-M3

Description:

Arbitrary Class Instantiation via Model Manifest in Apache OpenNLP Extensio=
nLoader





Versions Affected: before 2.5.9, before 3.0.0-M3





Description:=C2=A0

The ExtensionLoader.instantiateExtension(Class, String)=C2=A0method loads a=
 class by its fully-qualified name via Class.forName()=C2=A0and invokes its=
 no-arg constructor, with the class name sourced from the manifest.properti=
es=C2=A0entry of a model archive. The existing isAssignableFrom=C2=A0check =
correctly rejects classes that are not subtypes of the expected extension i=
nterface (BaseToolFactory=C2=A0for factory=3D, ArtifactSerializer=C2=A0for =
serializer-class-*), but the check runs after=C2=A0Class.forName()=C2=A0has=
 already loaded and initialized the named class.=20

Class.forName()=C2=A0with default initialization semantics executes the tar=
get class's static initializer before returning, so an attacker who can sup=
ply a crafted model archive can cause the static initializer of any class o=
n the classpath to run during model loading, regardless of whether that cla=
ss passes the subsequent type check.=20

Exploitation requires a class with attacker-useful side effects in its stat=
ic initializer (for example, JNDI lookup, outbound network I/O, or filesyst=
em access) to be present on the classpath, so this is not a drop-in remote =
code execution; however, the attack surface grows as third-party model dist=
ribution becomes more common (community model repositories, Hugging Face-st=
yle sharing), where users routinely load model files from origins they do n=
ot control. A secondary, narrower vector affects deployments that ship legi=
timate BaseToolFactory=C2=A0or ArtifactSerializer=C2=A0subclasses with side=
-effecting no-arg constructors: a malicious manifest can name such a class =
and force its constructor to run during model load.





Mitigation:=C2=A0



  *  2.x users should upgrade to 2.5.9.=20
  *  3.x users should upgrade to 3.0.0-M3.=20




Note: The fix introduces a package-prefix allowlist that is consulted befor=
e Class.forName()=C2=A0is invoked, so the static initializer of a disallowe=
d class is never executed. Classes under the opennlp.=C2=A0prefix remain pe=
rmitted by default. Deployments that load models referencing factories or s=
erializers outside opennlp.*=C2=A0must opt those packages in, either progra=
mmatically via ExtensionLoader.registerAllowedPackage(String)=C2=A0before t=
he first model load, or by setting the OPENNLP_EXT_ALLOWED_PACKAGES=C2=A0sy=
stem property to a comma-separated list of allowed package prefixes.=20

Users who cannot upgrade immediately should ensure that all model files are=
 sourced from trusted origins=C2=A0and should audit their classpath for cla=
sses with side-effecting static initializers or constructors, particularly =
any that perform JNDI lookups, network requests, or filesystem operations d=
uring class initialization.

This issue is being tracked as OPENNLP-1820=20

Credit:

Subramanian S (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42027
https://issues.apache.org/jira/browse/OPENNLP-1820

