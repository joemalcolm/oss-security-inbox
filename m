Received: (qmail 16137 invoked by uid 550); 16 May 2022 16:45:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16068 invoked from network); 16 May 2022 16:45:38 -0000
Content-Type: text/plain; charset=utf-8
From: Tim Allison <tallison@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <20266383-77f2-3ebd-0bfa-09a4808c7506@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 May 2022 16:45:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-25169: Apache Tika BPGParser Memory Usage DoS 

Description:

The BPG parser in versions of Tika before 1.28.2 and 2.4.0 may allocate an =
unreasonable amount of memory on carefully crafted files.


