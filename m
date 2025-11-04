Received: (qmail 3932 invoked by uid 550); 4 Nov 2025 23:07:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11344 invoked from network); 4 Nov 2025 22:26:25 -0000
Message-ID: <6b3baf54-147d-4dce-a2c8-3cf77181030d@treenet.co.nz>
Date: Wed, 5 Nov 2025 11:26:14 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Amos Jeffries <squid3@treenet.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2019-18860] SQUID-2023:6 Cross Site Scripting in cachemgr.cgi

________________________________________________________________

     Squid Proxy Cache Security Update Advisory SQUID-2023:6
________________________________________________________________


Advisory ID:       | SQUID-2023:6 (CVE-2019-18860)
Date:              | November 5, 2025
Summary:           | Cross Site Scripting in cachemgr.cgi
Affected versions: | Squid 2.x -> 2.7.STABLE9
                    | Squid 3.x -> 3.5.28
                    | Squid 4.x -> 4.17
                    | Squid 5.x -> 5.9
                    | Squid 6.x -> 6.14
________________________________________________________________

Problem Description:

  Due to an Improper Neutralization of Input During Web Page
  Generation bug Squid cachemgr.cgi tool is vulnerable to a
  Cross-Site Scripting attack.

________________________________________________________________

Severity:

  This problem allows a remote attacker to perform a Cross-Site
  scripting attack against clients or administrators with access
  to the cachemgr.cgi reporting.

This attack is limited to cachemgr.cgi.

________________________________________________________________

Updated Packages:

  The cachemgr.cgi tool has been removed (EOL) by Squid version 7

  Patches addressing this problem for the stable
  releases can be found in our patch archives:

  Squid 6 and older:
  <https://github.com/squid-cache/squid/commit/d94dbed6c700faeded8c4175f2a8d0f71c15755b>

  Squid 4.8 and older also require:
  <https://github.com/squid-cache/squid/commit/5a90b4ce64c346ba7f317a278ba601091d9de076>

  If you are using a prepackaged version of Squid then please
  refer to the package vendor for availability information on
  updated packages.

________________________________________________________________

Determining if your version is vulnerable:

  All unpatched cachemgr.cgi are vulnerable.

________________________________________________________________

Workaround:

  Fetch manager reports directly from Squid. For example;
   http://localhost:3128/squid-internal-mgr/menu

________________________________________________________________

Contact details for the Squid project:

  For installation / upgrade support on binary packaged versions
  of Squid: Your first point of contact should be your binary
  package vendor.

  If you install and build Squid from the original Squid sources
  then the <squid-users@lists.squid-cache.org> mailing list is
  your primary support point. For subscription details see
  <http://www.squid-cache.org/Support/mailing-lists.html>.

  For reporting of non-security bugs in the latest STABLE release
  the squid bugzilla database should be used
  <http://bugs.squid-cache.org/>.

  For reporting of security sensitive bugs send an email to the
  <squid-bugs@lists.squid-cache.org> mailing list. It's a closed
  list (though anyone can post) and security related bug reports
  are treated in confidence until the impact has been established.

________________________________________________________________

Credits:

  This vulnerability was discovered by Aaron Costello

  Additional vectors discovered by Stefan Cornelius of RedHat.

  Initial fix by Aaron Costello

________________________________________________________________

Revision history:

  2019-10-18 20:15:14 UTC Initial Report
  2019-11-03 16:22:22 UTC Initial Patches Released
  2020-03-31 11:07:35 UTC Additional Report
________________________________________________________________
END
