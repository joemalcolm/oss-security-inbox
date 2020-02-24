X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8013" "Monday" "24" "February" "2020" "10:45:38" "-0800" "Qualys Security Advisory" "qsa@qualys.com" nil "186" nil "^Date:" nil nil "2" nil nil (number mark "U       qsa@qualys.c Feb 24  186/8013  " thread-indent "\"[oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21784 invoked by uid 550); 24 Feb 2020 17:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21766 invoked from network); 24 Feb 2020 17:55:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to :
 subject : message-id : content-type : mime-version :
 content-transfer-encoding; s=qualyscom;
 bh=AwTunkUB6adEqzUpqlN9yBM1Xx9evfpOSdqM1dIVJcY=;
 b=bva+Ct8xRsIgjIVQAXdxav9/BanC9RLj3tDQdbSX5OOfNClWG8RboEh+mpe+siCY0ueC
 zbOv1UcjEuKafm1VrxgmrJcoLiYE3cgsTbikETkFV9C+piWgzZISqRxjYUVt1MFI9J8p
 x2dQo2THSofITUPdJbBoBiuoiGLs+Jq6m/dN+MqX3zxtwF9qWlJmmdl7GnN+kpOp4C04
 AdbOtzDdXQyECwdUnk4LJ5ep5J+o0uKOOkx+MSpjox9P7RV7Pa4UGOkZniCTFlt3oQ/z
 PsF7rh9tYYXiSL+y8TePJQEmrzjrbiJl6eLPdz1xgKkiYt7QiiNT4H2XCbUZ4PJrrjXt Hw== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PbiCMNQMnnR66k5U7eizaS0btHkO3fjT0N9Y5NEblTSS652UME5K0VzWRHkPaVOG1yTpazn0SBa0k8WQhErdrZyKVA9fAN5BwhJ9mkcI99ZUccFL5droYmALbkTuMTMDt69qPMZ7JSEtmupj0KVzq1XpI0TMKF9Z7oWjwCMcYP7CUBPsNT1Ud1IZGVyJzbW0uWVl6be/ZxHAaf799yhTJcDTbCuF5I4bCK0jj4gsVNUwRm3rVlNweILzFCrUEqozU8dZ8L45v/ZwCr9UH3U8mmPslfDws2jv+abuGq3eZiEzmrfMMfqB4Yoc+TBSbxw7ojuKEO0CyzbdXC/7VyitMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwTunkUB6adEqzUpqlN9yBM1Xx9evfpOSdqM1dIVJcY=;
 b=oMgysaqpcjjZJ5cX54e7xd7zzV6llf5V2UvAjqxKMtc2AWHwGl1CvL23PiqKVw/gsj/oFTuSEjc9PjW1E+2B8M29MUaOQDAg/100c7N0w6qnxtp827PPKcl4SFbGFyEr46ZtqTpUHWBcZUIhMt2niC9cYD4mSn0O6o6DTUTa1s5L9Yq3FmC3Of7dUHYcrrzsfYtDtewOWiWLtDxAc7Nf5C3yxrd1c+z0HnD/D6JylWDHpf8c7CmZFAylxMfUjNKKViFy/kAIn8MM3tYPSYj7lLYcpcMZJVDSTUFAXjW4jnX01LWjb21k2w2ajL7s90sM8lLDBuONnylaSWq95DOqHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwTunkUB6adEqzUpqlN9yBM1Xx9evfpOSdqM1dIVJcY=;
 b=HXWUHLlEummfze20J30AUTEqLgaITQljVjrklyOA/YUPP25KkS6CRrb//aYVKRBtLJ7NvEGPdShzvFKy48ND6ZDWE6haJQRPHLFB7AMC7pbl3960f8Z5CRJGKjhI7w+ve4HeZDdcMyCc2KFTtrbPP+mbp2yFUC+3JrWbxerqxgY=
Message-ID: <20200224184538.GF17396@localhost.localdomain>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To DM6PR06MB4090.namprd06.prod.outlook.com
 (2603:10b6:5:89::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f78ba59-5bd3-4374-cdb4-08d7b952b9be
X-MS-TrafficTypeDiagnostic: DM6PR06MB5964:
X-Microsoft-Antispam-PRVS: 
	<DM6PR06MB59647D62CB434698C5C2CBF0D5EC0@DM6PR06MB5964.namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:586;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(4636009)(366004)(346002)(39850400004)(396003)(376002)(136003)(189003)(199004)(478600001)(8676002)(33656002)(81166006)(6666004)(186003)(81156014)(16526019)(7696005)(6916009)(52116002)(8936002)(956004)(26005)(6506007)(2906002)(55016002)(86362001)(66556008)(66946007)(9686003)(1076003)(5660300002)(66476007)(316002)(131040200001);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR06MB5964;H:DM6PR06MB4090.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: qualys.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Nm827BjgM0nqII8JtNwUFyFPJvTWFxtgrB/OpTrfNu0rn4e94W4pkinm0/PR9D/E0VhM0uemrtkMA/ocRmo5O5bfO4Yn3OJcAW/rMJbmMb2ANm1Lk0jOLjDL4pC8dgspDxcKcCRZWerkHOOjIcOw8wZj/++vRUV6fVF1JcZDWRVIZZI9d3L+VSIkpgoQEdJZ7E5xXJlh+pqCfOK/H2fip4bpDWUOUYKfZcFo/7yMsNEWq4166tkDgrBYX4wI+qCmRgzbrvHMClgcQ9P4XbvHOAC70E4aXn3CMLW9xPxkU6VBhI5ZgHeyn0HbQe0bek8BlipiWPo3etjVFWktm7VMIbFYHorwmJ8IyyOTRR/mqhI5fI3xzoyQblSybS7uZjYnkC+M6JMU8oRdql7Nm72yIIFkXPJUL0pHGGsVo9NR85go/ozWULoG+DYimgsh3mjUaLgdOQ/dPPhGphuWHqgbapTaF4YIjMmwTlIuBDC1qd579K3U461DVM3UsQ/Q5XfE
X-MS-Exchange-AntiSpam-MessageData: 
	qcDRDcr4iU23NbU0ExBv/sMUubeujVo1OJkLNYmnIS9UBnG4O9VDeHxyP3L8zbW4e8Q3TCj59/WKD7Y4PkzNoIlWYgNHfMyOSDmX22yNB47QT79Wj9qwOEGH3/fDrFdjqPrfleJfV4KqtD5vcyQBmA==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f78ba59-5bd3-4374-cdb4-08d7b952b9be
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:55:25.2999
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OCZ9FCDk4YLH8BreamSt5p/F+FCneqYcM0ojHvggtyTEOo0siBH6JT22uTda/1o514mgfFnxQ92o+YgbEWy9ng7iMWrGa+oNcSnPitbdOeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5964
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-24_07:2020-02-21,2020-02-24 signatures=0
Date: Mon, 24 Feb 2020 10:45:38 -0800
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
To: oss-security@lists.openwall.com


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
...
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

...


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
