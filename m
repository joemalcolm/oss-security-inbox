X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["500" "Tuesday" "13" "September" "2016" "13:45:37" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87r38ohvku.fsf@redhat.com>" "17" "[oss-security] CVE-2016-6299 mock: privilige escalation via mock-scm" nil nil nil "9" "2016091311:45:37" "[oss-security] CVE-2016-6299 mock: privilige escalation via mock-scm" (number mark "U       mprpic@redha Sep 13   17/500   " thread-indent "\"[oss-security] CVE-2016-6299 mock: privilige escalation via mock-scm\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25767 invoked by uid 550); 13 Sep 2016 11:45:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25748 invoked from network); 13 Sep 2016 11:45:50 -0000
From: Martin Prpic <mprpic@redhat.com>
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Date: Tue, 13 Sep 2016 13:45:37 +0200
Message-ID: <87r38ohvku.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Tue, 13 Sep 2016 11:45:39 +0000 (UTC)
Subject: [oss-security] CVE-2016-6299 mock: privilige escalation via mock-scm

Hi,

It was found that mock's scm plug-in would parse a given spec file with
root priviliges. This could allow an attacker who is able to start a
build of an rpm with a specially crafted spec file within mock's
environment to elevate their priviliges and escape the chroot.

Red Hat bug:

https://bugzilla.redhat.com/show_bug.cgi?id=1375490

Upstream patch:

https://github.com/rpm-software-management/mock/commit/8b02f43beadacf6911200b48d94e39e891a41da9

--
Martin Prpič / Red Hat Product Security
