X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1109" "Monday" "20" "May" "2019" "19:15:24" "+0200" "Andor Molnar" "andor@apache.org" nil "26" nil nil nil nil "5" nil nil (number mark "U       andor@apache May 20   26/1109  " thread-indent "\"[oss-security] [CVE-2019-0201] Information disclosure vulnerability in Apache ZooKeeper \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0201] Information disclosure vulnerability in Apache ZooKeeper " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3943 invoked by uid 550); 20 May 2019 17:20:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32726 invoked from network); 20 May 2019 17:15:38 -0000
From: Andor Molnar <andor@apache.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Message-Id: <52C7AFA8-8CAB-4613-95E9-3EED492B9693@apache.org>
Date: Mon, 20 May 2019 19:15:24 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.8)
Subject: [oss-security] [CVE-2019-0201] Information disclosure vulnerability in Apache
 ZooKeeper 

CVE-2019-0201: Information disclosure vulnerability in Apache ZooKeeper

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected: ZooKeeper prior to 3.4.14, ZooKeeper 3.5.0-alpha through=
 3.5.4-beta. The unsupported ZooKeeper 1.x through 3.3.x versions may be al=
so affected.

Description: ZooKeeper=E2=80=99s getACL() command doesn=E2=80=99t check any=
 permission when retrieves the ACLs of the requested node and returns all i=
nformation contained in the ACL Id field as plaintext string. DigestAuthent=
icationProvider overloads the Id field with the hash value that is used for=
 user authentication. As a consequence, if Digest Authentication is in use,=
 the unsalted hash value will be disclosed by getACL() request for unauthen=
ticated or unprivileged users.

Mitigation: Use an authentication method other than Digest (e.g. Kerberos) =
or upgrade to 3.4.14 or later (3.5.5 or later if on the 3.5 branch).

Credit: This issue was identified by Harrison Neal <harrison@patchadvisor.c=
om> PatchAdvisor, Inc.

References: https://issues.apache.org/jira/browse/ZOOKEEPER-1392

