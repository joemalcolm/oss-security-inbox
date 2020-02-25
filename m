X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Tuesday" "25" "February" "2020" "03:06:36" "-0800" "Qualys Security Advisory" "qsa@qualys.com" nil "30" nil "^Cc:" nil nil "2" nil nil (number mark "        qsa@qualys.c Feb 25   30/1225  " thread-indent "\"Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26415 invoked by uid 550); 25 Feb 2020 10:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26394 invoked from network); 25 Feb 2020 10:16:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version : content-transfer-encoding; s=qualyscom;
 bh=wt7AtqjrArk/a/SE13Bv8GL7iqY1qv+N1aw2Jw5Tb5w=;
 b=d6hMD1RRXkKLsNC5Rmoly7ORamwZ7ot2e0htyAUX9fp8O7LlYHGGKiZDjm1Ed/OwkI6v
 kXq++NkzRMYzGSZ4d54f3zw24x1ystXLcEjDW1lpD3ZfYl4ZLnaNXCF4aEFHTaywk9OM
 yQO2tY+mVg95Tv/AbJjHKxfeQdfTdhAalJ7+nzkexzlUJlyA55Lm+hIy4iLXjxqQJvWm
 dzwVKzCMgwrsp2wMazv0ZALY8tXfgCts+Gs6Qkv7DFkyZI43yNOoojRcuXBt3fTlS1yS
 SVBAvld7rDLPy1M4N5SRrG4zGMa5JAGpqcMh7CGwVXcWP/TVUH0hDIi5sFryX1GslAI0 ow== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0whJmy/vgLWwGhJ3zVfmJvwcUJOHHZZ17hGPTykvC6Su6BgyWtkoKo61tRo139Kcic4brvKOJLaa0gmLH9GJsyqaTff592sCCHm7d8TfueFjJv6a1KMYWDYrUy4F/aXk3Oco6gX3C9PdSYL/9nQGHM7MovQKkwwtz2oYV4MXqMyKKt/XbFiCz34zc9Qxqwjgx0LwTC9b9fBYQ+36uvCZrgyfXwOAGSf6fe9bwGujDBcp/LMG4QLN7THT4PKoN0LAZl9NZeA0EEsdHRfomHxyHCrFo73i60cDBN/g6NkJ+sQwAmYTFuVbtbPn7Z4tHUrBw6oZ1R2M2uPRaO122n8Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wt7AtqjrArk/a/SE13Bv8GL7iqY1qv+N1aw2Jw5Tb5w=;
 b=oZDD7GYcH6Lfh+U2agS0ajUVkbD9q5O8fK3Ozg1P2L4Rp9pbkNkCRulYwzJWqTyKMja/2vIWUi5drkz6c7CMhRSOwM2Mv6t7x9jRNuTiYeIjlNL9g45g1+97npmskU7/Yf47tsbo6bi8m6zNQD3PFgP13PBppeRRGxv6N459CCoE97N/Nfe/T/mtyiuChFvnsHHOHroc76XutI+XwG2yWvMJv+GspuzkJvnaB3PKGmMEdEoFUt3oAeyiN5727eEMP0hlZk6W1NZZM8A7XPnN2OLr1/dK0ILJhtsSIc/hGSvLOc/iV8jkh4DkK6d8iKZotysg2/Y/odVctHRGa5Vi3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector2-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wt7AtqjrArk/a/SE13Bv8GL7iqY1qv+N1aw2Jw5Tb5w=;
 b=eUymweLfpGWmNWgqph5PzuiEP33dhfeHsk6vX4lrLkB2aslnSYgtjEdRSx/27JTTrDIs0kFHm/8vCGc5RQToRlEn4Rpn377M1AtQh8NNl4CwI94A+9DgxaYbN5bP1ovxpk+CH8JP1JOuXvoCIAIwPbMP+ftZxk1Hq5VwApnvXbc=
Message-ID: <20200225110636.GA23823@localhost.localdomain>
References: <20200224184538.GF17396@localhost.localdomain>
 <CAN_LGv3fr1pk3Xwp39Qv4mFv6b2xNw+pfo6Ban993FCQZoqfAA@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <CAN_LGv3fr1pk3Xwp39Qv4mFv6b2xNw+pfo6Ban993FCQZoqfAA@mail.gmail.com>
X-ClientProxiedBy: BYAPR05CA0060.namprd05.prod.outlook.com
 (2603:10b6:a03:74::37) To DM6PR06MB4090.namprd06.prod.outlook.com
 (2603:10b6:5:89::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Originating-IP: [165.193.18.162]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 654d0828-80de-43a9-f8b6-08d7b9dbc483
X-MS-TrafficTypeDiagnostic: DM6PR06MB5913:
X-Microsoft-Antispam-PRVS: 
	<DM6PR06MB5913E3A4433445FC0A1379F3D5ED0@DM6PR06MB5913.namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(66946007)(2906002)(478600001)(1076003)(81166006)(66476007)(956004)(81156014)(66556008)(86362001)(33656002)(8936002)(7696005)(52116002)(26005)(6666004)(186003)(55016002)(6916009)(16526019)(8676002)(9686003)(15650500001)(4326008)(316002)(6506007)(5660300002)(131040200001);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR06MB5913;H:DM6PR06MB4090.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: qualys.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	n5BBMgtyqAcsgtSvCBAB8LQKCWVbJWdF9W1iuE1khTYR/r7rIEH8uf78UQ3r53tZHYJ1SU5SBjHnCCpRslqLvscPYQ+qarjarVSJrkXarQR7bbWwf/NYb2bbm91WIIoe1/xZq+UUX2dTQyqYtDQm96W2ydc5Uz+5QpkVz+Etg72OH3VuOsDxXnPs52yhgycGRSl2l/2SgaRIq2WaDRA+OXA87k4ZAJmp2l4iVBErn1XZtk9c7aOwYbDawNO72FVga7ZPukLDLKsizrYmBC3Uwtu8uzWuOP1qsiwKeZNlFj1zPOZH3uCDRq5c2ynjK0b9QJBDhTNCxX/p8jv5IbYufC7iWrr0TLosKvWeRMJ/gI78xaAmiFdvtymXpdY3zAk2f/GOTgyB3GULl789YyeNlZwhYZogkZ0eUV4pigqEMtJ2sHW/6M99bcRra4pCDWgV+Wl2UFpLKXZkTmCep99chWwxFcOrcwhlro+CO9eY46SMp5Qii0wVWoEuAb8V1FNj
X-MS-Exchange-AntiSpam-MessageData: 
	jzYg9NZ0kgRagYy9rBuTkxRk3i9f2kjFRK9fR4+ljLaSUd/rFslAwZt6RbazPw2Zt5tf5obA2CB7eccgzKdcottlO92CBtiK+V4VHBzxw/6jeiv/j3VXh/SgipZlpYEt13zQGiG1O7al+7QvRJ0Y5g==
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 654d0828-80de-43a9-f8b6-08d7b9dbc483
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 10:16:24.3173
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m4+y3P04wp7JgxflKxQc0J9/qWKtdekHGeE7Gi8d+B/htZ1UpQZSAgsINBbBaef7nvYWtZyzKhdeOZBkm4ntqNs6CwKmNEB+owkymr/Bvcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5913
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:spf.salesforce.com include:sendgrid.net include:mktomail.com ~all
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-25_02:2020-02-21,2020-02-25 signatures=0
Cc: oss-security@lists.openwall.com
Date: Tue, 25 Feb 2020 03:06:36 -0800
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LPE and RCE in OpenSMTPD's default install
 (CVE-2020-8794)
To: "Alexander E. Patrakov" <patrakov@gmail.com>

Hi Alexander,

On Tue, Feb 25, 2020 at 12:54:50AM +0500, Alexander E. Patrakov wrote:
> Is the hole exploitable in this configuration?

If there is absolutely nothing else in your configuration file, you
should be fine. Still, we recommend that you patch as soon as possible;
just in case we missed an attack vector.

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
