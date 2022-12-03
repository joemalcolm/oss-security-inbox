Received: (qmail 9502 invoked by uid 550); 3 Dec 2022 15:52:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19460 invoked from network); 3 Dec 2022 14:39:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <323ccb5e-ee71-ee85-6c6a-c9d5a5171411@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 03 Dec 2022 14:39:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-37533: Apache Commons Net's FTP client trusts the host
 from PASV response by default 

Severity: low

Description:

Prior to Apache Commons Net 3.9.0, Net's FTP client trusts the host from PA=
SV response by default. A malicious server can redirect the Commons Net cod=
e to use a different host, but the user has to connect to the malicious ser=
ver in the first place. This may lead to leakage of information about servi=
ces running on the private network of the client.
The default in version 3.9.0 is now false to ignore such hosts, as cURL doe=
s. See https://issues.apache.org/jira/browse/NET-711.


This issue is being tracked as NET-711

Credit:

Apache Commons would like to thank ZeddYu Lu for reporting this issue.

