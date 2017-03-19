X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1011" "Saturday" "18" "March" "2017" "18:42:51" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<57017841-788f-5012-bc78-b70328d349a5@oracle.com>" "27" "Re: [oss-security] CVE-2016-3631 - libtiff 4.0.6 illegel read" nil nil nil "3" "2017031901:42:51" "[oss-security] CVE-2016-3631 - libtiff 4.0.6 illegel read" (number mark "U       alan.coopers Mar 18   27/1011  " thread-indent "\"Re: [oss-security] CVE-2016-3631 - libtiff 4.0.6 illegel read\"\n") "<5EDB84F4B23F5B4DB6500A89258280E0B97359@EX02.corp.qihoo.net>" ("<5EDB84F4B23F5B4DB6500A89258280E0B97359@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15702 invoked by uid 550); 19 Mar 2017 01:43:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15684 invoked from network); 19 Mar 2017 01:43:06 -0000
To: oss-security@lists.openwall.com
References: <5EDB84F4B23F5B4DB6500A89258280E0B97359@EX02.corp.qihoo.net>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <57017841-788f-5012-bc78-b70328d349a5@oracle.com>
Date: Sat, 18 Mar 2017 18:42:51 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <5EDB84F4B23F5B4DB6500A89258280E0B97359@EX02.corp.qihoo.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Subject: Re: [oss-security] CVE-2016-3631 - libtiff 4.0.6 illegel read

On 04/ 8/16 12:12 AM, 张开翔 wrote:
> Details
> =======
>
> Product: libtiff
> Affected Versions: <= 4.0.6
> Vulnerability Type: Illegel read
> Vendor URL: http://www.libtiff.org/
> CVE ID: CVE-2016-3631
> Credit: Kaixiang Zhang of the Cloud Security Team, Qihoo 360
>
> Introduction
>
> Illegal read occurs in the cpStrips and cpTiles function in thumbnail.c in thumbnail allows attackers to exploit this issue to cause denial-of-service.

While this CVE is not listed in the libtiff 4.0.7 release notes, that
version appears to resolve it via this release note item:
    'The libtiff tools rgb2ycbcr and thumbnail are only built in the build
     tree for testing.'

I still can't find a bug id specifically for this one in the libtiff bug
tracker, but for the similar CVE-2016-3634 this removal is listed as the
resolution in http://bugzilla.maptools.org/show_bug.cgi?id=2547 .

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
