X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["528" "Monday" "17" "August" "2015" "15:52:17" "+0200" "Jan Kara" "jack@suse.cz" "<20150817135217.GA5728@quack.suse.cz>" "17" "[oss-security] CVE-2015-5706: kernel: Use-after-free in path lookup" nil nil nil "8" "2015081713:52:17" "[oss-security] CVE-2015-5706: kernel: Use-after-free in path lookup" (number mark "        jack@suse.cz Aug 17   17/528   " thread-indent "\"[oss-security] CVE-2015-5706: kernel: Use-after-free in path lookup\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32726 invoked by uid 550); 17 Aug 2015 13:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26587 invoked from network); 17 Aug 2015 13:52:32 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150817135217.GA5728@quack.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 17 Aug 2015 15:52:17 +0200
From: Jan Kara <jack@suse.cz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5706: kernel: Use-after-free in path lookup
To: oss-security@lists.openwall.com

Hello,

when looking into a fix for above CVE (commit f15133df088 in Linux kernel
git tree) I found out that the commit description is wrong and the problem
wasn't introduced by commit 60545d0d4610 in 3.11 but only by commit
5e53084d7734 "path_init(): store the "base" pointer to file in nameidata
itself" in 3.19. So the fix doesn't have to backported all the way back to
3.11.

For detailed analysis feel free to see:
https://bugzilla.suse.com/show_bug.cgi?id=940339

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
