X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["668" "Friday" "20" "November" "2015" "14:04:51" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20151120140451.28635bdc@redhat.com>" "16" "[oss-security] LXDM X authentication issues" nil nil nil "11" "2015112013:04:51" "[oss-security] LXDM X authentication issues" (number mark "U       thoger@redha Nov 20   16/668   " thread-indent "\"[oss-security] LXDM X authentication issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27706 invoked by uid 550); 20 Nov 2015 13:05:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27681 invoked from network); 20 Nov 2015 13:05:07 -0000
Date: Fri, 20 Nov 2015 14:04:51 +0100
From: Tomas Hoger <thoger@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20151120140451.28635bdc@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] LXDM X authentication issues

Hi!

LXDM before 0.5.2 did not start X server with -auth parameter.
Therefore any user able to connect to it (typically all local users)
would have their X connections accepted.  The issue was fixed via:

http://git.lxde.org/gitweb/?p=lxde/lxdm.git;a=commitdiff;h=e8f387089e241360bdc6955d3e479450722dcea3

LXDM also defaults to not restarting X server between sessions, and
does not change authentication cookies or remove xhost authorizations.
This allows local user to be able to connect to the X server after they
logged out.  The 'reset' option in lxdm.conf controls whether X server
is restarted on session user close.

-- 
Tomas Hoger / Red Hat Product Security
