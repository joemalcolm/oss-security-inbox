Received: (qmail 32328 invoked by uid 550); 16 Sep 2025 20:47:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32270 invoked from network); 16 Sep 2025 20:47:59 -0000
Message-ID: <20485954-7382-4595-8d43-b3fe7ca8eb38@pipping.org>
Date: Tue, 16 Sep 2025 22:47:49 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libexpat 2.7.2 fixes CVE-2025-59375 (DoS, CWE-770)

Hello oss-security,


just a quick note that libexpat 2.7.2 (or "Expat 2.7.2") released
today is fixing CVE-2025-59375: denial of service through forced
extensive use of dynamic memory despite small parser input.

Some key links are:

- The change log of release 2.7.2
   https://github.com/libexpat/libexpat/blob/R_2_7_2/expat/Changes

- The ClusterFuzz finding, its payload and analysis
   https://github.com/libexpat/libexpat/issues/1018

- The fixing pull request
   https://github.com/libexpat/libexpat/pull/1034

- The official CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2025-59375

Best



Sebastian
