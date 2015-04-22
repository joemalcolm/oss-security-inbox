X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["904" "Tuesday" "21" "April" "2015" "21:58:17" "-0400" "Kash Pande" "kash@tripleback.net" "<55370039.7000607@tripleback.net>" "31" "[oss-security] CVE Request for ZFS on Linux" nil nil nil "4" "2015042201:58:17" "[oss-security] CVE Request for ZFS on Linux" (number mark "        kash@tripleb Apr 21   31/904   " thread-indent "\"[oss-security] CVE Request for ZFS on Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31988 invoked by uid 550); 22 Apr 2015 01:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30312 invoked from network); 22 Apr 2015 01:58:18 -0000
Message-ID: <55370039.7000607@tripleback.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 21 Apr 2015 21:58:17 -0400
From: Kash Pande <kash@tripleback.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for ZFS on Linux
To: oss-security@lists.openwall.com

MITRE:

https://github.com/zfsonlinux/zfs/issues/3319

This was "discovered" yesterday.

As outlined here, there is a security issue in the Debian packages for
zfsonlinux which will export NFS shares to * when you only intend for
192.168.0.0/24.

Some notes:
-> Debian packages for zfsonlinux were using extra patches for NFS,
iSCSI and other shares not present in upstream zfsonlinux
-> These patches were included by the maintainer of the Debian packages
against upstream's wishes

NFS users who are exporting host-specific shares from
CentOS/FreeBSD/illumos who switch to Debian will certainly be surprised
to find their NFS shares are wide open.

Can we have a CVE for tracking this, as it's a unique issue which has
apparently been in the Debian packages for some time now.

No other zfsonlinux distribution suffers these issues.

-- 

Kash Pande
Jentu Technologies, Inc.
http://jentu-networks.com

