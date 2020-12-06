X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4508" "Sunday" "6" "December" "2020" "14:21:31" "+1000" "Paul King" "paulk@apache.org" "<CADRx3PNjyfP4n0+4gcVUcN-ffGio_ZiwC=ZggbmE83WenKGg1g@mail.gmail.com>" "110" "[oss-security] [CVE-2020-17521]: Apache Groovy Information Disclosure" nil nil nil "12" "2020120604:21:31" "[oss-security] [CVE-2020-17521]: Apache Groovy Information Disclosure" (number mark "U       paulk@apache Dec  6  110/4508  " thread-indent "\"[oss-security] [CVE-2020-17521]: Apache Groovy Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17521]: Apache Groovy Information Disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11409 invoked by uid 550); 6 Dec 2020 09:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23924 invoked from network); 6 Dec 2020 04:21:56 -0000
X-Gm-Message-State: AOAM530udGCMOrnvDNqW6xRx5MBKvW2gjAJGlGDpy2xySdehLJR7kNqX
	KNk1TaQ5xY+LEyjXInQGQQuQ2qk+ILB1PHpd7Eg=
X-Google-Smtp-Source: ABdhPJydacZsV+IqVQnSTVBpArwpg+UBo9B+6WUY7jcrm3/+SG6db4zpAgJ5CI6b8dawZUL9JgQ2d3CRVa0RSMjrUG8=
X-Received: by 2002:a02:84ac:: with SMTP id f41mr13390455jai.18.1607228502780;
 Sat, 05 Dec 2020 20:21:42 -0800 (PST)
MIME-Version: 1.0
From: Paul King <paulk@apache.org>
Date: Sun, 6 Dec 2020 14:21:31 +1000
X-Gmail-Original-Message-ID: <CADRx3PNjyfP4n0+4gcVUcN-ffGio_ZiwC=ZggbmE83WenKGg1g@mail.gmail.com>
Message-ID: <CADRx3PNjyfP4n0+4gcVUcN-ffGio_ZiwC=ZggbmE83WenKGg1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fb32a505b5c40ba4"
Subject: [oss-security] [CVE-2020-17521]: Apache Groovy Information Disclosure

--000000000000fb32a505b5c40ba4
Content-Type: text/plain; charset="UTF-8"

CVE-2020-17521 Apache Groovy Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:

Unsupported Codehaus versions of Groovy from 2.0 to 2.4.4.
Apache Groovy versions 2.4.4 to 2.4.20, 2.5.0 to 2.5.13,
3.0.0 to 3.0.6, and 4.0.0-alpha-1.

Fixed in versions 2.4.21, 2.5.14, 3.0.7, 4.0.0-alpha-2

Impact:

This vulnerability potentially impacts Unix-like systems, and very old
versions of Mac OSX and Windows. On such OS versions, Groovy may create
temporary directories within the OS temporary directory which is shared
between all users on affected systems. Groovy will create such directories
for internal use when producing Java Stubs (very low impact) or on behalf
of user code via two extension methods[4,5] for creating temporary
directories.
If Groovy user code uses either of these extension methods, and stores
executable code in the resulting temporary directory, then the risk is high,
since this can lead to local privilege escalation. If such Groovy code is
making
use of the temporary directory to store sensitive information, then the
risk is
medium, since such information could be exposed or modified.

When analyzing the impact of this vulnerability, here are the important
questions to ask:

Is the Groovy code running on a machine with an impacted operating system?
Do other users have access to the machine running the Groovy code?
Does the Groovy code create temporary directories using Groovy's
createTempDir extension methods[4,5]?

If you answer no to any of these questions, you are not affected.
If you answered yes, does the Groovy code write or store executable code
in the temporary directory? If you answer yes, the risk is high, and can
lead to
local privilege escalation. Does the Groovy code write sensitive
information,
like API keys or passwords, into the temporary directory? If you answer yes,
the risk is medium, and information may be exposed or modified.

Description:

Groovy was making use of a method in the JDK which is now flagged as not
suitable for security-sensitive contexts. In addition, Groovy wasn't
checking
a flag related to successful creation of the temporary directory which leads
to a race condition whereby the vulnerability exists[1].

For the fixed versions, Groovy 2.5 and above is now using a newer JDK method
which creates a directory that is only readable by the user running the
Groovy
code. The same is true for the fixed Groovy 2.4 version except if running
on a pre-JDK7 version of the JDK in which case a fallback implementation is
used which now checks for successful creation of the temporary directory.
This eliminates the high-risk scenario involving the race condition whereby
executables or information could be modified, but still leaves the potential
for sensitive information leakage. Groovy 2.4/JDK 6 users are recommended
to use the `java.io.tmpdir` mitigation.

Mitigation:

Setting the `java.io.tmpdir` system environment variable to a directory
that is exclusively owned by the executing user will fix this vulnerability
for all operating systems and all Groovy versions.

Users who cannot easily move to the fixed Groovy versions may wish to
consider using the JDK's Files#createTempDirectory method instead of the
Groovy extension methods.

Credit:

This vulnerability was discovered by Jonathan Leitschuh (
https://twitter.com/jlleitschuh)

Similar Vulnerabilities:

* Jetty -
https://github.com/eclipse/jetty.project/security/advisories/GHSA-g3wg-6mcf-8jj6
* JUnit4 -
https://github.com/junit-team/junit4/security/advisories/GHSA-269g-pwp5-87pp
* Google Guava - https://github.com/google/guava/issues/4011
* Apache Ant - https://nvd.nist.gov/vuln/detail/CVE-2020-1945
* JetBrains Kotlin Compiler -
https://nvd.nist.gov/vuln/detail/CVE-2020-15824

References:

[1] CWE-379: Creation of Temporary File in Directory with Insecure
Permissions (https://cwe.mitre.org/data/definitions/379.html)
[2] "File.createTempFile" should not be used to create a directory (
https://rules.sonarsource.com/java/tag/owasp/RSPEC-2976)
[3] Groovy CVE list (https://groovy-lang.org/security.html)
[4]
https://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/File.html#createTempDir()
[5]
https://docs.groovy-lang.org/latest/html/groovy-jdk/java/io/File.html#createTempDir(java.lang.String,%20java.lang.String)
[6] related Jira issue: https://issues.apache.org/jira/browse/GROOVY-9824

--000000000000fb32a505b5c40ba4--
