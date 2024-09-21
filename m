Received: (qmail 3993 invoked by uid 550); 21 Sep 2024 10:34:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29994 invoked from network); 21 Sep 2024 02:28:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <86962e88-2b71-5969-cf00-34110c71fe13@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 21 Sep 2024 02:27:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-42323: Apache HertzBeat: RCE by snakeYaml deser load
 malicious xml  

Severity: important

Affected versions:

- Apache HertzBeat before 1.6.0

Description:

SnakeYaml Deser Load Malicious xml rce vulnerability in Apache HertzBeat (i=
ncubating).=C2=A0

This vulnerability can only be exploited by authorized attackers.
This issue affects Apache HertzBeat (incubating): before 1.6.0.

Users are recommended to upgrade to version 1.6.0, which fixes the issue.

Credit:

Yulate (reporter)
Liufeng Yi  (reporter)

References:

https://www.cve.org/CVERecord?id=3DCVE-2024-42323

