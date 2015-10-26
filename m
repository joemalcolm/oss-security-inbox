X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["248" "Monday" "26" "October" "2015" "19:23:21" "+0100" "Michael Scherer" "misc@zarb.org" "<20151026182321.GA16580@sisay.ephaone.org>" "12" "[oss-security] CVE request - open-vm-tools using predictable filename in /tmp" nil nil nil "10" "2015102618:23:21" "[oss-security] CVE request - open-vm-tools using predictable filename in /tmp" (number mark "        misc@zarb.or Oct 26   12/248   " thread-indent "\"[oss-security] CVE request - open-vm-tools using predictable filename in /tmp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15823 invoked by uid 550); 26 Oct 2015 18:23:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15805 invoked from network); 26 Oct 2015 18:23:34 -0000
Message-ID: <20151026182321.GA16580@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: oss-security@lists.openwall.com
Date: Mon, 26 Oct 2015 19:23:21 +0100
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - open-vm-tools using predictable filename in /tmp
To: cve-assign@mitre.org

Hi,

It seems that vm-support, from open-vm-tools use /tmp to
store output of diagnostic software.

See 
https://github.com/vmware/open-vm-tools/blob/master/open-vm-tools/scripts/common/vm-support#L200

Can a CVE be assigned ?

-- 
Michael Scherer
