X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Thursday" "21" "May" "2015" "15:29:23" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87a8wy9hzg.fsf@redhat.com>" "21" "[oss-security]  CVE-2015-3206 python-kerberos: checkPassword() does not verify KDC authenticity" nil nil nil "5" "2015052113:29:23" "[oss-security] CVE-2015-3206 python-kerberos: checkPassword() does not verify KDC authenticity" (number mark "        mprpic@redha May 21   21/638   " thread-indent "\"[oss-security]  CVE-2015-3206 python-kerberos: checkPassword() does not verify KDC authenticity\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8122 invoked by uid 550); 21 May 2015 13:29:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8104 invoked from network); 21 May 2015 13:29:38 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87a8wy9hzg.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Thu, 21 May 2015 15:29:23 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security]  CVE-2015-3206 python-kerberos: checkPassword() does not verify KDC authenticity
To: "OSS Security Mailinglist" <oss-security@lists.openwall.com>

Hello!

Red Hat has assigned CVE-2015-3206 to the following issue:

https://www.calendarserver.org/ticket/833
"The python-kerberos checkPassword() does verify that it actually spoke
to a trusted KDC"

Upstream has not fixed it, rather documented the insecurity of the
checkPassword() function. We feel that this is not a proper solution
given the fact that the pykerberos fork of this library did fix this
issue by adding KDC validation:

https://github.com/02strich/pykerberos/commit/02d13860b25fab58e739f0e000bed0067b7c6f9c

Red Hat bug:

https://bugzilla.redhat.com/show_bug.cgi?id=1223802

--
Martin Prpič / Red Hat Product Security
