Received: (qmail 13533 invoked by uid 550); 1 Nov 2022 12:49:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17512 invoked from network); 1 Nov 2022 02:21:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Weijie Wu <wuweijie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f0c02aa7-7165-3828-903e-1385512e069c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Nov 2022 02:20:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-31764: Apache ShardingSphere ElasticJob-UI allows RCE via
 event trace data source JDBC 

Description:

The Lite UI of Apache ShardingSphere ElasticJob-UI allows an attacker to pe=
rform RCE by constructing a special JDBC URL of H2 database. This issue aff=
ects Apache ShardingSphere ElasticJob-UI version 3.0.1 and prior versions. =
This vulnerability has been fixed in ElasticJob-UI 3.0.2.
The premise of this attack is that the attacker has obtained the account an=
d password. Otherwise, the attacker cannot perform this attack.

