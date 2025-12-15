Received: (qmail 23739 invoked by uid 550); 15 Dec 2025 20:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23717 invoked from network); 15 Dec 2025 20:33:52 -0000
Message-ID: <e7d65376-7665-4c26-8f7a-9e952744da10@pipping.org>
Date: Mon, 15 Dec 2025 21:33:42 +0100
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Sebastian Pipping <sebastian@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] uriparser 1.0.0 fixes CVE-2025-67899 (DoS, CWE-674)

Hello oss-security,


just a quick note that uriparser 1.0.0 released today is fixing
CVE-2025-67899: denial of service through unbound recursion.

Some key links are:

- The change log of release 1.0.0
   https://github.com/uriparser/uriparser/blob/uriparser-1.0.0/ChangeLog

- The fixing pull request
   https://github.com/uriparser/uriparser/pull/284

- The official CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2025-67899

Best



Sebastian

