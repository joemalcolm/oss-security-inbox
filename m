Received: (qmail 24278 invoked by uid 550); 23 Nov 2023 12:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9797 invoked from network); 23 Nov 2023 09:06:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Julien Nioche <jnioche@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9e1a2baf-0e3f-19a7-eade-e70137be1f53@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Nov 2023 09:05:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43123: Apache Storm: Local Information Disclosure
 Vulnerability in Storm-core on Unix-Like systems due temporary files 

Severity: low

Affected versions:

- Apache Storm 2.0.0 before 2.6.0

Description:

On unix-like systems, the temporary directory is shared between all user. A=
s such, writing to this directory using APIs that do not explicitly set the=
 file/directory permissions can lead to information disclosure. Of note, th=
is does not impact modern MacOS Operating Systems.

The method File.createTempFile on unix-like systems creates a file with pre=
defined name (so easily identifiable) and by default will create this file =
with the permissions -rw-r--r--. Thus, if sensitive information is written =
to this file, other local users can read this information.

File.createTempFile(String, String) will create a temporary file in the sys=
tem temporary directory if the 'java.io.tmpdir' system property is not expl=
icitly set.=20

This affects the class=C2=A0 https://github.com/apache/storm/blob/master/st=
orm-core/src/jvm/org/apache/storm/utils/TopologySpoutLag.java#L99 =C2=A0and=
 was introduced by=C2=A0 https://issues.apache.org/jira/browse/STORM-3123=20

In practice, this has a very limited impact as this class is used only if=
=C2=A0ui.disable.spout.lag.monitoring

 is set to false, but its value is true by default.
Moreover, the temporary file gets deleted soon after its creation.

The solution is to use=C2=A0 Files.createTempFile https://docs.oracle.com/e=
n/java/javase/11/docs/api/java.base/java/nio/file/Files.html#createTempFile=
(java.lang.String,java.lang.String,java.nio.file.attribute.FileAttribute...=
) =C2=A0instead.

We recommend that all users upgrade to the latest version of Apache Storm.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-43123

