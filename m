Received: (qmail 12180 invoked by uid 550); 23 Nov 2022 12:27:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26150 invoked from network); 23 Nov 2022 02:20:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <69039489-c2ed-3a61-4691-adff38199082@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Nov 2022 02:19:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45462: Apache DolphinScheduler prior to 2.0.5 have
 command execution vulnerability 

Severity: moderate

Description:

Alarm instance management has command injection when there is a specific co=
mmand configured. It is only for logged-in users. We recommend you upgrade =
to version 2.0.6 or higher

Credit:

This issue was discovered by Jigang Dong of M1QLin Security Team

