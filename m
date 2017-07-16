X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1708" "Sunday" "16" "July" "2017" "15:01:39" "+0300" "Henri Salo" "henri@nerv.fi" "<20170716120139.ivmlgyaqwxrp2mhl@tunkki>" "34" "[oss-security] ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" "^Cc:" nil nil "7" "2017071612:01:39" "[oss-security] ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" (number mark "        henri@nerv.f Jul 16   34/1708  " thread-indent "\"[oss-security] ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28032 invoked by uid 550); 16 Jul 2017 12:02:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28014 invoked from network); 16 Jul 2017 12:02:18 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Message-ID: <20170716120139.ivmlgyaqwxrp2mhl@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: oss-security@lists.openwall.com, mattd@bugfuzz.com
Date: Sun, 16 Jul 2017 15:01:39 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004
To: kurt@seifried.org

Hello Kurt,

You have assigned CVE-2017-1000002, CVE-2017-1000003 and CVE-2017-1000004 (URLs
below) for ATutor vulnerabilities. Why doesn't the CVE data have information of
the fixed in version even it's clearly available in the reference data, which
refers to URL showing that the vulnerabilities are fixed in 2.2.2 version? Isn't
it supposed to be available in CVE database? I'm just trying to understand how
DWF works, because it's not very clear to me.

How long it usually takes that DWF assigned CVEs end up being added to MITRE
and NVD databases?

I can't actually see contents of upstream bug report even I registered
user-account: http://www.atutor.ca/atutor/mantis/view.php?id=5681

Is this assigment somehow related to this oss-security post?
http://www.openwall.com/lists/oss-security/2016/07/01/3

This has also been pending for over a year. Is this related to these new
assigments or does this still need new CVE?
https://www.htbridge.com/advisory/HTB23297

Also I noticed following text in the DWF-CVE-Database README.md: "Please note
that some of the data from 2015 and 2016 needs to be brought up to date to the
current JSON v.4 format, if you'd like to do this please do so and submit a pull
request." isn't this something that should be done by DWF maintainers and maybe
the CVE mentors and not wait pull requests?

https://raw.githubusercontent.com/distributedweaknessfiling/DWF-CVE-Database/master/2017/1000xxx/CVE-2017-1000002.json
https://raw.githubusercontent.com/distributedweaknessfiling/DWF-CVE-Database/master/2017/1000xxx/CVE-2017-1000003.json
https://raw.githubusercontent.com/distributedweaknessfiling/DWF-CVE-Database/master/2017/1000xxx/CVE-2017-1000004.json

-- 
Henri Salo
