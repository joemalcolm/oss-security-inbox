X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["796" "Friday" "16" "October" "2015" "16:01:20" "+0100" "Stuart Henderson" "sthen@openbsd.org" "<20151016150120.GD25118@symphytum.spacehopper.org>" "21" "Re: [oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)" nil nil nil "10" "2015101615:01:20" "[oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)" (number mark "        sthen@openbs Oct 16   21/796   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - LibreSSL (CVE-2015-5333 and CVE-2015-5334)\"\n") "<5155028.TVvpLGB06T@willoughby>" ("<20151016005416.GB12993@localhost.localdomain>" "<5155028.TVvpLGB06T@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26432 invoked by uid 550); 16 Oct 2015 15:01:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26406 invoked from network); 16 Oct 2015 15:01:52 -0000
X-Virus-Scanned: amavisd-new at spacehopper.org
Message-ID: <20151016150120.GD25118@symphytum.spacehopper.org>
References: <20151016005416.GB12993@localhost.localdomain>
 <5155028.TVvpLGB06T@willoughby>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5155028.TVvpLGB06T@willoughby>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Qualys Security Advisory <qsa@qualys.com>
Date: Fri, 16 Oct 2015 16:01:20 +0100
From: Stuart Henderson <sthen@openbsd.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - LibreSSL
 (CVE-2015-5333 and CVE-2015-5334)
To: oss-security@lists.openwall.com

On 2015/10/16 12:06, Agostino Sarubbo wrote:
> On Thursday 15 October 2015 17:54:16 Qualys Security Advisory wrote:
> > We would like to thank the LibreSSL team for their great work and
> > their incredibly quick response,
> 
> Are these issues fixed upstream?
> If yes, is there a release which fixes the issues?

Yes, these releases were made:

http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-2.0.6.tar.gz
http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-2.1.8.tar.gz
http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-2.2.4.tar.gz

> If there isn't a release, do we have the link of the commit/diff?

The fixes are spread over several commits, so the combined diff is
probably the easiest place to look:

http://ftp.openbsd.org/pub/OpenBSD/patches/5.8/common/007_obj2txt.patch.sig

