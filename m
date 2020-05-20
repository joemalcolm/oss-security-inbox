X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1257" "Wednesday" "20" "May" "2020" "10:39:17" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20200520173917.GA1134@localhost.localdomain>" "33" "Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)" "^Cc:" nil nil "5" "2020052017:39:17" "[oss-security] Remote Code Execution in qmail (CVE-2005-1513)" (number mark "        qsa@qualys.c May 20   33/1257  " thread-indent "\"Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)\"\n") "<CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>" ("<20200519170506.GC22032@localhost.localdomain>" "<CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17769 invoked by uid 550); 20 May 2020 17:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17748 invoked from network); 20 May 2020 17:50:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version : content-transfer-encoding; s=qualyscom;
 bh=ERjfgGJHhsBVYzwqcj7KXt6oKfoVWXNB9weUoorZ3Vs=;
 b=0sfDDkEHPRD3mjhqS7TrE7bgQcyar/Evurd4VZLpWAg8Ctm1LJdVhQTwuuct7ewgg1LH
 C5xhRsPGnosRWRNzmTRWazNOohhzWniNPtMcwr0GPlCg8wWSt1+IVNls3MOTKZDK2QJr
 HSETvsq8iVGP90HI4Uk6Ad89ZmgEeqoo2HLrnsDs2TSLySF7BJArcPDJjaK98rK4nPfM
 uMjkKE9bDHIvXh7FyJnSZPgMpAKGx7yh7RCDV/jv7phYHMUcUj0XSxH6mvFavWnSfC1k
 cR8qf8BhQM3X3MuhodQpyv+MqRQuh/XrSP0iVoNwnZ5JkqRFzNiBh9MC5kMtI89VM5Rd 1w== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AHtPtMnvNfLgdUaJUXYundv72YswwPC74GjjToqPsqWaqX+iNTupBJb6LWcNL58isPLuIAyw6l/9/yu6IWXJANP+SKB/4AJfXrc9/Nclqt0LjWhYVLJidx3Uoeqe5ErheYiFRncZlVpso1fAl1lSSqjSUyzArto2GB9hC9RRhsHmxcxcZKoaK1QCa93BuU4Z9RX3sSuO3w/gs2TVHLhbkLEC6D05wIUtpZlPBf3ul8UgAa3rOLbEKjsXgXYWCIO9au2tCWUdLa2f3kG5fAId82cRYThUFzlWuqMYdvfpzcuwgfz2W+K0fb6RRpkB0DpJTeco1WOCbRZQsyLo92JEjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERjfgGJHhsBVYzwqcj7KXt6oKfoVWXNB9weUoorZ3Vs=;
 b=gG8ppXA6Nhw62rZPjwUCGtkPFnQUl3SagyfxBfALkfmDSWxo/7uG7MiwLNm41lHIq8c+KJugSRoP+5zyQrJ6QuwU4SqrHEsh294ApiBIQ1rX0k9nadSbVAbPzeu9134eAVbgI36KPcqKELbmgo3qO2en8y7SoQsgejyoE/kozyLBEYc0fyzzEPu2JjEoK3BZW47q5bPDiDJ2QMq05ykUSFfFJ61DcNcwkkq1sPf8jcmjtdZ96/kLkZ1dFr1v1Y8jxaGns7Ku8fXuRrkA+s9Io2A3DZ6/C3isRUDArEqrNxHNEooAeU3lWGpQHoV3I66KUCfrfrl1I0o0p3HsukSWoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERjfgGJHhsBVYzwqcj7KXt6oKfoVWXNB9weUoorZ3Vs=;
 b=ueX+omRunNFNobBhnVZ4+JZeWH8HM7tEo+u+6glE31yhGwTaLZZemBKPvIS96XYg6GgYIhUQ6asYenqzUIjoKgIsEA0ULCyMkXYS4+BZnRG+6HaCyBT6J2cNNrxi5KdHd3rZQ7TlATbB9t+T1dXPWuCop8Nts4UmZze6ub2GijxQ48TumOa/TBj/spH24YQPMF9mUYFxOG5TlNx7+RH1MkwcuGQ9dCqO0F12azbrHYid8Uyhhid52sPhGJy/j7jT/C1G+Qas5vleLHtRcAU7LlLA/JFPnFG7tzn7VE/MUDPJuvXgBMPgk0Caz61Ii5liMCKtBMwtFTMoYt5GV4cg3w==
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=qualys.com;
Message-ID: <20200520173917.GA1134@localhost.localdomain>
References: <20200519170506.GC22032@localhost.localdomain>
 <CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <CAGUWgD9TP+wyFuUaPpeA1pMv=yLcTUdw1JXmgXxS_WjDChj40A@mail.gmail.com>
X-ClientProxiedBy: BY5PR20CA0004.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::17) To SN6PR06MB4830.namprd06.prod.outlook.com
 (2603:10b6:805:c8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22cf2014-7e69-4826-b908-08d7fce636e1
X-MS-TrafficTypeDiagnostic: SN6PR06MB4430:
X-Microsoft-Antispam-PRVS: 
	<SN6PR06MB44302F953DC123C61CCAD8D7D5B60@SN6PR06MB4430.namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EpMw/1RbZu4idO2OI4tVWvLcdOntrEqynjHrrSPeJWhgT+3516cgmDK7ypXT/apEIY1u6n/a0qFIs73xHtYtdfj40VWLzExVoeY7PydRBsSWORrM0jRB5VFc6TPPdy2GnKAKzDWKOrfoWqIEbjaOs0mqU8DNAuOqeOsdnAtx9J56NfuTYWRNcKrBiPEBuJrNKyMsI6ut5mCP6y/ffIV1dESE4BayHBi+1Fy555nYcBed5B7IpFyH4Ib+iFCwdYJUgNeuzii4sLDQkjx2DLok1PZqfa35ICnYYs0VDfNdDzLYkjnf9zKrjU0r5ELU1NapaRuHbcopWWxOJ2EkESoHq5JxeRtxMW892FZAkacTnt6vgPlMlhftnV62A9iu4spa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR06MB4830.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(396003)(376002)(39860400002)(346002)(366004)(5660300002)(956004)(316002)(1076003)(26005)(15650500001)(16526019)(186003)(8936002)(6916009)(8676002)(66556008)(4326008)(6506007)(2906002)(33656002)(478600001)(52116002)(6666004)(66476007)(86362001)(7696005)(66946007)(55016002)(9686003)(131040200001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	DTdogJ4fa2l8SDxMrLuQil+ZJR7xkvDUTUXLflSQEudeBp2pQT28ngREUveEcHUywfTtkyjoH2KvqoL2RXQGDJeQE83N5weEhDl5fryolpeqeXopVl/Nq//NL6k8lM6qos/s9cKdXxT4PYh1qUUWgNHKfkqIgBAiTbvk+FFlf160AhpHLS/tcBrAAffAdHvJJM1OJotYERLMZXn1X5s+9VA40c7C/GLu9l0D9vVxtV93gqUjnAzhaN0rVj//NaXDlJhYB6KFjLnrp6IDZZ2YPjihDevKDcTNmHyYM2Ydxsjp/+6uS9KFrPbocVutqT8nUBh3d+hdU2CzLPDYSkyPP9si+J4XyparLIDzWYltxa30HpHOn4TRW50Y1s8eTZDDoTtCUm9OBFRn8m1jWWCo9wWB/fFBMu3/lQRcJ8fptpHIgAZDZ4ygCpDBovMxHoqBR8J5LT25fK4STmRy9pXsScHcyAOKAmnsJQMC7vLMghQ=
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22cf2014-7e69-4826-b908-08d7fce636e1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 17:49:59.1843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qQ/u+OoDea6oF4kZ1PmIG5EH2zc8NrkZoCnwj7sil3p7wfAn/H4qUs76q9RW6JAtT4kP5gTWI7QoW0Q+iNeWDTwX8t+e0nrGqatpm+1QS3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB4430
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10436:6.0.216,18.0.676
 definitions=2020-05-20_14:2020-05-20,2020-05-20 signatures=0
Cc: oss-security@lists.openwall.com
Date: Wed, 20 May 2020 10:39:17 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Remote Code Execution in qmail (CVE-2005-1513)
To: Georgi Guninski <gguninski@gmail.com>

Hi Georgi,

On Wed, May 20, 2020 at 11:54:06AM +0300, Georgi Guninski wrote:
> Did djb award you monetary bounty?

No, he considers that this is a vulnerability in the OS startup scripts,
not in qmail itself. In any case, the bug bounty would be yours, of
course.

Thanks again for all your security research, and your qmail research in
particular!

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
