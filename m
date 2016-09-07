X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["979" "Wednesday" "7" "September" "2016" "19:30:28" "+0200" "Damien Regad" "dregad@mantisbt.org" "<nqpirj$fvm$1@blaine.gmane.org>" "33" "[oss-security] ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016090717:30:28" "[oss-security] ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        dregad@manti Sep  7   33/979   " thread-indent "\"[oss-security] ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12008 invoked by uid 550); 7 Sep 2016 17:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9944 invoked from network); 7 Sep 2016 17:30:57 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <nqpirj$fvm$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
Date: Wed, 07 Sep 2016 19:30:28 +0200
From: Damien Regad <dregad@mantisbt.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ADOdb PDO driver: incorrect quoting may allow SQL injection
To: oss-security@lists.openwall.com

Greetings

jdavidlists reported an issue [1] with ADOdb 5.x, qstr() method,
improperly quoting strings resulting in a potential SQL injection attack
vector.

This affects only PDO-based drivers, and only in the case where the
query is built by inlining the quoted string, e.g.

$strHack = 'xxxx\\\' OR 1 -- ';
$sql = "SELECT * FROM employees WHERE name = " . $db->qstr( $strHack );
$rs = $db->getAll($strSQL); // dumps the whole table

Note that it is not recommended to write SQL as per the above example,
the code should be rewritten to use query parameters, like

$strHack = 'xxxx\\\' OR 1 -- ';
$sql = "SELECT * FROM employees WHERE name = ?"
$rs = $db->getAll($strSQL, array($strHack));

Please let me know if a CVE is needed for this.

Patch for the issue is available [2], and will be included in upcoming
ADOdb v5.20.7 release.

Best regards
Damien Regad
ADOdb maintainer


[1] https://github.com/ADOdb/ADOdb/issues/226
[2] https://github.com/ADOdb/ADOdb/commit/bd9eca9

