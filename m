X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3684" "Saturday" "21" "March" "2015" "15:08:46" "+0100" "Pere Orga" "pere@orga.cat" "<CAMYtjApWZpJS1D0wB=ju1u=XbK==ryXpv+xybs9gy+hsGhGcRg@mail.gmail.com>" "81" "[oss-security] Re: CVE requests for Drupal Core - Moderately Critical - Multiple Vulnerabilities - SA-CORE-2015-001" nil nil nil "3" "2015032114:08:46" "[oss-security] Re: CVE requests for Drupal Core - Moderately Critical - Multiple Vulnerabilities - SA-CORE-2015-001" (number mark "        pere@orga.ca Mar 21   81/3684  " thread-indent "\"[oss-security] Re: CVE requests for Drupal Core - Moderately Critical - Multiple Vulnerabilities - SA-CORE-2015-001\"\n") "<20150320004509.C29C252E033@smtpvbsrv1.mitre.org>" ("<CAMYtjAqttknkzUKC50cK1gGXQr+M=Gnjd2Sv3au56F9QDbN_Rw@mail.gmail.com>" "<20150320004509.C29C252E033@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1411 invoked by uid 550); 21 Mar 2015 14:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1383 invoked from network); 21 Mar 2015 14:09:21 -0000
X-Received: by 10.180.74.230 with SMTP id x6mr4691724wiv.58.1426946947008;
 Sat, 21 Mar 2015 07:09:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150320004509.C29C252E033@smtpvbsrv1.mitre.org>
References: <CAMYtjAqttknkzUKC50cK1gGXQr+M=Gnjd2Sv3au56F9QDbN_Rw@mail.gmail.com>
 <20150320004509.C29C252E033@smtpvbsrv1.mitre.org>
Message-ID: <CAMYtjApWZpJS1D0wB=ju1u=XbK==ryXpv+xybs9gy+hsGhGcRg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3111.hostgator.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - orga.cat
X-BWhitelist: no
X-Source-IP: 74.125.82.43
X-Exim-ID: 1YZK5M-0000kh-Qq
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (mail-wg0-f43.google.com) [74.125.82.43]:36765
X-Source-Auth: pere@orga.cat
X-Email-Count: 2
X-Source-Cap: bmV0b2w7bmV0b2w7Z2F0b3IzMTExLmhvc3RnYXRvci5jb20=
Cc: oss-security@lists.openwall.com
Date: Sat, 21 Mar 2015 15:08:46 +0100
From: Pere Orga <pere@orga.cat>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests for Drupal Core - Moderately Critical - Multiple
 Vulnerabilities - SA-CORE-2015-001
To: cve-assign@mitre.org

On Fri, Mar 20, 2015 at 1:45 AM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>> Access bypass (Password reset URLs - Drupal 6 and 7)
>> Password reset URLs can be forged under certain circumstances,
>> allowing an attacker to gain access to another user's account without
>> knowing the account's password.
>
> Based on the
> http://cgit.drupalcode.org/drupal/commit/?id=8e54eca05a65c6231b02510e1917af0c9191e549
> changes, we think that there is a single underlying issue in which the
> attack vector seems to be essentially expressed by:
>
>   $attack_reset_url = str_replace("user/reset/{$user1->id()}",
>                                   "user/reset/{$user2->id()}", $reset_url);
>
> regardless of the Drupal version -- i.e., 6.x, 7.x, or an unreleased
> 8.x version. (For purposes of determining the correct number of CVE
> IDs, it is probably not relevant that 6.x and 7.x have different ways
> in which problematic accounts may have been created.)
>
> Use CVE-2015-2559.
>

Thanks!

>
>> Open redirect (Several vectors including the "destination" URL
>> parameter - Drupal 6 and 7)
>> Under certain circumstances, malicious users can use the destination
>> URL parameter to construct a URL that will trick users into being
>> redirected to a 3rd party website, thereby exposing the users to
>> potential social engineering attacks.
>
> This one might be more complicated for CVE assignment. If a single
> change to a single piece of code addressed all of these open-redirect
> issues, then a single CVE ID may be possible. However, it appears that
> the situation might be a series of related problems that were found in
> different places (and possibly different versions) by different
> people. https://www.drupal.org/SA-CORE-2015-001 lists two external
> discoverers, as well as discoverers from the Drupal Security Team. As
> an example, suppose that there were three independent reports, and
> each report included three unique affected parameters: one of which
> existed only in 6.x, one of which existed only in 7.x, and one of
> which existed in both 6.x and 7.x. That would have 9 CVE IDs.

I see.

There is a vulnerabilty involving a unique query parameter called
'destination' (i.e.
http://example.org/?destination=http://example.com).
In Drupal, this parameter may be accessed via
$_REQUEST['destination'], $_GET['destination'] or
drupal_get_destination() function. That issue affected differently to
distinct Drupal versions; for example all confirmation forms in Drupal
7 could be redirected to an external page via the 'destination'
parameter directly, but in Drupal 6 only if the code that builds the
confirmation form uses the parameter (and there are only a few).
The destination parameter was being trusted in multiple places and the
fix consisted in filtering it early in Drupal's bootstrap (see
https://www.drupal.org/node/2455007). This helps preventing open
redirections in custom code and contributed modules too. That issue
was reported multiple times by different people.

The Drupal 6 fix also included filtering an additional parameter but
there was no evidence that some harm could be done with it (I'm not
asking a CVE for this)

Additionally, it was detected that Drupal 7 url_is_external() and
Drupal 6 menu_path_is_external() API functions could return FALSE for
some external URLs. I think these could deserve additional CVE IDs.

These issues were present in Drupal 8 too - the fix has already been
committed: http://cgit.drupalcode.org/drupal/commit/?id=d2304f8 - be
we currently don't request CVEs for unstable releases of Drupal.

Many thanks

Regards
Pere Orga on behalf of the Drupal Security Team
