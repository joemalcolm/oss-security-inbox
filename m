X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3423" "Monday" "28" "September" "2020" "16:23:53" "+0100" "Ferruh Yigit" "ferruh.yigit@intel.com" "<73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>" "106" "[oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil "9" "2020092815:23:53" "[oss-security] DPDK security advisory for multiple vhost crypto issues" (number mark "U       ferruh.yigit Sep 28  106/3423  " thread-indent "\"[oss-security] DPDK security advisory for multiple vhost crypto issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18085 invoked by uid 550); 28 Sep 2020 15:42:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11285 invoked from network); 28 Sep 2020 15:24:09 -0000
IronPort-SDR: EhF3iB/+hewPeE2BdW7keZYvZT8A6vAIbJ2XvWRjl+mAGQwCBiDcbQ0JQGr+Q2PF5E8V5TJFvm
 wnHxdkh9hwvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="159391791"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="159391791"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
IronPort-SDR: 3fjKx7TmoogOWuVw4Xb8aMRQuGa22ow9yK1lQ0dzV88giD9aPJZxhp9ur22Uj+zisVZ3Clp3GW
 yPAn3O1flrdA==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; 
   d="scan'208";a="488620283"
From: Ferruh Yigit <ferruh.yigit@intel.com>
To: dpdk-announce <announce@dpdk.org>
Cc: security@dpdk.org, security-prerelease@dpdk.org,
 oss-security@lists.openwall.com, "dev@dpdk.org" <dev@dpdk.org>
Message-ID: <73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>
Date: Mon, 28 Sep 2020 16:23:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] DPDK security advisory for multiple vhost crypto issues

A set of vulnerabilities are fixed in DPDK:
- CVE-2020-14374
- CVE-2020-14375
- CVE-2020-14376
- CVE-2020-14377
- CVE-2020-14378

Some downstream stakeholders were warned in advance in order to coordinate the
release of fixes and reduce the vulnerability window.

Problem:
A malicious guest can harm the host using vhost crypto, this includes
executing code in host (VM Escape), reading host application memory
space to guest and causing partially denial of service in the host.

All users of the vhost library are strongly encouraged to upgrade as soon as
possible.

Thanks to "Ryan Hall <ryan.e.hall@intel.com>" for reporting the issues.


Stable releases download links:

DPDK 18.11.10 (LTS)
http://fast.dpdk.org/rel/dpdk-18.11.10.tar.xz

DPDK 19.11.5 (LTS)
https://fast.dpdk.org/rel/dpdk-19.11.5.tar.xz


Details:

CVE: CVE-2020-14374
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
Severity: 8.8 (High)
CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H
Summary : Remote Code Execution in vhost_crypto (VM Escape)
Reporter: Ryan Hall <ryan.e.hall@intel.com>

CVE: CVE-2020-14375
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
Severity: 7.8 (High)
CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
Summary : Time-of-check time-of-use vulnerabilities throughout vhost_crypto.c
Reporter: Ryan Hall <ryan.e.hall@intel.com>

CVE: CVE-2020-14376
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
Severity: 7.8 (High)
CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
Summary : Buffer overflow copying iv_data from guest to
           host(prepare_sym_cipher_op & prepare_sym_chain_op)
Reporter: Ryan Hall <ryan.e.hall@intel.com>

CVE: CVE-2020-14377
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
Severity: 7.1 (High)
CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:H
Summary: write_back_data buffer over read (cipher->para.dst_data_len &
          desc->len)
Reporter: Ryan Hall <ryan.e.hall@intel.com>

CVE: CVE-2020-14378
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
Severity: 3.3 (Low)
CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L
Summary : Partial Denial of Service due to Integer Underflow
Reporter: Ryan Hall <ryan.e.hall@intel.com>


Commits:
main repo (will be 20.11.0)
https://git.dpdk.org/dpdk/commit/?id=57680e34498
https://git.dpdk.org/dpdk/commit/?id=5677e68c05d
https://git.dpdk.org/dpdk/commit/?id=b2866f47336
https://git.dpdk.org/dpdk/commit/?id=409c47c7c5b
https://git.dpdk.org/dpdk/commit/?id=e15b7c01120
https://git.dpdk.org/dpdk/commit/?id=2d962bb7365

DPDK 18.11.10 (LTS)
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ab6314978567
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7a5af91f8bf4
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7e7c75edc635
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ff65dc28bc71
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=75f8df70a2c8
https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=6e8a4da39e68

DPDK 19.11.5 (LTS)
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=3f2635c5a9c3
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=81e969483020
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e4a7c14f0248
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=319b498e4b16
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=6a3a414698e4
https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e2666ec24535

-- 
DPDK Security Team
http://core.dpdk.org/security/








