X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["304" "Monday" "14" "March" "2022" "10:06:24" "+0000" "Stefan Eissing" "icing@apache.org" nil "13" "[oss-security] CVE-2022-23943: Apache HTTP Server: mod_sed: Read/write beyond bounds " nil nil nil "3" nil nil (number mark "U       icing@apache Mar 14   13/304   " thread-indent "\"[oss-security] CVE-2022-23943: Apache HTTP Server: mod_sed: Read/write beyond bounds \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23943: Apache HTTP Server: mod_sed: Read/write beyond bounds " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3469 invoked by uid 550); 14 Mar 2022 10:46:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32468 invoked from network); 14 Mar 2022 10:06:37 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <13a710ca-0f67-4c77-dc3a-61091d14a77f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Mar 2022 10:06:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23943: Apache HTTP Server: mod_sed: Read/write beyond
 bounds 

Severity: important

Description:

Out-of-bounds Write vulnerability in mod_sed of Apache HTTP Server allows a=
n attacker to overwrite heap memory with possibly attacker provided data.

This issue affects Apache HTTP Server 2.4 version 2.4.52 and prior versions.

Credit:

Ronald Crane (Zippenhop LLC)

