X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Monday" "21" "November" "2016" "22:28:16" "+0200" "Henri Salo" "henri@nerv.fi" "<20161121202816.GA26926@tunkki>" "14" "Re: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" nil nil nil "11" "2016112120:28:16" "[oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" (number mark "U       henri@nerv.f Nov 21   14/645   " thread-indent "\"Re: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins\"\n") "<5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>" ("<d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>" "<5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31845 invoked by uid 550); 21 Nov 2016 20:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31826 invoked from network); 21 Nov 2016 20:28:30 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Mon, 21 Nov 2016 22:28:16 +0200
From: Henri Salo <henri@nerv.fi>
To: Scott Gravelle <scottg@imprezzio.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20161121202816.GA26926@tunkki>
References: <d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>
 <5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Multiple XSS vulnerabilities affecting five
 WordPress Plugins

On Mon, Nov 21, 2016 at 04:56:13PM +0000, Scott Gravelle wrote:
> Any plans to get CVEs assigned to these vulnerabilities you guys found?  Our
> vulnerability scanner does not have a feature to filter off OVE

Maybe you should start handling OVE and other IDs too. Two reasons:

1) MITRE is not always assigning CVEs for WordPress plugin and theme
vulnerabilities for unknown reason. It's not like the CVEs are running out
2) MITRE is not assigning CVEs to all software that has previously received a
CVE, silently dropping the software to out-of-scope area. Example case:
http://www.openwall.com/lists/oss-security/2016/11/10/6

-- 
Henri Salo
