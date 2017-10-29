X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3582" "Sunday" "29" "October" "2017" "14:00:36" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171029140036.53561667@pc1>" "97" "[oss-security] Drupal backup_migrate information leak (was Fw: Database mishandling at defectivebydesign.org)" nil nil nil "10" "2017102913:00:36" "[oss-security] Drupal backup_migrate information leak (was Fw: Database mishandling at defectivebydesign.org)" (number mark "U       hanno@hboeck Oct 29   97/3582  " thread-indent "\"[oss-security] Drupal backup_migrate information leak (was Fw: Database mishandling at defectivebydesign.org)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3304 invoked by uid 550); 29 Oct 2017 13:00:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3246 invoked from network); 29 Oct 2017 13:00:49 -0000
Date: Sun, 29 Oct 2017 14:00:36 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20171029140036.53561667@pc1>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Drupal backup_migrate information leak (was Fw: Database
 mishandling at defectivebydesign.org)

This comes down to a severe design flaw in how drupal handles private
files.

The doc for the module contains a warning, however it leads to a dead
link...
https://www.drupal.org/project/backup_migrate

Begin forwarded message:

Date: Fri, 27 Oct 2017 23:55:52 -0400
Subject: Database mishandling at defectivebydesign.org


Dear DefectiveByDesign.org supporter,

On Wednesday, October 25th, we received an email letting us know that
an old Drupal database backup file was publicly accessible on
defectivebydesign.org, a site operated by the Free Software
Foundation. This backup file contained contact information and other
details that should not have been public, submitted from 2007-2012.
You are receiving this message because the file included this email
address, possibly linked with other details listed below. We believe
it has been publicly accessible since 2012, though unadvertised, and
until recently, not indexed by search engines.

Within minutes of receiving the report, we removed the file and
started auditing defectivebydesign.org and the rest of our sites.

The file did not contain any passwords or password hashes, financial
information, mailing addresses, or information about users who
interacted with the site without ever logging in. While it is
certainly possible, we have seen no evidence that the file was
accessed by anyone other than the reporter and the search crawler, nor
republished anywhere else.

The file did include (from both real and spambot users' profiles):

  * ~28,000 email addresses;
  * user and contact names;
  * some IP addresses associated with comments on posts;
  * ~200 phone numbers;
  * some preferred language settings;
  * some information users shared about whether they participated in a
    particular campaign action (like a call-in), and
  * timestamps of users submitting data.

While some of this information was intended by users to be public,
some of it definitely was not.

I am deeply and personally sorry for this mistake. We know how
important your privacy is to you; we fight on your behalf every day
against restrictive and invasive technologies that threaten it.

We also don't believe in covering up our mistakes, so I wanted to let
you know as soon as possible that you were affected -- shortly after
we had finished our initial audit to make sure we understood the full
extent of the problem and fixed the most urgent issues.

Even though we are a small team, under pressure to move fast against
extremely large forces, this kind of mistake is absolutely
unacceptable. We have made many improvements in our security practices
since 2012, and in light of this failure will be taking a deeper look
at what else we need to do.

If you have any follow-up questions, please email us at
<sysadmin@fsf.org>, and CC me at <johns@fsf.org>.

On behalf of everyone here: We are sorry.

Thank you,=20=20
John Sullivan=20=20
Executive Director=20=20

P.S. If you are a Drupal site administrator using the backup-migrate
module, make sure to check your configuration settings to ensure
backup files are private. In just a few minutes of searching, we found
others who are making the same mistake we did.

--=20
* Follow us at <https://status.fsf.org/fsf>.=20
* Subscribe to our RSS feeds at <https://fsf.org/blogs/RSS>.
* Join us as an associate member at <https://www.fsf.org/jf>.

Sent from the Free Software Foundation,

51 Franklin St, Fifth Floor
Boston, Massachusetts 02110-1335
UNITED STATES



--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
