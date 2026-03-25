Received: (qmail 21613 invoked by uid 550); 25 Mar 2026 05:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20338 invoked from network); 25 Mar 2026 04:25:21 -0000
Message-ID: <9791e9d9-a77e-44c2-9e43-5ede3fb8c40c@treenet.co.nz>
Date: Wed, 25 Mar 2026 17:20:11 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Amos Jeffries <squid3@treenet.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [ADVISORY] SQUID-2026:1 Denial of Service in ICP Request handling
 (CVE-2026-33526)

__________________________________________________________________

     Squid Proxy Cache Security Update Advisory SQUID-2026:1
__________________________________________________________________

Advisory ID:       | SQUID-2026:1 (CVE-2026-33526)
Date:              | March 25, 2026
Summary:           | Denial of Service in ICP Request handling
Affected versions: | Squid 3.x -> 3.5.28
                    | Squid 4.x -> 4.17
                    | Squid 5.x -> 5.9
                    | Squid 6.x -> 6.14
                    | Squid 7.x -> 7.4
Fixed in version:  | Squid 7.5
__________________________________________________________________

Problem Description:

  Due to a heap Use-After-Free bug Squid is vulnerable to Denial
  of Service when handling ICP traffic.

__________________________________________________________________

Severity:

  This problem allows a remote attacker to perform
  a reliable and repeatable Denial of Service attack against the
  Squid service using ICP protocol.

  This attack is limited to Squid deployments that explicitly
  enable ICP support (i.e. configure non-zero icp_port).

  This problem _cannot_ be mitigated by denying ICP queries
  using icp_access rules.

__________________________________________________________________

Updated Packages

  These bugs were fixed in Squid version 7.5.

  In addition, patches addressing this problem for the stable
  releases can be found in our patch archives:

Squid 7:
  <https://github.com/squid-cache/squid/commit/8a7d42f9d44befb8fcbbb619505587c8de6a1e91>

  If you are using a prepackaged version of Squid then please
  refer to the package vendor for availability information on
  updated packages.

__________________________________________________________________

  Determining if your version is vulnerable

  Run the following command to identify whether your Squid
  has been configured with ICP enabled:

   squid -k parse 2>&1 | grep -E "(icp|udp)_port" | tail -n1

  All Squid configured with port 0 are not vulnerable.

  All Squid-3.0 up to and including 7.4 configured with
  a non-zero port should be assumed to be vulnerable.

  All Squid-3.2 up to and including 7.4 configured without
  any port value can be assumed to be not vulnerable.

__________________________________________________________________

Workaround

Either,

   * Do not enable ICP support,

Or,

  * explicitly disable ICP using "icp_port 0".


  Warning: These problems _cannot_ be mitigated by denying ICP
           queries using icp_access rules.

__________________________________________________________________

Contact details for the Squid project:

  For installation / upgrade support on binary packaged versions
  of Squid: Your first point of contact should be your binary
  package vendor.

  If you install and build Squid from the original Squid sources
  then the <squid-users@lists.squid-cache.org> mailing list is
  your primary support point. For subscription details see
  <https://www.squid-cache.org/Support/mailing-lists.html>.

  For reporting of non-security bugs in the latest STABLE release
  the squid bugzilla database should be used
  <https://bugs.squid-cache.org/>.

  For reporting of security sensitive bugs send an email to the
  <squid-bugs@lists.squid-cache.org> mailing list. It's a closed
  list (though anyone can post) and security related bug reports
  are treated in confidence until the impact has been established.

__________________________________________________________________

Credits

  Discovered by:

   * Joshua Rogers with ZeroPath
   * Asim Viladi Oglu Manizada

  Fixed by:

   * Joshua Rogers with ZeroPath

__________________________________________________________________

Revision history:

2025-09-07 20:22:00 EDT Report of the first set of vulnerabilities
2026-01-26 08:48:00 EDT Report of additional vulnerabilities
2026-02-10 19:58:49 UTC official fixes in master branch

__________________________________________________________________
END
