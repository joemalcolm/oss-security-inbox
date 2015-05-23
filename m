X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1232" "Saturday" "23" "May" "2015" "19:40:12" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150523194011.GY2731@yuggoth.org>" "33" "Re: [oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" nil nil nil "5" "2015052319:40:12" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" (number mark "        fungi@yuggot May 23   33/1232  " thread-indent "\"Re: [oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests\"\n") "<20150411201731.GX2456@yuggoth.org>" ("<20150411201731.GX2456@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28569 invoked by uid 550); 23 May 2015 19:40:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28542 invoked from network); 23 May 2015 19:40:26 -0000
Message-ID: <20150523194011.GY2731@yuggoth.org>
References: <20150411201731.GX2456@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150411201731.GX2456@yuggoth.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com, cve-assign@mitre.org
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Cc: CVE Request <cve-assign@mitre.org>
Date: Sat, 23 May 2015 19:40:12 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request for read-only directory traversal
 in Etherpad frontend tests
To: OSS Security <oss-security@lists.openwall.com>

On 2015-04-11 20:17:31 +0000 (+0000), Jeremy Stanley wrote:
> A vulnerability was discovered in Etherpad (see below). In order to
> ensure full traceability, we need a CVE number assigned that we can
> attach to further notifications. This issue is already public.
> 
> Title: Read-only directory traversal in Etherpad frontend tests
> Reporter: Tom Hunkapiller
> Versions: 1.2.0 through 1.5.3
> 
> Description:
> Tom Hunkapiller reported a vulnerability in the frontend tests of
> previous Etherpad releases, which are enabled by default. Parent
> directory references were not correctly sanitized in frontend test
> URLs of HTTP API calls, allowing an attacker to remotely read
> arbitrary files on the server's filesystem with the privileges of
> the account running the service.
> 
> Notes:
> This bug was introduced in commit ba4ebbb which was initially
> included in the 1.2.0 release, and is fixed in commit 5409eb3 which
> appears in the 1.5.4 release.
> 
> References:
> https://github.com/ether/etherpad-lite/commit/5409eb3
> 
> -- 
> Jeremy Stanley

I can't find where MITRE ever replied on the request above. Was a
CVE assigned for this and I just missed it, or is the request still
pending followup?
-- 
Jeremy Stanley
