X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["502" "Thursday" "14" "May" "2015" "14:56:40" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87r3qje2rb.fsf@redhat.com>" "17" "[oss-security] Cross-site scripting flaw in AskBot" nil nil nil "5" "2015051412:56:40" "[oss-security] Cross-site scripting flaw in AskBot" (number mark "        mprpic@redha May 14   17/502   " thread-indent "\"[oss-security] Cross-site scripting flaw in AskBot\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5963 invoked by uid 550); 14 May 2015 12:56:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5945 invoked from network); 14 May 2015 12:56:55 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87r3qje2rb.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 14 May 2015 14:56:40 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Cross-site scripting flaw in AskBot
To: "OSS Security Mailinglist" <oss-security@lists.openwall.com>

Hi,

It was reported to us that certain versions of AskBot are vulnerable to
a cross-site scripting flaw. It is unclear which version fixed this flaw
and what the actual patch was.

Red Hat assigned CVE-2015-3169 to this flaw; Red Hat bug is filed at:

https://bugzilla.redhat.com/show_bug.cgi?id=1221616

If anyone wants to dig through https://github.com/ASKBOT/askbot-devel
and find the root cause and the patch, please post your findings here.

Thanks!

-- 
Martin Prpič / Red Hat Product Security
