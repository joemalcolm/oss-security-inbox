Received: (qmail 30693 invoked by uid 550); 4 Nov 2022 17:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30337 invoked from network); 4 Nov 2022 17:36:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0a509ab5-7397-d6ac-e841-ef4d9bf00d58@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Nov 2022 17:35:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-42920: Apache Commons BCEL prior to 6.6.0 allows
 producing arbitrary bytecode via out-of-bounds writing 

Description:

Apache Commons BCEL has a number of APIs that would normally only allow cha=
nging specific class characteristics. However, due to an out-of-bounds writ=
ing issue, these APIs can be used to produce arbitrary bytecode. This could=
 be abused in applications that pass attacker-controllable data to those AP=
Is, giving the attacker more control over the resulting bytecode than other=
wise expected. Update to Apache Commons BCEL 6.6.0.

This issue is being tracked as BCEL-363

Credit:

Reported by Felix Wilhelm (Google); GitHub pull request to Apache Commons B=
CEL #147 by Richard Atkins (https://github.com/rjatkins); PR derived from O=
penJDK (https://github.com/openjdk/jdk11u/) commit 13bf52c8d876528a43be7cb7=
7a1f452d29a21492 by Aleksei Voitylov and RealCLanger (Christoph Langer http=
s://github.com/RealCLanger)

