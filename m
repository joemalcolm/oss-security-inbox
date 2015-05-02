X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1023" "Saturday" "2" "May" "2015" "05:54:33" "+0200" "Michael Scherer" "misc@zarb.org" "<20150502035433.GA6750@sisay.ephaone.org>" "28" "[oss-security] CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" nil nil nil "5" "2015050203:54:33" "[oss-security] CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" (number mark "        misc@zarb.or May  2   28/1023  " thread-indent "\"[oss-security] CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1952 invoked by uid 550); 2 May 2015 03:54:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1934 invoked from network); 2 May 2015 03:54:45 -0000
Message-ID: <20150502035433.GA6750@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: security@ansible.com
Date: Sat, 2 May 2015 05:54:33 +0200
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request / Ansible: insecure permission on a directory when
 using spacewalk inventory
To: oss-security@lists.openwall.com

Hi,

Could a CVE be assigned for this problem :

Ansible inventory script for spacewalk create a file in the current
directory with incorrect permission due to a error in a chmod specification.

https://github.com/ansible/ansible/blob/devel/plugins/inventory/spacewalk.py#L63

In python, os.chmod need to be in octal, and 2755 is not octal. 
So in the end, we manage to have permission like this :

d-ws-w-rwt.

And o+rw and u+s kinda sound bad. The directory is created in $PWD if 
I read the code right, so that's likely the homedir of 1 admin.
However, that's executed locally, or from a bastion, so there
isn't much venue to attack ( even if shared shell server still exist nowadays ),
and this requires to use spacewalk.

I pushed a commit there :
https://github.com/mscherer/ansible/commit/251197f11de7c7a3c5d81141970dd8f2ef16c0ee

I will wait for a CVE to be assigned before fixing the commit message, and push a 
PR ( cause i am quite bothered when I cannot find the CVE in the commit message)

-- 
Michael Scherer
