X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2701" "Tuesday" "19" "May" "2020" "10:25:25" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20200519172525.GF22032@localhost.localdomain>" "71" "[oss-security] qmail: short/int vs. gid_t" "^Date:" nil nil "5" "2020051917:25:25" "[oss-security] qmail: short/int vs. gid_t" (number mark "        qsa@qualys.c May 19   71/2701  " thread-indent "\"[oss-security] qmail: short/int vs. gid_t\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] qmail: short/int vs. gid_t" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23641 invoked by uid 550); 19 May 2020 17:36:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23611 invoked from network); 19 May 2020 17:36:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to :
 subject : message-id : content-type : mime-version :
 content-transfer-encoding; s=qualyscom;
 bh=kaH9yEWGuaeOcocmBoQscGBjmPQLKe26XoOlV1EF68g=;
 b=sufIt7sqxrhicsYSVzrAVxQq2pVyV4maKbXhDrPitW0KZvaKSpGsdrp2m0lTSMfNm1nB
 H/t7DTECfApQOJEqiZThi4NLKyfDvJrDsw9iPyKl9rS3ZTC5P4NrvmEIba0onRVABo2i
 eBwE9WKRY1CULl7qkToR/Eq5kkPxS+ykdmS6dcIBmR+zpI1PgWbqnMdTXCq5ARMUJNgP
 nB56v/QgtNbvt6/ieXrY+UEDC/VFsT9x7LAQkU6BsXzzTDYTeIwWf5LAOciT2lW1MZyv
 u80+El8qu7tzuU46kaD2dxG1XJfZbjV/tp2eMg5r2pSd0+gnUaU50vMrcdu8n3E70ein tg== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxYkwAuem2q6P4VpvtC6Wgf8RBav55MXLBI2BMT+vnzbNdhfrsQM/RUiwMrjtD6a+Fpz/PSNVN6/p2NFHuv/ZldXpoxhS+ya2b4ikRnnL+Pixeobr5KjkwGlKCe86/bmeh7R0AZaU18ElwRO+oKCEbDz9XaOiCR3+dDzLAQ3EIAkfbvts90ci7mtbpnKoS+aDW0OKdIEB5U0VgbVPKH7oeGFvJAyLSu9QBpKJqDTZ2uctm2DZILyeE1p4Fhqwg0oBO7Yw3Ewf/AfCI5Um3FrvJLicUGMBL/zYQ6EwbBfM2PoNSaWBcydaM01MVR69ADwRf3zkUAlMCXlqJBNKT8o8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kaH9yEWGuaeOcocmBoQscGBjmPQLKe26XoOlV1EF68g=;
 b=iE0UcLJThaWITIb0pyzTL8/W0gMtY8j5ScPdPWXAlsumlMyVt8j4P/TN3ZxrFYnCNprBxvH1lf5yYSELKQK/uFjN5ceNto2obP786q7rFSrXvkFLPXk3ZCsGH2qfJSNtwZG2G2+K9sYYOyM9qLdD52A5T+0WF85uHhze0M8yTztCLHaE1z8xzWCT4dhudvnbrokjMnv/wg3+2UolINNlMhvJ/IapPdFO+DgzkoMZZ/ohW1bpSiZDiVMko5iNgw7lIMeUwrkvJz8SACIgO1gYD+BDpIC++Gs37ozxsyHj7mw4jEJFIAmICxhZ6ZM6Q0+FDN1FMr+1zuVTeIdpHVs3lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kaH9yEWGuaeOcocmBoQscGBjmPQLKe26XoOlV1EF68g=;
 b=T/1qr/6ptSgfJTelR7PdPiTBIhZ16BqYfBDMXPmvAmsUb3YbYRFvlpIWcny82CAFyHPIALUfOuNsIrsiHeKTke401lUO8lhNf971tIFYPoK/XtuDLXTw7G+Dmmfb+ZgGfctiamvT4ludAdEDDEjEu3XIfJNdwxpst2LeBsnIGPS1Z0iX1iyIVrryUDygHeM4JUelTK6qU0z//99CP0mT/Gjs9JZUsuiPqnqWRZjodR/0PfBbMAD+LjrakxH2sJzNz+atwTSjiUcp5vmwsKTgvznTYPREnPpiJZf9Ojj4jcG63QXCnQBpKVOXF0IPiciVlB9XxTm7iAe5M++BGkD40w==
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=qualys.com;
Message-ID: <20200519172525.GF22032@localhost.localdomain>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR08CA0041.namprd08.prod.outlook.com
 (2603:10b6:a03:117::18) To SN6PR06MB4830.namprd06.prod.outlook.com
 (2603:10b6:805:c8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 14623976-e8d5-4787-f066-08d7fc1b1b65
X-MS-TrafficTypeDiagnostic: SN6PR06MB3869:
X-Microsoft-Antispam-PRVS: 
	<SN6PR06MB38699B3FB62D31A170A73DCAD5B90@SN6PR06MB3869.namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dlq014pO9QxwHrNPWRlj93uYRcO6+fwFFlJsq/YJk/ul5brJF/tXNivOQtmjSbdkmjp93HkoRRtjpUhTlZG6xENl/YxskPcIPzjA5wlsATBkGOmX0aKlh0X3Cw40SPXZ0VoyRGZNIYyO7I2ob9h0tLZfl5swsddkCjxG15iPqE75xBNUUQk8yZTYKD71ml4rwie+2517sLCuho5JQWjO2VbKmkKbc7G/zt14Bgy8r8FzORThfEHw/cf2r7+EaEKon6/7qbSDTkqfHWXl6NH+t63p2JLAz+o3xPgQpMRbT8OlhmvvmBvojhVnhcFVv330p7xyet68CgCk2XWAZOG1df31d9o1Ldb6EGuBBupcQt2RCsqNubPt46xYl7IiVI6B4V19eDAj6LEFOmz+4sr1egGE66iL/H7nLxImu5q8azwBTakfR+nufQ1A2MA1uCH5gefg0m1VrrCpojWrrBakVgmnbcdUEai0xK5kO7q/e8Zdzlim1N6WZYVZij7Z7B/dA+lo6/MH6dLUv5dw3U9GCxFJEvchk7SZ3IG4glBybqiVIgao2pVEvhOd/2b6ipeNuoHc/RUG5KcjTSxlM1OpKkONK3deshytDb1I6DWQTpc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4830.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(39860400002)(396003)(346002)(376002)(136003)(66946007)(6666004)(6506007)(16526019)(26005)(66476007)(186003)(66556008)(1076003)(966005)(478600001)(5660300002)(8936002)(956004)(9686003)(33656002)(2906002)(86362001)(6916009)(52116002)(316002)(55016002)(8676002)(7696005)(21314003)(131040200001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	1eFtKCXB4TRthU4NMfWGVIx0HvC6bXY0yK2hrQoI/YHUC66c6thkz9TIiVFzf3Smu2mrgwqDOCtc9yzhfeagr1VNPdEyZutojKAKp8XprCEkQ/6eBjsIwSv0lcou3B3DkePumfdyhx9IlMJgWOLT0OmCp0Bo2JXlLeUwjdX4a20cYLrMqWjc8+6tQ6k5DE7mV04QcFZaEFW8aKPWJl7wMYqzmcFvLDR9eunQwwIqOLhW9NLXsy6Ts9Y5i6sorKdVTQ7eKgLK/zaOSNKk3fRJl9rIJ0VX92SNtrOnl5rkjZ7n6/ylvHPSLzodTodLojQROsdcqfRtBuE7TQTW9F0NqbZ1QeTC7oK6NK0sTWNX0UEM3rXiDF2Ko6hlClnn/XoQVp4xWgOK8uOW7iqaeYrCymFBu8hQiBEO9XfJxsVMdUd8lXppiYmFH89bzeB/wY+GszXeYgbnl+iVdjbeI8sOn2fNJAcDsURTdols8zEXXWbNExygM+G7ykhHyTn48FFY
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14623976-e8d5-4787-f066-08d7fc1b1b65
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 17:36:05.1405
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cs2abMS6KxmkTmuv6wGk/lEeW73mwG9e3nHEv5ZqQOP4JAxmObkSAx6qX3jjGGF1ZMzJB0Gs4Yownm6rK/pw2nUSTA7uD+nBy5Ee7/Ahse0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB3869
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10436:6.0.216,18.0.676
 definitions=2020-05-19_06:2020-05-19,2020-05-19 signatures=0
Date: Tue, 19 May 2020 10:25:25 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] qmail: short/int vs. gid_t
To: oss-security@lists.openwall.com

Hi all,

While discussing the qmail vulnerabilities on distros@openwall, we also
discussed the following issue (which exists in qmail and in related
software such as checkpassword):

On Thu, May 07, 2020 at 05:39:18PM +0200, Solar Designer wrote:
> BTW, how about this piece in qmail 1.03? -
>
> /* XXX: there are more portability problems here waiting to leap out at m=
e */
>
> int prot_gid(gid) int gid;
> {
> #ifdef HASSHORTSETGROUPS
>   short x[2];
>   x[0] =3D gid; x[1] =3D 73; /* catch errors */
>   if (setgroups(1,x) =3D=3D -1) return -1;
> #else
>   if (setgroups(1,&gid) =3D=3D -1) return -1;
> #endif
>   return setgid(gid); /* _should_ be redundant, but on some systems it is=
n't */
> }
>
> As you can see, this tries to workaround ancient systems where the size
> of groups array elements might not be reliably known.  However, notice
> that none of the compile-time options uses gid_t.  If the size of gid_t
> doesn't match either "short" or "int" (whichever is chosen at compile
> time above), this might set a wrong supplementary group, especially on
> big-endian architectures.
>
> The workaround with setting two groups array elements is rather common -
> I used that one myself - but it's only safe on modern systems when used
> along with gid_t (so the extra element is guaranteed to be ignored when
> the workaround is unneeded).
>
> You might want to check how this function changed(?) in currently
> maintained qmail forks, and suggest they use gid_t if not already.
>
> I guess original qmail didn't use gid_t so that it'd build on systems
> that don't define this type.  Supporting those systems should be
> unneeded now.

The developers of notqmail have been working on a fix for this issue:

    https://github.com/notqmail/notqmail/pull/72

Thank you very much!

With best regards,

--
the Qualys Security Advisory team


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
