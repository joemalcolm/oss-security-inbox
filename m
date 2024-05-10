Received: (qmail 27680 invoked by uid 550); 10 May 2024 12:47:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26612 invoked from network); 10 May 2024 12:47:23 -0000
Date: Fri, 10 May 2024 14:47:13 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Cc: lennard.hofmann@web.de
Message-ID: <Zj4XUd982lJXTh4u@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] buffer-overlow in xxd with colored output < v9.1.0404

buffer overflow when outputting colored output in xxd
=====================================================
Date: 10.05.2024
Severity: Low

When outputting colored hexdumps using the -R command line flag, 
together with -g1 (group every byte), -c 256 (format 256 octets per 
line), -d (show offsets in decimal) and -o <large_numer> (add offset to 
the file position), the buffer used to write to may overflow.

Impact is low since the user must intentionally execute xxd with several 
non-default flags, but it may cause a crash of xxd.

The Vim project would like to thank github user Lennard Hofmann for 
reporting and fixing this issue in Vim patch 9.1.0404.

URLs: https://github.com/vim/vim/commit/67797191e039196128c69

Thanks,
Chris
-- 
Ein Torheit, über die viele Satiren gemacht worden und bei der jede
neue Satire verliert, ist in der Wirklichkeit desto komischer.
		-- Jean Paul
