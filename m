Received: (qmail 27806 invoked by uid 550); 22 Jul 2024 12:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5697 invoked from network); 22 Jul 2024 09:35:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5023d80a-778c-9a04-a62e-6514055d7e7e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jul 2024 09:33:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-34457: Apache StreamPark IDOR Vulnerability 

Severity: moderate

Affected versions:

- Apache StreamPark 1.0.0 before 2.1.4

Description:

On versions before 2.1.4, after a regular user successfully logs in, they c=
an manually make a request using the authorization token to view everyone's=
 user flink information, including executeSQL and config.

Mitigation:

all users should upgrade to 2.1.4

Credit:

L0ne1y (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-34457

