X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["337" "Thursday" "3" "February" "2022" "18:21:00" "+0000" "Abhishek Tiwari" "abti@apache.org" nil "11" "[oss-security] CVE-2021-36151: Apache Gobblin: Local Credentials Disclosure Vulnerability " nil nil nil "2" nil nil (number mark "U       abti@apache. Feb  3   11/337   " thread-indent "\"[oss-security] CVE-2021-36151: Apache Gobblin: Local Credentials Disclosure Vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36151: Apache Gobblin: Local Credentials Disclosure Vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9899 invoked by uid 550); 3 Feb 2022 19:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18388 invoked from network); 3 Feb 2022 18:21:43 -0000
Content-Type: text/plain; charset=utf-8
From: Abhishek Tiwari <abti@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <804b39e8-5b2c-9642-d80d-bd48d5104768@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Feb 2022 18:21:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-36151: Apache Gobblin: Local Credentials Disclosure
 Vulnerability 

Description:

In Apache Gobblin, the Hadoop token is written to a temp file that is visib=
le to all local users on Unix-like systems. This affects versions <=3D 0.15=
.0. Users should update to version 0.16.0 which addresses this issue.=20

Credit:

Apache Gobblin would like to thank Jonathan Leitschuh for reporting this is=
sue.=20

