X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1049" "Tuesday" "26" "January" "2016" "09:05:46" "+0100" "Sergei Golubchik" "serg@mariadb.org" "<20160126080546.GA27464@meddwl>" "29" "[oss-security] Flaw in mariadb clients SSL certificate validation" nil nil nil "1" "2016012608:05:46" "[oss-security] Flaw in mariadb clients SSL certificate validation" (number mark "U       serg@mariadb Jan 26   29/1049  " thread-indent "\"[oss-security] Flaw in mariadb clients SSL certificate validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19809 invoked by uid 550); 26 Jan 2016 08:10:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15879 invoked from network); 26 Jan 2016 08:06:02 -0000
X-Virus-Scanned: Debian amavisd-new at mail.askmonty.org
Date: Tue, 26 Jan 2016 09:05:46 +0100
From: Sergei Golubchik <serg@mariadb.org>
To: oss-security@lists.openwall.com
Message-ID: <20160126080546.GA27464@meddwl>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Flaw in mariadb clients SSL certificate validation

Hi,

MariaDB (as well as MySQL and Percona Server) has an option to validate
server certificate, when establishing an SSL connection. It checks that
the certificate belongs to the host that the client wants to connect to.
This validation, of course, should normally always be enabled to prevent
MITM attacks.

Recently (end of November) two security researchers Paul Kehrer and Alex
Gaynor have found a flaw in this certificate validation code that allows
to trick it into accepting certificate from other hosts. For example,
if the host 'foo.com' has a certificate with the "Organizational Unit"
being, say, "/CN=bar.com", then MariaDB client will see the result as

   /OU=/CN=bar.com/CN=foo.com

and will think that this certificate belongs to bar.com. This bugs is in
15 year old code and is present in all MariaDB/MySQL/Percona Server
versions. 

This vulnerability got CVE-2016-2047.

It is fixed in MariaDB 5.5.47, MariaDB 10.0.23, MariaDB 10.1.10
(all released in December).

Regards,
Sergei
Chief Architect MariaDB
and security@mariadb.org
