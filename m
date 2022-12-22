Received: (qmail 30019 invoked by uid 550); 22 Dec 2022 12:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32412 invoked from network); 22 Dec 2022 09:35:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Weijie Wu <wuweijie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <97dbcb8b-609e-07c5-6a78-76da8d4e91ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Dec 2022 09:35:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45347: Apache ShardingSphere-Proxy: ShardingSphere-Proxy
 MySQL authentication bypass 

Description:

ShardingSphere-Proxy with MySQL protocol didn't cleanup session completely =
after client authentication failed, which allows an attacker to execute nor=
mal commands by constructing a special MySQL client. This vulnerability has=
 been fixed in ShardingSphere 5.3.0.

References:

https://shardingsphere.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-45347

