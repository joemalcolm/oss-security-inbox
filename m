X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1722" "Friday" "24" "January" "2020" "16:21:00" "+0100" "Maurits van Rees" "maurits@vanrees.org" "<6a5b1823-285d-3e6c-0d69-84ebb35e3297@vanrees.org>" "42" "Re: [oss-security] Plone security hotfix 20200121" nil nil nil "1" "2020012415:21:00" "[oss-security] Plone security hotfix 20200121" (number mark "U       maurits@vanr Jan 24   42/1722  " thread-indent "\"Re: [oss-security] Plone security hotfix 20200121\"\n") "<5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>" ("<5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>") nil nil nil nil nil nil nil "Re: [oss-security] Plone security hotfix 20200121" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15604 invoked by uid 550); 24 Jan 2020 16:46:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18242 invoked from network); 24 Jan 2020 15:21:12 -0000
X-Virus-Scanned: Debian amavisd-new at mail
To: oss-security@lists.openwall.com
References: <5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>
From: Maurits van Rees <maurits@vanrees.org>
Message-ID: <6a5b1823-285d-3e6c-0d69-84ebb35e3297@vanrees.org>
Date: Fri, 24 Jan 2020 16:21:00 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [oss-security] Plone security hotfix 20200121

We have received CVE numbers from mitre.org. Thanks. See inline below.

On 21/01/2020 23:49, Maurits van Rees wrote:
> A Plone security hotfix was released today.
>
> CVE numbers: not yet issued. We will request them shortly from mitre.org.
>
> Versions Affected: All supported Plone versions (4.3.15 and any earlier
> 4.x version, 5.2.1 and any earlier 5.x version). Previous versions could
> be affected but have not been tested.
>
> Versions Not Affected: None.
>
> Nature of vulnerability:
>
> The patch addresses several security issues:
>
> - Privilege escalation when plone.restapi is installed. Reported and
> fixed by Lukas Graf and Niklaus Johner.
CVE-2020-7938
> - An open redirection on the login form and possibly other places where
> redirects are done. The isURLInPortal check that is done to avoid linking to an externalsite could be tricked into accepting malicious links. Reported by Damiano Esposito.
CVE-2020-7936
> - Password strength checks were not always checked. Reported by Ben Kummer.
CVE-2020-7940
> - You might be able to PUT (overwrite) some content without needing
> write permission.
>    This seems hard to do in practice. This fix is only needed when you
> use plone.app.contenttypes. Reported and fixed by Alessandro Pisa.
CVE-2020-7941
> - SQL quoting in DTML or in connection objects was insufficient, leading
> to possible SQL injections. This is a problem in Zope. If you use Zope
> without Plone, this hotfix should work for you too. Reported and fixed
> by Michael Brunnbauer and Michael Howitz.
CVE-2020-7939
> - Cross Site Scripting (XSS) in the title field on plone 5.0 and higher.
> Reported by Marcos Valle.
CVE-2020-7937

-- 
Maurits van Rees https://maurits.vanrees.org/

