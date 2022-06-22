Received: (qmail 22061 invoked by uid 550); 22 Jun 2022 09:41:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5620 invoked from network); 22 Jun 2022 07:15:55 -0000
Content-Type: text/plain; charset=utf-8
From: Robert Munteanu <rombert@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <abc9b527-a027-ca04-9f9e-9469589fb4c9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Jun 2022 07:15:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-32549: Apache Sling: log injection in Sling logging 

Severity: important

Description:

Apache Sling Commons Log <=3D 5.4.0 and Apache Sling API <=3D 2.25.0 are vu=
lnerable to log injection. The ability to forge logs may allow an attacker =
to cover tracks by injecting fake logs and potentially corrupt log files.

Credit:

Apache Sling would like to thank Alex Collignon for reporting this issue.

