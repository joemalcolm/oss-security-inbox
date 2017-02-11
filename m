X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4745" "Saturday" "11" "February" "2017" "18:46:17" "+0100" "pali@cpan.org" "pali@cpan.org" "<201702111846.24604@pali>" "108" "Re: [oss-security] Use after free in libmysqlclient.so" nil nil nil "2" "2017021117:46:17" "[oss-security] Use after free in libmysqlclient.so" (number mark "U       pali@cpan.or Feb 11  108/4745  " thread-indent "\"Re: [oss-security] Use after free in libmysqlclient.so\"\n") "<20170210142302.GA23293@openwall.com>" ("<201701272353.40452@pali>" "<201702101200.00422@pali>" "<20170210142302.GA23293@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7277 invoked by uid 550); 11 Feb 2017 18:07:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25629 invoked from network); 11 Feb 2017 17:46:37 -0000
X-Envelope-From: pali@cpan.org
From: pali@cpan.org
To: oss-security@lists.openwall.com
Date: Sat, 11 Feb 2017 18:46:17 +0100
User-Agent: KMail/1.13.7 (Linux/3.13.0-108-generic; KDE/4.14.2; x86_64; ; )
Cc: Solar Designer <solar@openwall.com>
References: <201701272353.40452@pali> <201702101200.00422@pali> <20170210142302.GA23293@openwall.com>
In-Reply-To: <20170210142302.GA23293@openwall.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Message-Id: <201702111846.24604@pali>
Subject: Re: [oss-security] Use after free in libmysqlclient.so

Now I was contacted by Oracle that they assigned CVE-2017-3302.

On Friday 10 February 2017 15:23:03 Solar Designer wrote:
> On Fri, Feb 10, 2017 at 11:59:59AM +0100, pali@cpan.org wrote:
> > Hello, are you going to assign CVE for this particular defect?
> 
> MITRE has recently switched to accepting CVE requests via a web form.
> Please see this thread:
> 
> http://www.openwall.com/lists/oss-security/2017/02/09/7
> 
> I guess it means that since they didn't get back to you on your CVE
> request yet, you probably need to resubmit it via the web form now.
> 
> Alexander
> 
> > On Friday 27 January 2017 23:53:29 pali@cpan.org wrote:
> > > Hello, I would like to report problem related to MySQL/MariaDB
> > > and possibly asking for assigning CVE if this list is the right
> > > place.
> > > 
> > > C client library for MySQL (libmysqlclient.so) has use-after-free
> > > defect which can cause crash of applications using that MySQL
> > > client.
> > > 
> > > Defect occurs by calling mysql_close() function from
> > > libmysqlclient.so. If mysql_close() is called before calling all
> > > mysql_stmt_close() (for all allocated stmts), then following
> > > mysql_stmt_close() call try to write to already released memory.
> > > mysql_close() let dangling pointer exist for prepared statements.
> > > Real problem is in function
> > > mysql_prune_stmt_list() which incorrectly iterate over elements.
> > > Function list_add() overwrite ->next pointer of current element
> > > which overwrite next element for iteration.
> > > 
> > > Basically it is just wrong usage of linked list structure.
> > > 
> > > Languages in which is not guaranteed order of executing
> > > destructor of created objects have a big problem as such writing
> > > to memory pointed by dangling can cause crash of whole
> > > application.
> > > 
> > > E.g. libmysqlclient.so used by perl DBD::mysql driver cause crash
> > > of whole perl process with simple script:
> > > 
> > > perl -MDBI -e '
> > > $dbh = DBI->connect("dbi:mysql:", "root", undef,
> > > 
> > >                     {RaiseError => 1, mysql_server_prepare =>
> > >                     1});
> > > 
> > > $sth1 = $dbh->prepare("SELECT 1");
> > > $sth2 = $dbh->prepare("USE mysql");
> > > $dbh->disconnect;
> > > $dbh = undef;
> > > '
> > > Segmentation fault
> > > 
> > > Tested on amd64 Ubuntu 12.04 LTS with perl 5.14.2. To reproduce
> > > change username, password and host where is running mysql server.
> > > Valgrind can prove that memory corruption really occurs.
> > > 
> > > This defect was fixed in MySQL 5.6.21 and MySQL 5.7.5 releases.
> > > But is present in all MySQL 5.5 versions (and also older) and
> > > appropriate older 5.6 and 5.7 versions. MySQL 5.5 is still used,
> > > supported and included in lot of linux distributions.
> > > 
> > > Moreover this defect is present also in MariaDB releases. I
> > > tested all last major versions 10.2.3, 10.1.21, 10.0.29, 5.5.54
> > > and all those are affected.
> > > 
> > > MySQL and MariaDB provides also standalone package with only C
> > > client library libmysqlclient.so (without server) under name
> > > "Connector/C" and so appropriate versions of it are affected
> > > too.
> > > 
> > > I found that this defected was fixed in MySQL git repository by
> > > commit:
> > > https://github.com/mysql/mysql-server/commit/4797ea0b772d5f4c5889
> > > bc5 52424132806f46e93
> > > 
> > > That commit can be easily applied to last MySQL 5.5.54 version
> > > and fixes this defect.
> > > 
> > > Looks like problem was already reported and is publically
> > > available in MySQL bug tracker, see more details on links:
> > > https://bugs.mysql.com/bug.php?id=70429
> > > https://bugs.mysql.com/bug.php?id=63363
> > > (tickets are closed despite fact that MySQL 5.5 and older are not
> > > fixed)
> > > 
> > > ---
> > > 
> > > I reported this problem to Oracle secalert_us@oracle.com two
> > > months ago, but they did absolutely nothing for fixing it in
> > > MySQL 5.5. Instead they started resending this problem to some
> > > random people with @cpan.org address for unknown reason. And
> > > told me to not disclose information about this defect. Resending
> > > does not look like normal handling of security related problem!
> > > Therefore I suggest other people to not wasting time reporting
> > > problems to Oracle for open source applications.
> > > 
> > > As two months is really long time to fix such problem which was
> > > already fixed in new versions; it is already publically disclosed
> > > in MySQL bug tracker; fix available in public git; problem is in
> > > major MariaDB versions; fix is small; and this is open source
> > > product included in many linux distributions I decided to send
> > > information to oss-security.
