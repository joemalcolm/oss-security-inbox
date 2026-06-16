X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/8
Message-ID: <fa52b119-15d5-47be-9f0b-2ea6cd2c925c@oracle.com>
Date: Tue, 16 Jun 2026 10:26:42 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-12003] CPython In-tree (development) search paths can be enabled without modifying install directory
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: [Security-announce][CVE-2026-12003] In-tree (development) search paths 
can be enabled without modifying install directory
Date: Tue, 16 Jun 2026 16:01:03 +0100
From: Steve Dower <steve.dower@...hon.org>
Reply-To: security-sig@...hon.org
To: security-announce@...hon.org

There is a MODERATE (CVSSv4 5.3) severity vulnerability affecting CPython up to 
(and including) 3.11.15, 3.12.13, 3.13.14, 3.14.6 and 3.15.0b2.

To allow builds of Python to be run from an in-tree layout (rather than an 
installed file layout), the VPATH variable is defined at build time and used to 
locate certain landmarks - specifically, Modules/setup.local. When this landmark 
is found relative to VPATH relative to the executable, Python assumes it is 
running in a source tree and generates a different default sys.path. This code 
remains in release builds, so that release-ready builds can be built in-tree.

On Windows, since builds are written to 'PCbuild/<arch>', the value of VPATH is 
set to '..\..', which results in a landmark of '..\..\Modules\setup.local'. This 
path is outside the install directory of Python, and may have different 
permissions, potentially allowing a low-privilege user to create the landmark 
and an alternative `Lib` folder that will be discovered by an otherwise 
restricted install.

Such a setup occurs with the legacy default install location for all users (in 
the now superseded EXE installer), due to how Windows allows all users to create 
folders in the root directory of their OS drive.

**Our recommended mitigation** on Windows is to migrate away from the legacy 
installer and use the new [Python install 
manager](https://www.python.org/downloads/latest/pymanager/) to install for the 
current user. Installs where the directory two levels above the Python 
installation directory have equivalent permissions are unaffected (in general, a 
per-user install cannot be modified at all by other users, removing any 
escalation of privilege risk, and could be directly modified by a privileged 
user, making the potential tampering irrelevant). Alternative mitigations might 
include preemptively creating and restricting access to a `Modules` directory. 
Be aware that only 3.13 and 3.14 will receive updated legacy installers - 
earlier fixes are only provided as sources.

Platforms other than Windows allow VPATH to be overridden, but as they don't 
usually use a separated directory in the build for binaries, are unlikely to 
have a landmark reference outside of the install directory.

The landmark detection involving VPATH is a fallback for when a more specific 
landmark - .\pybuilddir.txt - is absent, and was included for compatibility. 
Future releases of Python will no longer include the fallback, and so builds 
will need to generate or preserve the pybuilddir.txt file in order to work 
in-tree. This landmark file has been generated on Windows since 3.11, and on 
other platforms for longer.

Reported by Jake Yamaki, Senior Consultant, Bishop Fox.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-12003
* https://github.com/python/cpython/pull/151545
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
