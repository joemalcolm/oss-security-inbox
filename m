X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1963" "Wednesday" "17" "January" "2018" "13:59:45" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20180117135945.0d3fd93a@redhat.com>" "44" "[oss-security] MySQL sha256_password authentication plugin DoS issues" nil nil nil "1" "2018011712:59:45" "[oss-security] MySQL sha256_password authentication plugin DoS issues" (number mark "U       thoger@redha Jan 17   44/1963  " thread-indent "\"[oss-security] MySQL sha256_password authentication plugin DoS issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7867 invoked by uid 550); 17 Jan 2018 13:00:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7834 invoked from network); 17 Jan 2018 13:00:00 -0000
Date: Wed, 17 Jan 2018 13:59:45 +0100
From: Tomas Hoger <thoger@redhat.com>
To: OSS Security <oss-security@lists.openwall.com>
Message-ID: <20180117135945.0d3fd93a@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 17 Jan 2018 12:59:48 +0000 (UTC)
Subject: [oss-security] MySQL sha256_password authentication plugin DoS issues

Hi!

As Oracle does not share any information about the CVEs they assign,
here's info about two CVEs fixed in MySQL 5.6.39 and 5.7.21 and listed
in Oracle CPU Jan 2018.  Both flaws affect sha256_password
authentication plugin, which uses SHA256 crypt algorithm to hash
passwords, and was affected by the known algorithm issues.

MySQL did not set any explicit limit on the length of the password that
can be provided during the authentication phase.  Long passwords
trigger DoS - high CPU usage and even server crash (because of use of
alloca()).  This was assigned CVE-2018-2696 and fixed by enforcing
maximum password length limit:

https://github.com/mysql/mysql-server/commit/475dcde2c7856dd0050b967099a86c087d94f32f

SHA256 crypt makes it possible to adjust the cost of computing password
hash by changing the number of "rounds".  This is only a problem if
user can directly specify their password hash and hence manipulate the
rounds setting.  That is possible in MySQL 5.6 (via SET PASSWORD =
'hash_string';), but no longer possible in MySQL 5.7.  This isn't very
exciting issue, as SQL access is a precondition.  Impact is that
sha256_password can be made to use excessive amount of CPU even if
short password is provided.  This was assigned CVE-2018-2703 and fixed
by limiting the maximum rounds value:

https://github.com/mysql/mysql-server/commit/efb4087cfe12134e1541b39ee9a4305f7cd225f5

References:

http://www.oracle.com/technetwork/security-advisory/cpujan2018-3236628.html#AppendixMSQL
https://dev.mysql.com/doc/relnotes/mysql/5.6/en/news-5-6-39.html
https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-21.html

Note that these issues were found while researching a related fix from
Oct 2017 CPU:

https://github.com/mysql/mysql-server/commit/f4e4405ebe319a840eb720db52c0e28b4fef5062

I believe that's CVE-2017-10155, wonder if any Oracle subscribers on
this list are going to speak up to confirm.

-- 
Tomas Hoger / Red Hat Product Security
