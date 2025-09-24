Received: (qmail 30517 invoked by uid 550); 24 Sep 2025 21:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30486 invoked from network); 24 Sep 2025 21:43:55 -0000
Message-ID: <9849f703-9b30-4159-8c91-92365dbe5148@pipping.org>
Date: Wed, 24 Sep 2025 23:43:46 +0200
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Sebastian Pipping <sebastian@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libexpat 2.7.3 improves fixes to CVE-2024-8176 and CVE-2025-59375

Hello oss-security,


just a quick note that libexpat 2.7.3 (or "Expat 2.7.3") released
today is improving upon the original fixes to CVE-2024-8176 and
CVE-2025-59375. So if you backported the original fixes, please be sure
to update/extend these backports as needed.

Some key links are:

- The change log of release 2.7.3
   https://github.com/libexpat/libexpat/blob/R_2_7_3/expat/Changes

- The two key pull requests:
   https://github.com/libexpat/libexpat/pull/1048
   https://github.com/libexpat/libexpat/pull/1059

Best



Sebastian

