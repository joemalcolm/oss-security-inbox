Received: (qmail 20017 invoked by uid 550); 24 Nov 2022 11:57:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19587 invoked from network); 24 Nov 2022 11:55:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: ShunFeng Cai <caishunfeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ab979964-17ca-502d-86e0-b3842ac4d5a7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 24 Nov 2022 11:54:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26885: Apache DolphinScheduler config file read by task
 risk 

Severity: important

Description:

When using tasks to read config files, there is a risk of database password=
 disclosure.   We recommend you upgrade to version 2.0.6 or higher.

