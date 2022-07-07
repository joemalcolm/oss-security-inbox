Received: (qmail 24007 invoked by uid 550); 7 Jul 2022 16:19:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22045 invoked from network); 7 Jul 2022 16:15:30 -0000
Content-Type: text/plain; charset=utf-8
From: Abhishek Agarwal <abhishek@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <95de08a1-56d1-3c44-509a-759d20823a41@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Jul 2022 16:15:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28889: Apache Druid: Clickjacking in the web console 

Description:

In Apache Druid 0.22.1 and earlier, the server did not set appropriate head=
ers to prevent clickjacking. Druid 0.23.0 and later prevent clickjacking us=
ing the Content-Security-Policy header.

Mitigation:

Upgrade to Druid 0.23.0 or later.

