X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2072" "Tuesday" "21" "January" "2020" "23:49:31" "+0100" "Maurits van Rees" "maurits@vanrees.org" "<5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>" "50" "[oss-security] Plone security hotfix 20200121" nil nil nil "1" "2020012122:49:31" "[oss-security] Plone security hotfix 20200121" (number mark "U       maurits@vanr Jan 21   50/2072  " thread-indent "\"[oss-security] Plone security hotfix 20200121\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Plone security hotfix 20200121" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14248 invoked by uid 550); 22 Jan 2020 05:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21628 invoked from network); 21 Jan 2020 22:49:43 -0000
X-Virus-Scanned: Debian amavisd-new at mail
To: oss-security@lists.openwall.com
From: Maurits van Rees <maurits@vanrees.org>
Message-ID: <5c47d85c-2648-d0ed-714f-f4e0b2e497ed@vanrees.org>
Date: Tue, 21 Jan 2020 23:49:31 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: [oss-security] Plone security hotfix 20200121

A Plone security hotfix was released today.

CVE numbers: not yet issued. We will request them shortly from mitre.org.

Versions Affected: All supported Plone versions (4.3.15 and any earlier
4.x version, 5.2.1 and any earlier 5.x version). Previous versions could
be affected but have not been tested.

Versions Not Affected: None.

Nature of vulnerability:

The patch addresses several security issues:

- Privilege escalation when plone.restapi is installed. Reported and
fixed by Lukas Graf and Niklaus Johner.
- An open redirection on the login form and possibly other places where
redirects are done.
- The isURLInPortal check that is done to avoid linking to an external
site could be tricked into accepting malicious links. Reported by
Damiano Esposito.
- Password strength checks were not always checked. Reported by Ben Kummer.
- You might be able to PUT (overwrite) some content without needing
write permission.
   This seems hard to do in practice. This fix is only needed when you
use plone.app.contenttypes. Reported and fixed by Alessandro Pisa.
- SQL quoting in DTML or in connection objects was insufficient, leading
to possible SQL injections. This is a problem in Zope. If you use Zope
without Plone, this hotfix should work for you too. Reported and fixed
by Michael Brunnbauer and Michael Howitz.
- Cross Site Scripting (XSS) in the title field on plone 5.0 and higher.
Reported by Marcos Valle.

Version support: The hotfix is officially supported by the Plone
security team on the following versions of Plone in accordance with the
Plone version support policy: 4.3.19, and 5.0.10, 5.1.6, 5.2.1. It was
also tested on Plone 4.2.7. It is recommended also for Plone 4.0 and
4.1, but this has not been tested.

The fixes included here will be incorporated into subsequent releases of
Plone, so Plone 4.3.20, 5.1.7, 5.2.2 and greater should not require this
hotfix.

The above is a copy from the release notes.
Full details: https://plone.org/security/hotfix/20200121

-- 
Maurits van Rees https://maurits.vanrees.org/
Member of Plone Security Team

