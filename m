Received: (qmail 32384 invoked by uid 550); 8 Nov 2023 12:34:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5664 invoked from network); 8 Nov 2023 07:38:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Eckart de Castilho <rec@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ddb3c1b-71a1-83f9-1b3f-342fcb455935@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Nov 2023 07:38:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39913: Apache UIMA Java SDK, Apache UIMA Java SDK, Apache
 UIMA Java SDK, Apache UIMA Java SDK: Potential untrusted code execution
 when deserializing certain binary CAS formats 

Severity: important

Affected versions:

- Apache UIMA Java SDK before 3.5.0
- Apache UIMA Java SDK before 3.5.0
- Apache UIMA Java SDK before 3.5.0
- Apache UIMA Java SDK before 3.5.0

Description:

Deserialization of Untrusted Data, Improper Input Validation vulnerability =
in Apache UIMA Java SDK, Apache UIMA Java SDK, Apache UIMA Java SDK, Apache=
 UIMA Java SDK.This issue affects Apache UIMA Java SDK: before 3.5.0.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

There are several locations in the code where serialized Java objects are d=
eserialized without verifying the data. This affects in particular:
  *  the deserialization of a Java-serialized CAS, but also other binary CA=
S formats that include TSI information using the CasIOUtils class;
  *  the CAS Editor Eclipse plugin which uses the=C2=A0the CasIOUtils class=
 to load data;
  *  the deserialization of a Java-serialized CAS of the Vinci Analysis Eng=
ine service which can receive using Java-serialized CAS objects over networ=
k connections;
  *  the CasAnnotationViewerApplet and the CasTreeViewerApplet;
  *  the checkpointing feature of the CPE module.

Note that the UIMA framework by default does not start any remotely accessi=
ble services (i.e. Vinci) that would be vulnerable to this issue. A user or=
 developer would need to make an active choice to start such a service. How=
ever, users or developers may use the CasIOUtils in their own applications =
and services to parse serialized CAS data. They are affected by this issue =
unless they ensure that the data passed to CasIOUtils is not a serialized J=
ava object.

When using Vinci or using CasIOUtils in own services/applications,=C2=A0the=
 unrestricted deserialization of Java-serialized CAS files may allow arbitr=
ary (remote) code execution.

As a remedy, it is possible to set up a global or context-specific ObjectIn=
putFilter (cf.  https://openjdk.org/jeps/290 =C2=A0and=C2=A0 https://openjd=
k.org/jeps/415 ) if running UIMA on a Java version that supports it.=20

Note that Java 1.8 does not support the ObjectInputFilter, so there is no r=
emedy when running on this out-of-support platform. An upgrade to a recent =
Java version is strongly recommended if you need to secure an UIMA version =
that is affected by this issue.

To mitigate the issue on a Java 9+ platform, you can configure a filter pat=
tern through the "jdk.serialFilter" system property using a semicolon as a =
separator:

To allow deserializing Java-serialized binary CASes, add the classes:
  *  org.apache.uima.cas.impl.CASCompleteSerializer
  *  org.apache.uima.cas.impl.CASMgrSerializer
  *  org.apache.uima.cas.impl.CASSerializer
  *  java.lang.String

To allow deserializing CPE Checkpoint data, add the following classes (and =
any custom classes your application uses to store its checkpoints):
  *  org.apache.uima.collection.impl.cpm.CheckpointData
  *  org.apache.uima.util.ProcessTrace
  *  org.apache.uima.util.impl.ProcessTrace_impl
  *  org.apache.uima.collection.base_cpm.SynchPoint

Make sure to use "!*" as the final component to the filter pattern to disal=
low deserialization of any classes not listed in the pattern.

Apache UIMA 3.5.0 uses tightly scoped ObjectInputFilters when reading Java-=
serialized data depending on the type of data being expected. Configuring a=
 global filter is not necessary with this version.

Credit:

Huangzhicong from CodeSafe Team of Legendsec at Qi=E2=80=99anxin (reporter)

References:

https://uima.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-39913

