X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["811" "Wednesday" "18" "July" "2018" "09:57:37" "-0400" "Robert Levas" "rlevas@apache.org" "<19E83075-9152-4DEB-8630-F442C7D737A4@apache.org>" "29" "[oss-security] CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari Agent standard out in Apache Ambari" nil nil nil "7" "2018071813:57:37" "[oss-security] CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari Agent standard out in Apache Ambari" (number mark "U       rlevas@apach Jul 18   29/811   " thread-indent "\"[oss-security] CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari Agent standard out in Apache Ambari\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26560 invoked by uid 550); 18 Jul 2018 14:02:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24135 invoked from network); 18 Jul 2018 13:57:52 -0000
From: Robert Levas <rlevas@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F4B0C131-4102-48A7-BF1D-DF95C024FB69"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Wed, 18 Jul 2018 09:57:37 -0400
Message-Id: <19E83075-9152-4DEB-8630-F442C7D737A4@apache.org>
Cc: private@ambari.apache.org
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] CVE-2018-8042: Passwords for Hadoop credential stores are visible in
 Ambari Agent standard out in Apache Ambari

--Apple-Mail=_F4B0C131-4102-48A7-BF1D-DF95C024FB69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2018-8042: Passwords for Hadoop credential stores are visible in Ambari=
 Agent standard out=20

Severity: Important

Vendor: Hortonworks

Versions Affected: Ambari 2.5.x, Ambari 2.6.x

Versions Fixed: Ambari 2.7.0

Description:
Passwords for Hadoop credential stores are exposed in Ambari Agent informat=
ional log messages when the credential store feature is enabled for eligibl=
e services. For example, Hive and Oozie.

Mitigation:
Ambari 2.5.x installations should be upgraded to Ambari 2.7.0
Ambari 2.6.x installations should be upgraded to Ambari 2.7.0

Credit:
This issue was discovered by Hortonworks.=

--Apple-Mail=_F4B0C131-4102-48A7-BF1D-DF95C024FB69--
