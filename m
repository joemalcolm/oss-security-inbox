X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14486" "Friday" "17" "March" "2017" "15:54:40" "+0100" "Solar Designer" "solar@openwall.com" "<20170317145440.GA24878@openwall.com>" "271" "Re: [oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" nil nil nil "3" "2017031714:54:40" "[oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)" (number mark "U       solar@openwa Mar 17  271/14486 " thread-indent "\"Re: [oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)\"\n") "<201703171154.35368@pali>" ("<201703171154.35368@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25849 invoked by uid 550); 17 Mar 2017 14:56:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24296 invoked from network); 17 Mar 2017 14:54:45 -0000
Date: Fri, 17 Mar 2017 15:54:40 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20170317145440.GA24878@openwall.com>
References: <201703171154.35368@pali>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
In-Reply-To: <201703171154.35368@pali>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2017-3305 - The Riddle vulnerability in MySQL client (public disclosure)

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 17, 2017 at 11:54:35AM +0100, Pali Roh??r wrote:
> There is a new vulnerability in MySQL client versions 5.5 and 5.6 which 
> is related to SSL/TLS encryption and to older BACKRONYM vulnerability.
> 
> As it is common, new vulnerability should have a name, logo and website. 
> So enjoy the *Riddle* at http://riddle.link/
> 
> Affected are only Oracle's MySQL clients in all versions 5.5 and 5.6 
> when SSL/TLS encryption is used. Verification of encryption parameters 
> and existence of SSL/TLS layer by MySQL client is done *after* client 
> successfully finish authentication.
> 
> For more details including mitigation, look at Technical section on 
> vulnerability website: http://riddle.link/

That's very nice, but per oss-security list content guidelines technical
detail should also be included in postings.  Attached as text/plain, for
archival.

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

Alexander

--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="riddle.txt"

  Technical section

   DISCLAIMER: THE FOLLOWING SECTION IS UNIMPORTANT FOR THE MAJORITY OF
   PEOPLE AS IT IS NOT USEFUL FOR THE MEDIA OR ANY OTHER NEWS RELATED
   WEBSITES DUE TO BORING TECHNICAL INFORMATION AND DETAILS. IT IS PROVIDED
   "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
   NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
   PURPOSE AND NONINFRINGEMENT. BY READING THE FOLLOWING SECTION YOU AGREE TO
   NOT USE IT IN THE MICROWAVE. THE ENTIRE RISK AS TO THE QUALITY OF THE
   FOLLOWING SECTION IS WITH YOU. YOU ASSUME THE COST OF ALL NECESSARY
   SERVICING, REPAIR OR CORRECTION. ANTE USUM AGITETUR!

    What is the real problem?

   MySQL client library doesn't verify if security of the connection matches
   the parameters specified by the user before starting negotiation of the
   authentication with MySQL server. After the BACKRONYM vulnerability had
   been discovered, it was fixed by Oracle in MySQL 5.7. Security update for
   the stable MySQL 5.5.49 and 5.6.30 versions consisted of adding a
   verification of security parameters after the authentication process was
   finished. Since, it is done after the authentication man riddle in the
   middle attack together with SSL-downgrade attack can be used by the
   attacker to steal login data for immediate authentication and login to the
   MySQL server. Ridiculous part is that MySQL client doesn't report any SSL
   related error when MySQL server declines to authenticate a user and
   instead reports unencrypted error message send by the server. Furthermore,
   the error message is controlled by the attacker, when the riddle in the
   middle attack is active.

    How can the attack look like?

   The attacker needs to sit with riddle in the middle of the MySQL client
   and MySQL server and needs to have the ability to modify MySQL protocol
   communication. Due to (not fully) secure password authentication scheme
   which MySQL protocol uses, attacker can catch the server nonce from
   properly secured SSL connection with MySQL server and then forward it to
   the client via non-secure plain text connection. In this phase, the client
   doesn't do any verification of security parameters and it also doesn't
   verify if the other side that sent the the nonce really knows the password
   (or have ability to verify if supplied data are correct). Thus, the client
   doesn't report any problem that SSL connection isn't used and it generates
   authentication response. The response is sent back to other side (to the
   attacker) without any complains via insecure plain text mode. The attacker
   then finds in the riddle authentication response, sends it to the real
   MySQL server and voila attacker has access to MySQL server database.
   Afterwards, attacker sends some error message to the client and the client
   propagates it to the user. The error message can contain arbitrary string
   and the client doesn't show any problems related to disabled SSL mode even
   when SSL mode was explicitly set to required. The user's password isn't
   disclosed as a result of the attack. The attacker can authenticate to
   MySQL server without the password only once as the server nonce is always
   (or should be) different. If authentication scheme were more robust (e.g.
   SCRAM), then this attack wouldn't be possible. It remains to be seen
   whether Oracle will be willing to switch authentication scheme to
   something more robust after this vulnerability was discovered and
   reported.

    Which versions of the libraries are affected?

   All versions of MySQL 5.5 and 5.6 client libraries (at the time of writing
   of this article). Note that MariaDB client libraries aren't affected by
   this vulnerability as MariaDB developers fixed BACKRONYM properly and
   verification of the security parameters is done before sending user
   credentials. Furthermore, all the programs which use MySQL or MariaDB
   client library incorrectly are also affected.

    How do I verify if a program which uses MySQL/MariaDB is affected?

   Oracle in MySQL 5.5 documentation demonstrates how to enforce SSL
   encryption via function mysql_connect_ssl_check(). The code example in the
   documentation is incorrect as it introduces a vulnerability to your
   program! In the example, the check whether SSL was established is done
   after starting the authentication process. If your MySQL program uses the
   recommendation or directly the code example provided by Oracle, then your
   program is affected by Riddle vulnerability independently of MySQL client
   library. Therefore, fixing MySQL client library isn't enough and MySQL
   program must be fixed too.

    How do I check if my system is affected by this defect?

   You are affected if you are using MySQL client in any version 5.5 or 5.6
   or you are using affected program as described above and you depend on SSL
   encryption over untrusted network where attacker can apply riddle in the
   middle.

    How can I mitigate this problem?

   You have couple of options. The best way would be to stop using the
   affected libraries, either by upgrading your MySQL client to version 5.7
   or by switching from MySQL to MariaDB client. You can also apply MariaDB
   patch for the BACKRONYM vulnerability to your MySQL client. Note that
   MySQL client is backward compatible and version 5.7 can connect to MySQL
   server 5.6 or 5.5 without any problems. So, you just need to upgrade the
   client without touching the server part. Another option is to stop
   relaying on SSL enforced encryption by MySQL and create your own correctly
   encrypted secure tunnel. You can use e.g. socat program which can create a
   bidirectional SSL tunnel or use any other secure tunnel based on SSH, VPN
   or IPSec. The last option is to apply ostrich effect and wait until Oracle
   fixes MySQL client libraries and starts distributing them to you. In that
   case, you should expect that you could be victim of a attack.

    How do I use SSL encryption properly?

   SSL (resp. TLS, as SSL v2/v3 is already broken but name SSL is commonly
   used for TLS protocol) implementation or protocol itself isn't affected by
   this vulnerability. The whole problem is how MySQL client uses SSL
   encryption. Men in the middle attack is very common for SSL and to prevent
   it, client must verify if SSL tunnel was correctly established with
   correct server and not with some attacker's server. It means that client
   must verify SSL certificate announced by the server and also that the
   certificate is really owned by the server. If the connection to MySQL
   server is SSL encrypted but MySQL client doesn't verify certificate
   (correctly!), then man in the middle attack is still possible and
   downgrade attack is needed. The Riddle vulnerability shows that MySQL
   client does whole verification at wrong a time -- after the authentication
   was finished. Not before. So, enforcing SSL mode isn't enough, you also
   need to tell MySQL client how it must verify server's SSL certificate.
   Either that it is signed by really trusted certificate authority or that
   it matches server's certificate directly.

    Are there some implementations of riddle in the middle already?

   Yes, there is my proof of concept riddle.pl script written in Perl. It
   starts riddle on localhost:3307 and expects that MySQL server is running
   on localhost:3306. If you connect with affected client to localhost:3307,
   then riddle will catch and steal authentication information, connects to
   real MySQL server on localhost:3306 and executes SQL for returning number
   of all tables.

      Example which expects that MySQL server is already running on localhost:

   Start riddle in the middle server:

 $ perl riddle.pl

   Connect with your MySQL client to riddle, replace user and password:

 $ mysql --ssl-mode=REQUIRED -h 127.0.0.1 -P 3307 -u user -ppassword

   If you provided correct user and password, then riddle connects to the
   server, executes SQL and writes output:

 SELECT COUNT(*) FROM information_schema.TABLES --> 121

   MySQL client just receives a nice error message sent by riddle:

 ERROR 1045 (28000): Access denied: MITM attack

    Timeline

     * 2017-02-01 - me - Discovered the vulnerability
     * 2017-02-04 - me - Contacted Debian Security team because defect was
       present in Debian's libmysqlclient.so library
     * 2017-02-06 - me - Provided POC perl script
     * 2017-02-06 - Debian & Oracle - Oracle person CCed by Debian Security
       team passed the information on upstream
     * 2017-02-10 - me - Requested information about the state and progress
       of the reported vulnerability
     * 2017-02-16 - Debian - Asked about the state again, since there was no
       answer from Oracle
     * 2017-02-23 - me - Issued another request about the current state and
       announced date of public disclosure to 2017-02-28 due to Oracle's
       inactivity
     * 2017-02-23 - Debian - Suggested to disclose the vulnerability as
       upstream has failed to respond
     * 2017-02-24 - Debian - Contacted Oracle team again
     * 2017-02-25 - Oracle - Answered that they were not aware of this issue,
       even though it was already passed on to them on 2017-02-06 and I
       inquired 4 times about the progress
     * 2017-02-27 - Oracle - Answered that they will provide response quickly
     * 2017-02-28 - me - Requested the current state again as Oracle hasn't
       respond yet
     * 2017-02-28 - Oracle - Answered that will have response shortly
     * 2017-02-28 - me - Reminded them that it was the day of public
       disclosure and offered them postponing the disclosure for a few days
     * 2017-02-28 - Oracle - Accepted an offer to postpone the disclosure
       date to the end of week
     * 2017-03-01 - me - Requested the state of the reported vulnerability
       again because Oracle have not provided any information of progress yet
       (after month!)
     * 2017-03-02 - Oracle - Sent information (for the first time) that they
       were actively working on this issue and asked me to keep it
       confidential until the end of April
     * 2017-03-02 - me - Rejected postponing disclosure date for another two
       months because one month should have been enough to fix the issue and
       users should have been informed about this vulnerability ASAP
     * 2017-03-02 - Oracle - Informed me that it is hard to fix the reported
       issue and requested everybody involved to keep this issue confidential
     * 2017-03-03 - me - Repeated rejection of postponing the disclosure date
       for another two months and offered them postponing the disclosure date
       for one week
     * 2017-03-03 - Oracle - Hasn't stated if they wanted to postpone the
       disclosure, but offered inclusion of my name into a credit section if
       I kept the issue confidential
     * 2017-03-11 - me - Announced to Oracle, Debian Security team, Red Hat
       Security team and SUSE Security team that final public disclosure is
       2017-03-17 (no more postponing)
     * 2017-03-17 - me - Announced the vulnerability to the oss-sec mailing
       list

   As you can see, communication with Oracle is very hard. For ordinary
   people without a big company standing behind them, it probably doesn't
   make any sense filing reports of security vulnerabilities. After one
   month, Oracle have done absolutely nothing. They even wanted to postpone
   the disclosure date for another two months as they are probably
   incompetent to handle the security issues in their products. The only
   thing which Oracle offered as a reward if I do not disclose this issue was
   an inclusion of my name to some Oracle credit section. It is probably the
   last thing which would a developer or a security expert want to see.

   Conclusion: Reporting bugs to Oracle is useless (even those which are
   security related) if you are not a Oracle customer. They can perfectly
   ignore any reports and they would be very happy if nobody knew about it so
   they don't have to fix the bugs. It looks like immediate public disclosure
   is the best responsible solution for the users as it is the only way how
   to protect them and let them know immediately what should be done if they
   are affected.

    Contact

   Email address: middle at riddle dot link

    References

     * Perl script riddle.pl - http://riddle.link/riddle.pl
     * CVE-2017-3305 -
       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-3305
     * BACKRONYM - http://backronym.fail/
     * MySQL 5.5.49 release notes -
       https://dev.mysql.com/doc/relnotes/mysql/5.5/en/news-5-5-49.html#mysqld-5-5-49-security
     * MySQL 5.6.30 release notes -
       https://dev.mysql.com/doc/relnotes/mysql/5.6/en/news-5-6-30.html#mysqld-5-6-30-security
     * MySQL Secure Password Authentication -
       https://dev.mysql.com/doc/internals/en/secure-password-authentication.html
     * MySQL mysql_connect_ssl_check() function -
       https://dev.mysql.com/doc/refman/5.5/en/mysql-ssl-set.html
     * SCRAM -
       https://en.wikipedia.org/wiki/Salted_Challenge_Response_Authentication_Mechanism

--fUYQa+Pmc3FrFX/N--
