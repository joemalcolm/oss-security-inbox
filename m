Received: (qmail 1460 invoked by uid 550); 6 Jul 2022 12:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22056 invoked from network); 6 Jul 2022 12:13:24 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f99b360a-192e-5c4e-1832-ee26121ae0bf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Jul 2022 12:13:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-37839: Apache Superset: Improper access to dataset
 metadata information  

Description:

Apache Superset up to 1.5.1 allowed for authenticated users to access metad=
ata information related to datasets they have no permission on. This metada=
ta included the dataset name, columns and metrics.

Mitigation:

Upgrade to 1.5.1 or higher

Credit:

Apache Superset would like to thank Dinesh for reporting this issue

