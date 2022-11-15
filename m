Received: (qmail 1875 invoked by uid 550); 15 Nov 2022 12:04:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3309 invoked from network); 15 Nov 2022 11:35:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Olivier Lamy <olamy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a67241ba-4fe9-6eec-6b1a-0ee43405fc1d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Nov 2022 11:35:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40308: Apache Archiva prior to 2.2.9 may allow the
 anonymous user to read arbitrary files 

Description:

If anonymous read enabled, it's possible to read the database file directly=
 without logging in.


Credit:

Thanks to L3yx of Syclover Security Team

