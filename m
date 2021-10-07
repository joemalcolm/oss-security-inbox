X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["396" "Thursday" "7" "October" "2021" "15:20:29" "+0000" "Dave Fisher" "wave@apache.org" nil "13" "[oss-security] CVE-2021-40439: Apache OpenOffice: Billion Laughs " nil nil nil "10" nil nil (number mark "U       wave@apache. Oct  7   13/396   " thread-indent "\"[oss-security] CVE-2021-40439: Apache OpenOffice: Billion Laughs \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40439: Apache OpenOffice: Billion Laughs " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31815 invoked by uid 550); 7 Oct 2021 15:23:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28584 invoked from network); 7 Oct 2021 15:20:42 -0000
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <88785c14-8198-8f86-6a0f-33daf51dfb30@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Oct 2021 15:20:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40439: Apache OpenOffice: Billion Laughs 

Severity: medium

Description:

Apache OpenOffice has a dependency on expat software. Versions prior to 2.1=
.0 were subject to CVE-2013-0340 a "Billion Laughs" entity expansion denial=
 of service attack and exploit via crafted XML files. ODF files consist of =
a set of XML files.

All versions of Apache OpenOffice up to 4.1.10 are subject to this issue.

expat in version 4.1.11 is patched.

