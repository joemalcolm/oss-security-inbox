X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1639" "Thursday" "23" "November" "2017" "10:53:13" "+0100" "Raphael Hertzog" "hertzog@debian.org" "<20171123095313.ecfh63vqfwwmbzjp@home.ouaza.com>" "48" "Re: [oss-security] exiv2: multiple memory safety issues" nil nil nil "11" "2017112309:53:13" "[oss-security] exiv2: multiple memory safety issues" (number mark "U       hertzog@debi Nov 23   48/1639  " thread-indent "\"Re: [oss-security] exiv2: multiple memory safety issues\"\n") "<20170630103434.7d6093c9@pc1>" ("<20170630103434.7d6093c9@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3405 invoked by uid 550); 23 Nov 2017 10:17:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20394 invoked from network); 23 Nov 2017 09:53:26 -0000
Date: Thu, 23 Nov 2017 10:53:13 +0100
From: Raphael Hertzog <hertzog@debian.org>
To: Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <20171123095313.ecfh63vqfwwmbzjp@home.ouaza.com>
References: <20170630103434.7d6093c9@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170630103434.7d6093c9@pc1>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Subject: Re: [oss-security] exiv2: multiple memory safety issues

Hello Hanno,

On Fri, 30 Jun 2017, Hanno Böck wrote:
> I have not reported thoses issues upstream. When I previously tried to
> report bugs in exiv2 found via fuzzing the upstream author made it
> clear to me that he has little interest in fixing those issues and
> doesn't consider his software suitable to parse defect files (which
> basically means it's unsuitable for untrusted input). The discussion
> can be read here [1]. (the page is sometimes not available, searching
> for it in the google cache usually works though)
> 
> exiv2 is to my knowledge used by the major Linux Desktops GNOME and
> KDE. I'll also inform their security teams. I leave it up to Linux
> distros how to handle this, but it certainly is problematic that a
> crucial parser used by major desktop applications is not interested in
> fixing potential security issues.
> 
> [1] http://dev.exiv2.org/issues/1248

FWIW, Robin Mills is moving away from exiv2, it is being handed over to
new developers and they have been rather responsive to the various
security issues that have been reported in the last months.

Search for CVE in https://github.com/Exiv2/exiv2/issues

So please file bugs on github, thank you.

I just add the CVE assigned through the Distributed Weakness Filing
Project.

> Heap overflow (write) in tiff parser

CVE-2017-1000127
	
> Heap out of bounds read in jp2 / JPEG2000 parser

CVE-2017-1000128

> Stack out of bounds read in webp parser

CVE-2017-1000126

Cheers,
-- 
Raphaël Hertzog ◈ Debian Developer

Support Debian LTS: https://www.freexian.com/services/debian-lts.html
Learn to master Debian: https://debian-handbook.info/get/
