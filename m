X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1130" "Thursday" "16" "April" "2015" "10:08:54" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87bnio4hrd.fsf@redhat.com>" "39" "[oss-security] Potential CVE request: flaw in comment handling " nil nil nil "4" "2015041608:08:54" "[oss-security] Potential CVE request: flaw in comment handling" (number mark "        mprpic@redha Apr 16   39/1130  " thread-indent "\"[oss-security] Potential CVE request: flaw in comment handling \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32219 invoked by uid 550); 16 Apr 2015 08:09:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32192 invoked from network); 16 Apr 2015 08:09:08 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87bnio4hrd.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Thu, 16 Apr 2015 10:08:54 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Potential CVE request: flaw in comment handling 
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>

Hi, we were notified of a flaw in the way Apache's mod_access_compat and
mod_authz_host handled comments in configuration files. When a comment
was defined on the same line that contained an "Allow" directive,
any potential IP ranges in that comment were also allowed to access
a resource.

This flaw was fixed in:

https://github.com/apache/httpd/commit/5e1affc271a429f267198eee61fce2b209a83c66

The docs do specify that comments are not allowed on the same line:

"There must be no other characters or white space between the backslash and the end of the line."
[https://httpd.apache.org/docs/2.2/configuring.html#syntax]

MITRE, does this qualify for a CVE?


Reproducer:

$ sudo yum -y install httpd

$ echo hest123 | sudo tee /var/www/html/secret.txt

$ echo '<Location "/secret.txt">
> Order allow,deny
> Allow from 127.0.0.1 # not 10
> </Location>' | sudo tee -a /etc/httpd/conf/httpd.conf
sudo service httpd restart

client on 10.x.x.x:
$ HEAD servername.com/secret.txt
200 OK

The security implications of this flaw were discovered by Espen
Fjellvaer Olsen from Basefarm AS.

-- 
Martin Prpič / Red Hat Product Security
