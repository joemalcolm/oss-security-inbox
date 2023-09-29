Received: (qmail 5961 invoked by uid 550); 29 Sep 2023 17:23:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11989 invoked from network); 29 Sep 2023 16:59:22 -0000
Date: Fri, 29 Sep 2023 18:59:14 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: zdi@trendmicro.com
Message-ID: <20230929165914.GA31245@openwall.com>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at> <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline
In-Reply-To: <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you for posting this, Heiko!  Also thank you Markus for bringing
this up in the other thread:

https://www.openwall.com/lists/oss-security/2023/09/29/3

I've attached plain text exports of the ZDI advisories to this message
for archival.

Out of the Exim Bugzilla entries in Markus' message, only
https://bugs.exim.org/show_bug.cgi?id=3001 is currently open to the
public, and it says:

> Bug 3001 - infoleak in SPA authenticator, client
> 
> Comment 1 Jeremy Harris 2023-05-11 20:02:32 UTC
> 
> ZDI-CAN-17433 (Trend Micro)
> 
> A crafted SPA challenge from the server can cause the client authenticator
> to read OOB; the data is then returned to the server.
> 
> Fix: validate the offset contained in the challenge, to avoid reading
> past the end of the challenge data structure.
> 
> Vulnerable since at least 4.50, probably longer.
> 
> Comment 2 Heiko Schlittermann 2023-09-29 16:01:58 UTC
> 
> should be fixed in 04107e98d58efb69f7e2d7b81176e5374c7098a3

On Fri, Sep 29, 2023 at 06:06:11PM +0200, Heiko Schlittermann wrote:
> the ZDI assigned multiple CVEs to the Exim-MTA and published them
> recently:
> 
> CVE            Link                                                      Exim-Bug
> --------------+---------------------------------------------------------+-----
> CVE-2023-42114 https://www.zerodayinitiative.com/advisories/ZDI-23-1468/  3001 fixed
> CVE-2023-42115 https://www.zerodayinitiative.com/advisories/ZDI-23-1469/  2999 fixed
> CVE-2023-42116 https://www.zerodayinitiative.com/advisories/ZDI-23-1470/  3000 fixed
> CVE-2023-42117 https://www.zerodayinitiative.com/advisories/ZDI-23-1471/
> CVE-2023-42118 https://www.zerodayinitiative.com/advisories/ZDI-23-1472/
> CVE-2023-42119 https://www.zerodayinitiative.com/advisories/ZDI-23-1473/ 
> 
> The ZDI contacted us in June 2022. We asked about details but didn't get
> answers we were able to work with.
> 
> Next contact with ZDI was in May 2023. Right after this contact we
> created project bug tracker for 3 of the 6 issues. 2 high scored of them
> are fixed (OOB access). A minor scored (info leak) is fixed too.
> 
> Fixes are available in a protected repository and are ready to be
> applied by the distribution maintainers.

Are distros allowed to make their updates public as soon as they can
(presumably after requesting access to the protected repository)?

I suggest that you set a specific date/time e.g. in 2 days from now when
both the Exim project will make the repo and the fixed bug entries (2999
and 3000) public _and_ distros will release updates.

> The remaining issues are debatable or miss information we need to fix
> them.
> 
> We're more than happy to provide fixes for all issues as soon as we
> receive detailed information.

Are you actively requesting such information from ZDI now?

This looks like sloppy handling of these issues so far by both ZDI and
Exim - neither team pinging the other for 10 months, then Exim taking 4
months to fix even the 2 high-scored issues it did have sufficient info
on.  What are you doing to improve the handling from this point on?

Thanks again,

Alexander

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1468-ZDI-CAN-17433-CVE-2023-42114.txt"

   September 27th, 2023

(0Day) Exim NTLM Challenge Out-Of-Bounds Read Information Disclosure
Vulnerability

  ZDI-23-1468
  ZDI-CAN-17433

   CVE ID              CVE-2023-42114
   CVSS SCORE          3.7, (AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   Exim
                       This vulnerability allows remote attackers to disclose
                       sensitive information on affected installations of
                       Exim. Authentication is not required to exploit this
                       vulnerability.

   VULNERABILITY       The specific flaw exists within the handling of NTLM
   DETAILS             challenge requests. The issue results from the lack of
                       proper validation of user-supplied data, which can
                       result in a read past the end of an allocated data
                       structure. An attacker can leverage this vulnerability
                       to disclose information in the context of the service
                       account.
                       06/06/22 - ZDI requested a PSIRT contact.

                       06/14/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.
   ADDITIONAL DETAILS
                       05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-14 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42114
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1469-ZDI-CAN-17434-CVE-2023-42115.txt"

   September 27th, 2023

(0Day) Exim AUTH Out-Of-Bounds Write Remote Code Execution Vulnerability

  ZDI-23-1469
  ZDI-CAN-17434

   CVE ID              CVE-2023-42115
   CVSS SCORE          9.8, (AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   Exim
                       This vulnerability allows remote attackers to execute
                       arbitrary code on affected installations of Exim.
                       Authentication is not required to exploit this
                       vulnerability.

   VULNERABILITY       The specific flaw exists within the smtp service,
   DETAILS             which listens on TCP port 25 by default. The issue
                       results from the lack of proper validation of
                       user-supplied data, which can result in a write past
                       the end of a buffer. An attacker can leverage this
                       vulnerability to execute code in the context of the
                       service account.
                       06/06/22 - ZDI requested a PSIRT contact.

                       06/14/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.
   ADDITIONAL DETAILS
                       05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-14 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42115
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1470-ZDI-CAN-17515-CVE-2023-42116.txt"

   September 27th, 2023

(0Day) Exim SMTP Challenge Stack-based Buffer Overflow Remote Code Execution
Vulnerability

  ZDI-23-1470
  ZDI-CAN-17515

   CVE ID              CVE-2023-42116
   CVSS SCORE          8.1, (AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   Exim
                       This vulnerability allows remote attackers to execute
                       arbitrary code on affected installations of Exim.
                       Authentication is not required to exploit this
                       vulnerability.
   VULNERABILITY
   DETAILS             The specific flaw exists within the handling of NTLM
                       challenge requests. The issue results from the lack of
                       proper validation of the length of user-supplied data
                       prior to copying it to a fixed-length stack-based
                       buffer. An attacker can leverage this vulnerability to
                       execute code in the context of the service account.
                       06/06/22 - ZDI requested a PSIRT contact.

                       06/14/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.
   ADDITIONAL DETAILS
                       05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-14 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42116
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1471-ZDI-CAN-17554-CVE-2023-42117.txt"

   September 27th, 2023

(0Day) Exim Improper Neutralization of Special Elements Remote Code Execution
Vulnerability

  ZDI-23-1471
  ZDI-CAN-17554

   CVE ID              CVE-2023-42117
   CVSS SCORE          8.1, (AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   Exim
                       This vulnerability allows remote attackers to execute
                       arbitrary code on affected installations of Exim.
                       Authentication is not required to exploit this
                       vulnerability.

   VULNERABILITY       The specific flaw exists within the smtp service,
   DETAILS             which listens on TCP port 25 by default. The issue
                       results from the lack of proper validation of
                       user-supplied data, which can result in a memory
                       corruption condition. An attacker can leverage this
                       vulnerability to execute code in the context of the
                       current process.
                       06/06/22 - ZDI requested a PSIRT contact.

                       06/14/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.
   ADDITIONAL DETAILS
                       05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-15 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42117
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1472-ZDI-CAN-17578-CVE-2023-42118.txt"

   September 27th, 2023

(0Day) Exim libspf2 Integer Underflow Remote Code Execution Vulnerability

  ZDI-23-1472
  ZDI-CAN-17578

   CVE ID              CVE-2023-42118
   CVSS SCORE          7.5, (AV:A/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   libspf2
                       This vulnerability allows network-adjacent attackers
                       to execute arbitrary code on affected installations of
                       Exim libspf2. Authentication is not required to
                       exploit this vulnerability.
   VULNERABILITY
   DETAILS             The specific flaw exists within the parsing of SPF
                       macros. When parsing SPF macros, the process does not
                       properly validate user-supplied data, which can result
                       in an integer underflow before writing to memory. An
                       attacker can leverage this vulnerability to execute
                       code in the context of the service account.
                       06/06/22 - ZDI requested a PSIRT contact.

                       06/14/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.
   ADDITIONAL DETAILS
                       05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-17 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42118
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:A/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ZDI-23-1473-ZDI-CAN-17643-CVE-2023-42119.txt"

   September 27th, 2023

(0Day) Exim dnsdb Out-Of-Bounds Read Information Disclosure Vulnerability

  ZDI-23-1473
  ZDI-CAN-17643

   CVE ID              CVE-2023-42119
   CVSS SCORE          3.1, (AV:A/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)
   AFFECTED VENDORS    Exim
   AFFECTED PRODUCTS   Exim
                       This vulnerability allows network-adjacent attackers
                       to disclose sensitive information on affected
                       installations of Exim. Authentication is not required
                       to exploit this vulnerability.

   VULNERABILITY       The specific flaw exists within the smtp service,
   DETAILS             which listens on TCP port 25 by default. The issue
                       results from the lack of proper validation of
                       user-supplied data, which can result in a read past
                       the end of an allocated buffer. An attacker can
                       leverage this in conjunction with other
                       vulnerabilities to execute arbitrary code in the
                       context of the service account.
                       06/22/22 - ZDI reported the vulnerability to the
                       vendor.

                       04/25/23 - ZDI asked for an update.

                       04/25/23 - The vendor asked us to re-send the reports.

   ADDITIONAL DETAILS  05/10/23 - ZDI sent the vulnerability to the vendor.

                       09/25/23 - ZDI asked for an update and informed the
                       vendor that we intend to publish the case as a
                       zero-day advisory on 09/27/23.

                       -- Mitigation: Given the nature of the vulnerability,
                       the only salient mitigation strategy is to restrict
                       interaction with the application.
                         * 2022-06-22 - Vulnerability reported to vendor
   DISCLOSURE TIMELINE   * 2023-09-27 - Coordinated public release of
                           advisory
   CREDIT              Anonymous

References

   Visible links
   . https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-42119
   . http://nvd.nist.gov/cvss.cfm?calculator&version=3.0&vector=(AV:A/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)
   . https://exim.org/
   . https://www.zerodayinitiative.com/advisories/
   . mailto:zdi@trendmicro.com
   . https://twitter.com/thezdi
   . https://infosec.exchange/@thezdi

--OgqxwSJOaUobr8KG--
