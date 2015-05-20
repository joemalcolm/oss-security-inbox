X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["736" "Wednesday" "20" "May" "2015" "16:50:18" "+0200" "Florian Weimer" "fweimer@redhat.com" "<555C9F2A.4020207@redhat.com>" "19" "[oss-security] JSON-based SQL query construction (Sequelize as an example)" nil nil nil "5" "2015052014:50:18" "[oss-security] JSON-based SQL query construction (Sequelize as an example)" (number mark "        fweimer@redh May 20   19/736   " thread-indent "\"[oss-security] JSON-based SQL query construction (Sequelize as an example)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29919 invoked by uid 550); 20 May 2015 14:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29898 invoked from network); 20 May 2015 14:50:32 -0000
Message-ID: <555C9F2A.4020207@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Wed, 20 May 2015 16:50:18 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] JSON-based SQL query construction (Sequelize as an example)
To: oss-security@lists.openwall.com

We came across an issue which could deserve some wider attention: JSON
injection altering the structure of queries in certain ORM tools.


<https://securityblog.redhat.com/2015/05/20/json-homoiconicity-and-database-access/>

Already in July 2014, Kazuho Oku described a JSON injection issue in the
SQL::Maker Perl package, discovered by his colleague Toshiharu Sugiyama:


<http://blog.kazuhooku.com/2014/07/the-json-sql-injection-vulnerability.html>

Additional SQL frameworks could be affected if they implement such
queries and are used with JSON frameworks which produce dict/hash
objects native to the programming language (so that they are
indistinguishable from query expressions).

-- 
Florian Weimer / Red Hat Product Security
