X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["480" "Thursday" "7" "October" "2021" "15:23:08" "+0000" "Dave Fisher" "wave@apache.org" nil "16" "[oss-security] CVE-2021-28129: DEB packaging for Apache OpenOffice 4.1.8 installed with a non-root userid and groupid " nil nil nil "10" nil nil (number mark "U       wave@apache. Oct  7   16/480   " thread-indent "\"[oss-security] CVE-2021-28129: DEB packaging for Apache OpenOffice 4.1.8 installed with a non-root userid and groupid \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-28129: DEB packaging for Apache OpenOffice 4.1.8 installed with a non-root userid and groupid " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3556 invoked by uid 550); 7 Oct 2021 15:24:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30422 invoked from network); 7 Oct 2021 15:23:22 -0000
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <55c86d5f-1d0a-fb45-e58e-e44d9667e5ef@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Oct 2021 15:23:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-28129: DEB packaging for Apache OpenOffice 4.1.8
 installed with a non-root userid and groupid 

Severity: low

Description:

While working on Apache OpenOffice 4.1.8 a developer discovered that the DE=
B package did not install using root, but instead used a userid and groupid=
 of 500. This both caused issues with desktop integration and could allow a=
 crafted attack on files owned by that user or group if they exist.

Users who installed the Apache OpenOffice 4.1.8 DEB packaging should upgrad=
e to the latest version of Apache OpenOffice.

Credit:

Arrigo Marchiori

