X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Saturday" "5" "August" "2017" "01:15:23" "+0200" "Damien Regad" "dregad@mantisbt.org" "<om2v65$asp$1@blaine.gmane.org>" "30" "[oss-security] CVE-2017-12419: Arbitrary File Read in MantisBT install.php script" "^Date:" nil nil "8" "2017080423:15:23" "[oss-security] CVE-2017-12419: Arbitrary File Read in MantisBT install.php script" (number mark "U       dregad@manti Aug  5   30/1350  " thread-indent "\"[oss-security] CVE-2017-12419: Arbitrary File Read in MantisBT install.php script\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27721 invoked by uid 550); 4 Aug 2017 23:59:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32044 invoked from network); 4 Aug 2017 23:15:44 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <om2v65$asp$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Language: en-US
Date: Sat, 5 Aug 2017 01:15:23 +0200
From: Damien Regad <dregad@mantisbt.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-12419: Arbitrary File Read in MantisBT install.php script
To: oss-security@lists.openwall.com

If, after a successful installation of MantisBT on MySQL/MariaDB the
administrator does not remove the 'admin' directory (as recommended in
the "Post-installation and upgrade tasks" section of the MantisBT Admin
Guide [1]), and the MySQL client has a local_infile setting enabled (in
php.ini mysqli.allow_local_infile, or the MySQL client config file,
depending on the PHP setup), an attacker may take advantage of MySQL's
"connect file read" feature [2] to remotely access files on the MantisBT
server.

Affected versions: All 1.x and 2.x
Fixed in versions: N/A

At the moment, we do not have a way to patch this vulnerability from
the code, so we advise administrators to secure their installations
following our recommendation (i.e. deleting the 'admin' directory,
disabling mysqli.allow_local_infile in php.ini). As a stopgap measure,
we have improved documentation and added warnings in several places to
better inform administrators of the risks they incur.

Credits:
- Reported by aLLy from ONSEC (https://twitter.com/IamSecurity)

References:
- MantisBT issue tracker https://mantisbt.org/bugs/view.php?id=23173

[1]
http://mantisbt.org/docs/master/en-US/Admin_Guide/html-desktop/#admin.install.postcommon
[2] http://russiansecurity.expert/2016/04/20/mysql-connect-file-read/
    https://dev.mysql.com/doc/refman/5.7/en/load-data-local.html

