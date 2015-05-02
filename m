X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Saturday" "2" "May" "2015" "04:10:45" "+0200" "Michael Scherer" "misc@zarb.org" "<20150502021045.GA29705@sisay.ephaone.org>" "20" "[oss-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module" nil nil nil "5" "2015050202:10:45" "[oss-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module" (number mark "        misc@zarb.or May  2   20/587   " thread-indent "\"[oss-security] CVE Request / Saltstack SSL verification disabling for alibabab cloud module\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12037 invoked by uid 550); 2 May 2015 02:10:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12013 invoked from network); 2 May 2015 02:10:58 -0000
Message-ID: <20150502021045.GA29705@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: security@saltstack.com
Date: Sat, 2 May 2015 04:10:45 +0200
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request / Saltstack SSL verification disabling for alibabab
 cloud module
To: oss-security@lists.openwall.com

Hi,

Could a CVE be assigned for this problem :

Saltstack do not verify certificate when connecting to Aliyun (Alibaba cloud service)
API on HTTPS
https://github.com/saltstack/salt/blob/develop/salt/cloud/clouds/aliyun.py#L724


The same issue exist for the proxmox module :
https://github.com/saltstack/salt/blob/develop/salt/cloud/clouds/proxmox.py#L115

And splunk:
https://github.com/saltstack/salt/blob/develop/salt/modules/splunk_search.py#L168


This was found by running bandit on the source code
( https://wiki.openstack.org/wiki/Security/Projects/Bandit )
-- 
Michael Scherer
