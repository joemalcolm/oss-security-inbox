X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Tuesday" "30" "June" "2015" "09:03:58" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20150630060358.GA24238@gremlin.ru>" "28" "Re: [oss-security] Question about world readable config files and commented warnings" nil nil nil "6" "2015063006:03:58" "[oss-security] Question about world readable config files and commented warnings" (number mark "        gremlin@grem Jun 30   28/1124  " thread-indent "\"Re: [oss-security] Question about world readable config files and commented warnings\"\n") "<559224EC.3080008@redhat.com>" ("<559224EC.3080008@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1619 invoked by uid 550); 30 Jun 2015 06:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1597 invoked from network); 30 Jun 2015 06:04:11 -0000
Message-ID: <20150630060358.GA24238@gremlin.ru>
References: <559224EC.3080008@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <559224EC.3080008@redhat.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Tue, 30 Jun 2015 09:03:58 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Question about world readable config files and commented warnings
To: oss-security@lists.openwall.com

On 2015-06-29 23:11:08 -0600, Kurt Seifried wrote:

 > So, if a config file is world readable by default, but the section
 > where you might put a password says:
 > # Database URI for the database that stores the package
 > # information. If it contains a password, make sure to
 > # adjust the permissions of the config
 > Is that good enough, e.g. no CVE, or do we actually need to have
 > proper permissions?

For me, that means: the developers did their best, everything else
is up to package maintainers.

And, obviously, when the administrators will fill in the connection
parameters, they most likely will see this warning.

 > I'm thinking we need proper permissions and not a note (especially
 > with administration tools/etc that may parse/modify the file
 > but not change the perms).

My experience says that developers' attempts to perform chmod (or,
even worse, chown) during `make install` are just ugly (at least
they never check whether DESTDIR is empty).


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin <gremlin נעי gremlin פ‏כ ru>
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8 @ hkp://keys.gnupg.net
