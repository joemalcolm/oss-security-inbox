X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1187" "Wednesday" "14" "September" "2016" "08:32:03" "+0200" "Damien Regad" "dregad@mantisbt.org" "<nraqt1$a2m$1@blaine.gmane.org>" "42" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016091406:32:03" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        dregad@manti Sep 14   42/1187  " thread-indent "\"[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<nqpirj$fvm$1@blaine.gmane.org>" ("<nqpirj$fvm$1@blaine.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32664 invoked by uid 550); 14 Sep 2016 06:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22063 invoked from network); 14 Sep 2016 06:32:33 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <nraqt1$a2m$1@blaine.gmane.org>
References: <nqpirj$fvm$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
In-Reply-To: <nqpirj$fvm$1@blaine.gmane.org>
Date: Wed, 14 Sep 2016 08:32:03 +0200
From: Damien Regad <dregad@mantisbt.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection
To: oss-security@lists.openwall.com

On 2016-09-07 19:30, Damien Regad wrote:
> Greetings
> 
> jdavidlists reported an issue [1] with ADOdb 5.x, qstr() method,
> improperly quoting strings resulting in a potential SQL injection attack
> vector.
> 
> This affects only PDO-based drivers, and only in the case where the
> query is built by inlining the quoted string, e.g.
> 
> $strHack = 'xxxx\\\' OR 1 -- ';
> $sql = "SELECT * FROM employees WHERE name = " . $db->qstr( $strHack );
> $rs = $db->getAll($strSQL); // dumps the whole table
> 
> Note that it is not recommended to write SQL as per the above example,
> the code should be rewritten to use query parameters, like
> 
> $strHack = 'xxxx\\\' OR 1 -- ';
> $sql = "SELECT * FROM employees WHERE name = ?"
> $rs = $db->getAll($strSQL, array($strHack));
> 
> Please let me know if a CVE is needed for this.
> 
> Patch for the issue is available [2], and will be included in upcoming
> ADOdb v5.20.7 release.
> 
> Best regards
> Damien Regad
> ADOdb maintainer
> 
> 
> [1] https://github.com/ADOdb/ADOdb/issues/226
> [2] https://github.com/ADOdb/ADOdb/commit/bd9eca9

Should I assume from the silence that no CVE is required for this ?

Thanks for your reply.
Damien




