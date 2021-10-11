X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["466" "Monday" "11" "October" "2021" "03:04:14" "+0000" "Dave Fisher" "wave@apache.org" nil "19" "[oss-security] CVE-2021-41830: Apache OpenOffice: Double Certificate Attack " nil nil nil "10" nil nil (number mark "U       wave@apache. Oct 11   19/466   " thread-indent "\"[oss-security] CVE-2021-41830: Apache OpenOffice: Double Certificate Attack \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41830: Apache OpenOffice: Double Certificate Attack " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11885 invoked by uid 550); 11 Oct 2021 07:08:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3817 invoked from network); 11 Oct 2021 03:04:28 -0000
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <01325ee1-f172-c154-1023-87fb7d6c2df6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 Oct 2021 03:04:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41830: Apache OpenOffice: Double Certificate Attack 

Severity: high

Description:

It is possible for an attacker to manipulate signed documents and macros to=
 appear to come from a trusted source.

All versions of Apache OpenOffice up to 4.1.10 are affected. Users are advi=
sed to update to version 4.1.11.

See CVE-2021-25633 for the LibreOffice advisory.



Credit:

Apache OpenOffice would like to thank Simon Rohlmann, Vladislav Mladenov, C=
hristian Mainka, and Jorg Schwenk of Ruhr University Bochum, Germany

