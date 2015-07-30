X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1096" "Thursday" "30" "July" "2015" "09:33:56" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55BA43E4.7040506@redhat.com>" "26" "[oss-security] A new class of security vulns?" nil nil nil "7" "2015073015:33:56" "[oss-security] A new class of security vulns?" (number mark "        kseifried@re Jul 30   26/1096  " thread-indent "\"[oss-security] A new class of security vulns?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32266 invoked by uid 550); 30 Jul 2015 15:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32241 invoked from network); 30 Jul 2015 15:34:10 -0000
Message-ID: <55BA43E4.7040506@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Thu, 30 Jul 2015 09:33:56 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] A new class of security vulns?
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

So in past we have had vulns around injection of terminal control
characters into log files:

http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape

However now I'm seeing flaws around printing/display of user data, e.g.
systems where a user can set their own name, but fills it with backspace
characters, so when an admin looks at the text record it is
mangled/shows something the attacker wants them to see and not the
"True" data.

An example of this is:

https://fedorahosted.org/freeipa/ticket/5153

assuming there are no actual terminal escape sequences allowed, but just
backspace characters/etc, is this worthy of a CVE? Right now it
definitely allows manipulation of displayed data, and if an admin cuts
and pastes it would potentially be just the modified data, so I'm
thinking there is an integrity impact (not a very big one mind you), but
it's quite limited (at least as I understand the issue right now).

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
