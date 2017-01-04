X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Wednesday" "4" "January" "2017" "23:42:21" "+0000" "KellerFuchs" "KellerFuchs@hashbang.sh" "<20170104234221.GA25962@hashbang.sh>" "23" "Re: [oss-security] Firejail local root exploit" "^Cc:" nil nil "1" "2017010423:42:21" "[oss-security] Firejail local root exploit" (number mark "        KellerFuchs@ Jan  4   23/608   " thread-indent "\"Re: [oss-security] Firejail local root exploit\"\n") "<20170104131248.GA28596@suse.de>" ("<20170104131248.GA28596@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8134 invoked by uid 550); 5 Jan 2017 09:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25992 invoked from network); 4 Jan 2017 23:44:40 -0000
Message-ID: <20170104234221.GA25962@hashbang.sh>
References: <20170104131248.GA28596@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170104131248.GA28596@suse.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: netblue30@yahoo.com, team@hashbang.sh
Date: Wed, 4 Jan 2017 23:42:21 +0000
From: KellerFuchs <KellerFuchs@hashbang.sh>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Firejail local root exploit
To: oss-security@lists.openwall.com

On Wed, Jan 04, 2017 at 02:12:48PM +0100, Sebastian Krahmer wrote:
> Hi
> 
> Please find attached PoC for firejail, which seems to be quite
> popular sandboxing tool.
> 
> Sebastian


Hi Sebastian,

Thanks a lot for discovering this issue.

For information:
- this specific issue can be mitigated by setting `x11 no` in `/etc/firejail/firejail.config`, as in
  https://github.com/hashbang/shell-etc/pull/133
- the initial fix commited by netblues (firejail's dev) is racy:
  https://github.com/netblue30/firejail/commit/60d4b478f65c60bcc825bb56f85fd6c4fd48b250#commitcomment-20366636


Best,

  Keller Fuchs
