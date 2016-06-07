X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["517" "Tuesday" "7" "June" "2016" "09:34:51" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87wpm1wixw.fsf@redhat.com>" "20" "[oss-security] Please reject duplicate CVE for libxml2" nil nil nil "6" "2016060707:34:51" "[oss-security] Please reject duplicate CVE for libxml2" (number mark "U       mprpic@redha Jun  7   20/517   " thread-indent "\"[oss-security] Please reject duplicate CVE for libxml2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5173 invoked by uid 550); 7 Jun 2016 07:35:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5155 invoked from network); 7 Jun 2016 07:35:05 -0000
From: Martin Prpic <mprpic@redhat.com>
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>
User-agent: mu4e 0.9.9.5; emacs 24.3.1
cc: "Mitre CVE assign department" <cve-assign@mitre.org>
Date: Tue, 07 Jun 2016 09:34:51 +0200
Message-ID: <87wpm1wixw.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 07 Jun 2016 07:34:54 +0000 (UTC)
Subject: [oss-security] Please reject duplicate CVE for libxml2

Hi, it seems two CVEs were assigned for the same issue in libxml2:

http://seclists.org/oss-sec/2016/q1/683
http://seclists.org/oss-sec/2016/q2/214

Daniel Veillard reported to us that these issues are the same and fixed
by:

https://git.gnome.org/browse/libxml2/commit/?id=bdd66182ef53fe1f7209ab6535fda56366bd7ac9

The upstream bug is:

https://bugzilla.gnome.org/show_bug.cgi?id=762100

Can CVE-2016-4483 please be rejected as a duplicate of CVE-2016-3627?

Thank you!

-- 
Martin Prpič / Red Hat Product Security
