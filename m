Received: (qmail 3078 invoked by uid 550); 6 Sep 2023 09:58:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24172 invoked from network); 6 Sep 2023 09:06:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <05416913-f79b-38c9-5d5d-d49c42106a2c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:06:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-36387: Apache Superset: Improper API permission for low
 privilege users 

Affected versions:

- Apache Superset through 2.1.0

Description:

An improper default REST API permission for Gamma users in Apache Superset =
up to and including 2.1.0 allows for an authenticated Gamma user to test da=
tabase connections.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-36387

