X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2495" "Wednesday" "29" "January" "2020" "17:17:49" "-0800" "Thiago Macieira" "thiago.macieira@intel.com" "<4121113.n0WVUT9hOZ@tjmaciei-mobl1>" "54" "[oss-security] New Qt vulnerabilities" nil nil nil "1" "2020013001:17:49" "[oss-security] New Qt vulnerabilities" (number mark "U       thiago.macie Jan 29   54/2495  " thread-indent "\"[oss-security] New Qt vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] New Qt vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26329 invoked by uid 550); 30 Jan 2020 08:09:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8062 invoked from network); 30 Jan 2020 01:18:03 -0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,380,1574150400"; 
   d="scan'208";a="376912693"
From: Thiago Macieira <thiago.macieira@intel.com>
To: <oss-security@lists.openwall.com>
Date: Wed, 29 Jan 2020 17:17:49 -0800
Message-ID: <4121113.n0WVUT9hOZ@tjmaciei-mobl1>
Organization: Intel Corporation
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-IP: [10.251.28.103]
Subject: [oss-security] New Qt vulnerabilities

The Qt security team was made aware of two issues affecting the currently-
released versions of Qt that could lead to loading of untrusted plugins, which 
can execute code immediately upon loading. We have assigned two IDs for them. 
The patches fixing those issues are linked to below.

Issue 1) CVE-2020-0569
Score: 7.3 (High) - CVSS:3.0/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:H/A:H/E:F/RL:O/RC:C
* Vendor: Qt Project
* Product: Qt
* Versions affected: 5.0.0 to 5.13.2
* Versions fixed: 5.14.0 (already released), 5.12.7, 5.9.10 (future)
* Issue: local attack, loading and execution of untrusted code
* Scope: class QPluginLoader (qtbase/src/corelib/plugin/qpluginloader.cpp)
* Description:
QPluginLoader in Qt versions 5.0.0 through 5.13.2 would search for certain 
plugins first on the current working directory of the application, which 
allows an attacker that can place files in the file system and influence the 
working directory of Qt-based applications to load and execute malicious code. 
This issue was verified on macOS and Linux and probably affects all other Unix 
operating systems. This issue does not affect Windows.

Patches:
- 5.6.0 through 5.13.2: https://code.qt.io/cgit/qt/qtbase.git/commit/?
id=bf131e8d2181b3404f5293546ed390999f760404
- 5.0.0 through 5.5.1: https://code.qt.io/cgit/qt/qtbase.git/commit/?
id=5c4234ed958130d655df8197129806f687d4df0d

Issue 2) CVE-2020-0570
Score: 7.3 (High) - CVSS:3.0/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:H/A:H/E:F/RL:O/RC:C
* Vendor: Qt Project
* Product: Qt
* Versions affected: 5.12.0 through 5.14.0
* Versions fixed: 5.14.1 (released), 5.12.7, 5.9.10 (future)
* Issue: local attack, loading and execution of untrusted code
* Scope: class QLibrary (qtbase/src/corelib/plugin)
* Reference: https://bugreports.qt.io/browse/QTBUG-81272
* Description:
QLibrary in Qt versions 5.12.0 through 5.14.0, on certain x86 machines, would 
search for certain libraries and plugins relative to current working directory 
of the application, which allows an attacker that can place files in the file 
system and influence the working directory of Qt-based applications to load 
and execute malicious code. This issue was verified on Linux and probably 
affects all Unix operating systems, other than macOS (Darwin). This issue does 
not affect Windows.

Patch: https://code.qt.io/cgit/qt/qtbase.git/commit/?
id=e6f1fde24f77f63fb16b2df239f82a89d2bf05dd

-- 
Thiago Macieira - thiago.macieira (AT) intel.com
  Software Architect - Intel System Software Products



