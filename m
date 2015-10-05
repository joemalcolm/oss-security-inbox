X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["578" "Monday" "5" "October" "2015" "15:20:07" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87vbal3114.fsf@redhat.com>" "19" "[oss-security] CVE request: issues fixed in PHP 5.6.14 and 5.5.30" nil nil nil "10" "2015100513:20:07" "[oss-security] CVE request: issues fixed in PHP 5.6.14 and 5.5.30" (number mark "U       mprpic@redha Oct  5   19/578   " thread-indent "\"[oss-security] CVE request: issues fixed in PHP 5.6.14 and 5.5.30\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13997 invoked by uid 550); 5 Oct 2015 13:20:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13979 invoked from network); 5 Oct 2015 13:20:22 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87vbal3114.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Mon, 05 Oct 2015 15:20:07 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: issues fixed in PHP 5.6.14 and 5.5.30
To: "OSS Security" <oss-security@lists.openwall.com>

Hi, the changelog for PHP 5.6.14 and 5.5.30 lists these two issues that
have a security impact:

Null pointer dereference in phar_get_fp_offset()
https://bugs.php.net/bug.php?id=69720

Uninitialized pointer in phar_make_dirstream when zip entry filename is "/"
https://bugs.php.net/bug.php?id=70433

Both result in a crash. Can CVEs be assigned to these issues?

Also, if anyone knows of any security implications of the other bugs in
these versions, please speak up. I didn't go through the whole list
very thoroughly.

Thank you!

-- 
Martin Prpič / Red Hat Product Security
