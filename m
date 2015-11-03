X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["487" "Tuesday" "3" "November" "2015" "11:57:42" "+0100" "Jean-Baptiste Kempf" "jb@videolan.org" "<56389326.6000609@videolan.org>" "13" "Re: [oss-security] CVE request: BD-J implementation in libbluray" nil nil nil "11" "2015110310:57:42" "[oss-security] CVE request: BD-J implementation in libbluray" (number mark "        jb@videolan. Nov  3   13/487   " thread-indent "\"Re: [oss-security] CVE request: BD-J implementation in libbluray\"\n") "<56124122.10305@redhat.com>" ("<54EAEB47.7070106@redhat.com>" "<5603C2A8.3060202@redhat.com>" "<561155A0.7020400@videolan.org>" "<56124122.10305@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28099 invoked by uid 550); 3 Nov 2015 10:57:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28081 invoked from network); 3 Nov 2015 10:57:54 -0000
References: <54EAEB47.7070106@redhat.com> <5603C2A8.3060202@redhat.com>
 <561155A0.7020400@videolan.org> <56124122.10305@redhat.com>
Message-ID: <56389326.6000609@videolan.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.3.0
MIME-Version: 1.0
In-Reply-To: <56124122.10305@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 3 Nov 2015 11:57:42 +0100
From: Jean-Baptiste Kempf <jb@videolan.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: BD-J implementation in libbluray
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com,
 Assign a CVE Identifier <cve-assign@mitre.org>

On 05/10/2015 11:21, Florian Weimer wrote:
> I don't know.  There is a BDJSecurityManager, but I'm not convinced it's
> sufficiently strict.  For instance, the checkPermission(Permission)
> method does not call checkWrite(String) for FilePermission objects at
> all.  This does not look right, but I'm not familiar with the finer
> points of Java sandboxing.

Confirmed as fixed in 0.9.1.

-- 
Jean-Baptiste Kempf
http://www.jbkempf.com/ - +33 672 704 734
Sent from my Electronic Device
