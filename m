X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Thursday" "18" "November" "2021" "23:04:17" "+0000" "Siddharth Wagle" "swagle@apache.org" nil "16" "[oss-security] CVE-2021-39231: Apache Ozone: Missing authentication/authorization on internal RPC endpoints " nil nil nil "11" nil nil (number mark "U       swagle@apach Nov 18   16/446   " thread-indent "\"[oss-security] CVE-2021-39231: Apache Ozone: Missing authentication/authorization on internal RPC endpoints \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39231: Apache Ozone: Missing authentication/authorization on internal RPC endpoints " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25772 invoked by uid 550); 19 Nov 2021 10:56:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10102 invoked from network); 18 Nov 2021 23:04:30 -0000
Content-Type: text/plain; charset=utf-8
From: Siddharth Wagle <swagle@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1664b2b-3fe6-65d5-fd28-f872a9b105b4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Nov 2021 23:04:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-39231: Apache Ozone: Missing authentication/authorization
 on internal RPC endpoints 

Description:

Various internal server-to-server RPC endpoints are available for connectio=
ns, making it possible for an attacker to download raw data from Datanode a=
nd Ozone manager and modify Ratis replication configuration.=20

This issue is being tracked as HDDS-4704,HDDS-4730,HDDS-4496,HDDS-4788

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

