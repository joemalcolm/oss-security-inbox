Received: (qmail 27826 invoked by uid 550); 5 Nov 2025 14:56:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1457 invoked from network); 5 Nov 2025 02:38:02 -0000
Message-ID: <9423be70-1e56-4e04-9710-c41bce99b419@treenet.co.nz>
Date: Wed, 5 Nov 2025 15:37:51 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Amos Jeffries <squid3@treenet.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2025-54574] SQUID-2025:1 Buffer Overflow in URN Handling

__________________________________________________________________

      Squid Proxy Cache Security Update Advisory SQUID-2025:1
__________________________________________________________________

Advisory ID:       | SQUID-2025:1, CVE-2025-54574
Date:              | August 1, 2025
Summary:           | Buffer Overflow in URN Handling
Affected versions: | Squid 2.x -> 2.7.STABLE9
                    | Squid 3.x -> 3.5.28
                    | Squid 4.x -> 4.17
                    | Squid 5.x -> 5.9
                    | Squid 6.x -> 6.3
Fixed in version:  | Squid 6.4
__________________________________________________________________

Problem Description:

   Due to incorrect buffer management Squid is vulnerable to a
   heap buffer overflow and possible remote code execution attack
   when processing URN.

__________________________________________________________________

Severity:

   This problem allows a remote server to perform a Buffer Overflow
   attack when delivering URN Trivial-HTTP responses. Potentially
   allowing delivery of up to 4KB of Squid allocated heap memory
   to the client.

   Revealed memory may include security credentials or other
   confidential data.

__________________________________________________________________

Updated Packages:

   This bug is fixed by Squid version 6.4.

   In addition, patches addressing this problem for the stable
   releases can be found in our patch archives:

   Squid 6:
  
<https://github.com/squid-cache/squid/commit/a27bf4b84da23594150c7a86a23435df0b35b988>

   If you are using a prepackaged version of Squid then please refer
   to the package vendor for availability information on updated
   packages.

__________________________________________________________________

Determining if your version is vulnerable:

   Squid older than 4.14 have not been tested and should be assumed
   to be vulnerable.

   All Squid-4.x up to and including 4.17 are vulnerable.

   All Squid-5.x up to and including 5.9 are vulnerable.

   All Squid-6.x up to and including 6.3 are vulnerable.

__________________________________________________________________

Workaround:

   Disable URN access permissions.

    acl URN proto URN
    http_access deny URN

__________________________________________________________________

Contact details for the Squid project:

   For installation / upgrade support on binary packaged versions
   of Squid: Your first point of contact should be your binary
   package vendor.

   If you install and build Squid from the original Squid sources
   then the <squid-users at lists.squid-cache.org> mailing list is your
   primary support point. For subscription details see
   <http://www.squid-cache.org/Support/mailing-lists.html>.

   For reporting of non-security bugs in the latest STABLE release
   the squid bugzilla database should be used
   <https://bugs.squid-cache.org/>.

   For reporting of security sensitive bugs send an email to the
   <squid-bugs at lists.squid-cache.org> mailing list. It's a closed
   list (though anyone can post) and security related bug reports
   are treated in confidence until the impact has been established.

__________________________________________________________________

Credits:

   This vulnerability was discovered by StarryNight.

   Fixed by The Measurement Factory.

__________________________________________________________________

Revision history:
   2023-06-24 08:18:55 UTC Fix published
   2025-07-01 18:40:24 UTC Initial Report
__________________________________________________________________
END
