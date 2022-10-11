Received: (qmail 15797 invoked by uid 550); 11 Oct 2022 11:42:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3150 invoked from network); 11 Oct 2022 10:17:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xiaoxiang Yu <xxyu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <337c1e01-5515-6383-fb85-bdffce716435@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Oct 2022 10:16:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24697: Apache Kylin: Command injection exists when the
 configuration overwrites function overwrites system parameters 

Severity: important

Description:

Kylin's cube designer function has a command injection vulnerability when o=
verwriting system parameters in the configuration overwrites menu. RCE can =
be implemented by closing the single quotation marks around the parameter v=
alue of =E2=80=9C-- conf=3D=E2=80=9D to inject any operating system command=
 into the command line parameters. This vulnerability affects the kylin whi=
ch version is 4.0.1 and above.

Mitigation:

Users of Kylin 2.x & Kylin 3.x & 4.x should upgrade to 4.0.2 or apply patch=
 https://github.com/apache/kylin/pull/1811 .

Credit:

Kylin Team would like to thanks Kai Zhao of ToTU Secruity Team.

