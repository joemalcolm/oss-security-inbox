Received: (qmail 17479 invoked by uid 550); 16 Mar 2026 02:27:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15682 invoked from network); 16 Mar 2026 02:27:46 -0000
Date: Mon, 16 Mar 2026 03:27:32 +0100
From: Solar Designer <solar@openwall.com>
To: Michael Daum <foswiki@michaeldaumconsulting.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20260316022732.GA13154@openwall.com>
References: <1952112.tdWV9SEqCh@intra>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1952112.tdWV9SEqCh@intra>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] =?utf-8?B?Rm9zd2nCrWtp?=
	=?utf-8?Q?_2=2E1=2E11_is_re=C2=ADleased=2C?= fixes CVE-2026-2861

Hello Michael,

Thank you for bringing this to oss-security.

On Sun, Mar 15, 2026 at 03:06:24PM +0100, Michael Daum wrote:
> Foswi­ki 2.1.11 is avail­able to down­loaded now. This re­lease came ear­li­er than ex­pect­ed due to the se­vere se­cu­ri­ty is­sues found in pre­vi­ous ver­sions, as de­tailed in CVE-2026-2861.
> Read more at https://foswiki.org/Blog/Foswiki2111IsReleased and https://foswiki.org/System/ReleaseNotes02x01#Foswiki_Release_2.1.11_Details
> 
> Donwload from https://foswiki.org/Download/FoswikiRelease02x01x11

We require actual detail in here, not just "read more at", and the above
web pages don't tell much about the CVE.  There's some actual detail in:

https://foswiki.org/Support/SecurityAlertCVE20262861

which I'll partially quote below:

> Security Alert: Information disclosure vulnerability in viewfile, oops, preview and changes endpoints
> 15 March 2026 - 14:30 | Version 4 | Michael Daum
> 
> An anonymous user can craft an HTTP url to oops, preview, changes and viewfile endpoint to disclose access protected information.

> Attack Vectors
> 
> An anonymous user can craft an HTTP url to the oops, changes or preview endpoint and disclose protected information. For example https://mysite.com/bin/oops/Web/SecretTopicWithFormData?template=view will disclose any data stored a the given page. Given a topic without view rights an unauthorized user can test for the existence of attachments using viewfile. The endpoint's order of checking acccess rights and checking file existence is performend in the wrong order.
> 
> Impact
> 
> Information disclosure of private data.
> 
> Details
> 
> The changes script does not check access view rights on the topic it was loaded on. This is a security problem for any template loading additional data at this point. This endpoint has been deprecated for a long time and does not serve any particular purpose anymore.
> 
> The viewfile's order of checking acccess rights and checking file existence is performend in the wrong order. It foremost needs to check access and only then do anything else.
> 
> The oops endpoint accepts an arbitrary template url parameter such as template=view and thus functions as a normal view endpoint, however without performing any access control checks. Similarly preview can be exploited.
> 
> Countermeasures
> 
> To minimize the attack surface endpoints changes, preview and search are removed from the switch board configuration. See hotfix in Item15600: changes and preview scripts do not check view access rights, Item15601: viewfile can be used to test for existing files even without view rights on the topic and Item15602: oops script can be used to display data even without view access rights.
> 
> Upgrade to the latest patched production Foswiki Release 2.1.11 is highly encourage.
> 
> Authors and Credits
> 
> Found by: Jan Seebens (Deutsche Telekom Technik GmbH) and Michael Daum Consulting
> 
> Action Plan with Timeline
> 
>     2026-01-12 - Disclosure of issue to foswiki security mailing list
>     2026-01-12 - Developer verifies issue
>     2026-01-12 - Hotfix foswiki.org website
>     2026-01-17 - Developer fixes code
>     2026-02-20 - Security team creates advisory with hotfix
> 
>     2026-02-?? - Release Manager builds patch release
>     2026-02-?? - Send alert to foswiki-announce and foswiki-discuss mailing lists
>     2026-02-?? - Publish advisory in Support web and update all related topics
>     2026-02-?? - Reference to public advisory on Download page and Known Issues
>     2026-02-?? - Issue a public security advisory (vuln@secunia.com, cert@cert.org, bugs@securitytracker.com bugtraq@securityfocus.com full-disclosure@lists.grok.org.uk), https://openwall.com/lists/oss-security (name)

Alexander
