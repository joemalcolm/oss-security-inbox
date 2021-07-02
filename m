X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1181" "Friday" "2" "July" "2021" "03:22:35" "+0000" "Jihoon Son" "jihoonson@apache.org" nil "28" "[oss-security] CVE-2021-26920: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended " nil nil nil "7" nil nil (number mark "U       jihoonson@ap Jul  2   28/1181  " thread-indent "\"[oss-security] CVE-2021-26920: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26920: Apache Druid: The HTTP inputSource allows authenticated users to read data from other sources than intended " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28618 invoked by uid 550); 2 Jul 2021 05:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21689 invoked from network); 2 Jul 2021 03:22:49 -0000
Content-Type: text/plain; charset=utf-8
From: Jihoon Son <jihoonson@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ca3815f4-4b9a-83ac-1f79-72a24a8d3f6c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Jul 2021 03:22:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-26920: Apache Druid: The HTTP inputSource allows
 authenticated users to read data from other sources than intended 

Severity: low

Description:

In the Druid ingestion system, the InputSource is used for reading data fro=
m a certain data source. However, the HTTP InputSource allows authenticated=
 users to read data from other sources than intended, such as the local fil=
e system, with the privileges of the Druid server process. This is not an e=
levation of privilege when users access Druid directly, since Druid also pr=
ovides the Local InputSource, which allows the same level of access. But it=
 is problematic when users interact with Druid indirectly through an applic=
ation that allows users to specify the HTTP InputSource, but not the Local =
InputSource. In this case, users could bypass the application-level restric=
tion by passing a file URL to the HTTP InputSource.

Mitigation:

Users can avoid the issue by upgrading to 0.21.0 or a higher version.

In an earlier version than 0.21.0, when the user application wants to restr=
ict the access to the local file system, it should disallow all InputSource=
s that can read local files, that is the Local, HTTP, and HDFS InputSources.

Credit:

This issue was discovered by chybeta from the Security Team of Alibaba Clou=
d.

