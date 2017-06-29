X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Thursday" "29" "June" "2017" "11:33:54" "+0200" "Michael Scherer" "misc@zarb.org" "<20170629093354.GA4211@sisay.ephaone.org>" "44" "[oss-security] rkhunter: [CVE-2017-7480] Potential RCE after MiTM due to clear text download without signature" "^Date:" nil nil "6" "2017062909:33:54" "[oss-security] rkhunter: [CVE-2017-7480] Potential RCE after MiTM due to clear text download without signature" (number mark "U       misc@zarb.or Jun 29   44/1272  " thread-indent "\"[oss-security] rkhunter: [CVE-2017-7480] Potential RCE after MiTM due to clear text download without signature\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30213 invoked by uid 550); 29 Jun 2017 09:34:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30191 invoked from network); 29 Jun 2017 09:34:10 -0000
Message-ID: <20170629093354.GA4211@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Date: Thu, 29 Jun 2017 11:33:54 +0200
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] rkhunter: [CVE-2017-7480] Potential RCE after MiTM due to clear
 text download without signature
To: oss-security@lists.openwall.com

Hi,

while evaluating various security solutions, I looked at
rkhunter, and found that it do download by default various
files over http and parse them with bash:


For example, it download mirrors.dat over http, using no signature and
just a version verification that can be faked:

# cat /var/lib/rkhunter/db/mirrors.dat
Version:2007060601
mirror=http://rkhunter.sourceforge.net
mirror=http://rkhunter.sourceforge.net

So I will assume that a attacker can inject a file with MITM without
much problem.

And it turn out that since rkhunter is in bash, it parse the file as
bash.

So adding something like:

mirror=$(sleep 455)

in the file result into "rkhunter --update" doing this:

\_ /bin/sh /usr/bin/rkhunter --update
\_ /bin/sh /usr/bin/rkhunter --update
\_ sleep 455

It also :nd on a few packages (if not all), rkhunter --update is run by cron,
as root, so without much limitation.

Upstream have been warned 2 months ago, and I also did warned
RH product security, who assigned CVE-2017-7480  to it.

Unfortunaly, half of the upstream developpers seems to have disappeared and the
software is in maintenance mode, so no fix is avaliable yet, except "turn off
mirror update". Upstream told me to publish it, but I didn't found time earlier.


-- 
Michael Scherer
