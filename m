X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["256" "Wednesday" "13" "July" "2016" "19:23:18" "+0200" "Michael Scherer" "misc@zarb.org" "<20160713172318.GA28955@sisay.ephaone.org>" "8" "[oss-security] CVE Request: openshift-node is logging private RSA keys to the systemd journal" nil nil nil "7" "2016071317:23:18" "[oss-security] CVE Request: openshift-node is logging private RSA keys to the systemd journal" (number mark "U       misc@zarb.or Jul 13    8/256   " thread-indent "\"[oss-security] CVE Request: openshift-node is logging private RSA keys to the systemd journal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8014 invoked by uid 550); 13 Jul 2016 17:23:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7994 invoked from network); 13 Jul 2016 17:23:30 -0000
Date: Wed, 13 Jul 2016 19:23:18 +0200
From: Michael Scherer <misc@zarb.org>
To: oss-security@lists.openwall.com
Message-ID: <20160713172318.GA28955@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [oss-security] CVE Request: openshift-node is logging private RSA keys to the
 systemd journal

Hi,

I stumbled on https://github.com/openshift/origin/issues/3951 , which was found by Adam Miller,
but he didn't request a CVE id. The vendor (Red Hat) told me to request the 
CVE on oss-sec since the issue is public since a while. 

-- 
Michael Scherer
