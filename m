X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2035" "Tuesday" "11" "May" "2021" "03:39:45" "+0000" "Swamy Shivaganga Nagaraju" "gaswamy@microsoft.com" nil "84" "[oss-security] [Kubernetes] CVE-2021-25736: Windows kube-proxy LoadBalancer contention" nil nil nil "5" nil nil (number mark "U       gaswamy@micr May 11   84/2035  " thread-indent "\"[oss-security] [Kubernetes] CVE-2021-25736: Windows kube-proxy LoadBalancer contention\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [Kubernetes] CVE-2021-25736: Windows kube-proxy LoadBalancer contention" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30202 invoked by uid 550); 11 May 2021 06:10:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11274 invoked from network); 11 May 2021 03:39:59 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2hwaPBXucAkLv1JB6HmIukXUzyOb7AeUD5ysJuNEj6gGqpHp9mCBNrw5bGx3hI7r4VKmA87e8jTWUSDuh6RkMHLUxqjNwLdciS74Tzn6JQ8dOCD6Lf7kMzU/MAQLYXX8niKy8xMQuhBBfok3+sjTy3FhoVysOxoB4b36GEEUeGYoDpR7wRLZSycdPWNK+C/8r2Li4EQk1fyPQL/sz9m1+jPqcydXLdnyCLonXxlq3CwcrhtLobkER9wPwhBQa8lb+TtaMyjFoZjLpMdred5a09/HDXnWMOZ6Kp1I8ITQo8/GOBhO0m0uglfKFXEy2lTOzyp/C9jjzbiuf/2kpweFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpJFuRkL5WA9SHIT/s1TRPSuH2m3MuQEJ7e0ugBm4Eg=;
 b=O2C1qh9CVwnYgqc+eVoNbBB9Td/GijZgVx3TS3O95eShQlk8AFZnjqIkuK3tM2ufIgu/9srNAjetprN5KrIl5/+OrODFpmzMvWVcSU7XWux2omOqZ8KSZPKjfUmq1SeIcVknDUq7/w5AFKgSR67MxR1dcuoO8sLzQbnNFkbAkehsMgF/qmWlfMkcPSJb3PY6EMXbfGulLdEZ3gNL1s0IZO3vV6EQOwX/U/xukk1SMeNDaR65U6XwkY7K5oBfM+LMnKEuI6kWIywQJVdnMeuMSxZNY3y1kQ8oLk/YywtZ86ElDLnIzoeQniLQ2XFb0OudGkJBO3Q508zGVtSZH1DlYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpJFuRkL5WA9SHIT/s1TRPSuH2m3MuQEJ7e0ugBm4Eg=;
 b=CVvFV8U/7T8H66wuceaZoPxtB2dgrOHz/R18uDR/FB0uJshWN+ONYuj1g54kQclQKKQQrkR9f7HpalpHCbnmBD87gMn5kDjxfHS6qIu1dMI1OCrVzTA1GnFju2CAsd3Z2DjXcXBmMrnVKHJm3lCowu6P6kIljeboqFDgrHgoUDI=
From: Swamy Shivaganga Nagaraju <gaswamy@microsoft.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [Kubernetes] CVE-2021-25736: Windows kube-proxy LoadBalancer
 contention
Thread-Index: AddGF0eghKgs9aomSb67Zlqd/i3ZNw==
Date: Tue, 11 May 2021 03:39:45 +0000
Message-ID: 
 <MW4PR21MB1921FF91E9E9F1C1C133A28BB6539@MW4PR21MB1921.namprd21.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=79551487-bab7-4ac5-80c7-468183c9ff93;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-05-11T03:16:13Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=microsoft.com;
x-originating-ip: [73.83.47.152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a67b7ae-861e-4fd3-e853-08d9142e6bc3
x-ms-traffictypediagnostic: MWHPR21MB0477:
x-microsoft-antispam-prvs: 
 <MWHPR21MB0477A75F91257F0F9549C73FB6539@MWHPR21MB0477.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Zusj6d7Hnz1VidtAgaGaRIkYa9X3eVnVhJDOAvF0fwKtY/bv2r7rn7xntbO46HtEKQuLvmGioVOExpcW1StkO0v4weYsB/zAKYsAnszUwFIt3tTvzVUppoBMwW40sksjETyThdhpWfFNV95suK94zS8nu/1/UuACdGPzQKM5eYaoZxoQe/1RXktqKJNV9NoAedOJqhDdg0pPbmLY10Q2CMcMOok3x0WOqzeMQx6+98NJ2vgpY0VG/geGsPkjnsJey1BDSS4LD1mucM10xuDwafBP9+jdM9rf3Mjgb1JBDsixKuoOqOrbwCoyY/4sJNWJZFwsF0SoQwFqvPNWSmOm/q4WSlAWjZ8WKypxmMbuEIm30OXwW3odHliLkB/PvP1p0YESW/GqOXa8nUnBfLKAuYbvUVcZU2BjHqR+sJtgL3fAJZWDraG/FPhbUG6f3toIdygU7/T15m8u1t1e0DT3dvfKpgYqiPfITqtBnq2f4/QWeZqzVEDau5krE0A10zdL+YqfHwXl1O/vNWAH7oUcq11rDo9XuJSUIpkex4qLkABXxV16S69cXXFrQDr++1dEYx5bVfBIMCypfRvG90Bncs+plp3o3W0CMQz7KUDosrkfdvqDqNDdLZlCiUXaB0/RbZTnPGRqO9bl/jkOwQ+xyEnQ9D/i5aYx0w9jxMGOyvExCMyQMWaeeB1UXQfmXiHAX0nmF57nzPozUd2FpaAIQeZ6fvlkLNfwodKcwgTabVl3PZTecUKyQKUUM7GpEaBLCIM3hpFm1lVX0XgbZ9BEhA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR21MB1921.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(86362001)(66476007)(66556008)(5660300002)(10290500003)(478600001)(64756008)(6916009)(122000001)(26005)(2906002)(7696005)(9686003)(66446008)(55016002)(966005)(316002)(8936002)(166002)(66946007)(71200400001)(76116006)(82950400001)(82960400001)(33656002)(83380400001)(8990500004)(8676002)(186003)(52536014)(6506007)(574254001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?iV9iPDKYtDeDc9e/EKlYRzVID4o71HxAQlwbSQdYKt0DMNzMrbUQvjad6MRg?=
 =?us-ascii?Q?NUXoeCVz8pbEy0VZG8GKpxk0Kx3UAYrH6k2B4ttp1zVP2Ifr6HxN2MoPHpbm?=
 =?us-ascii?Q?T1gVXf9UJK0S/uSPSmal02SaqEHZDkDK8Q04xdVdcyIMIS0KYprZrzJPqTe+?=
 =?us-ascii?Q?D6FHLCaJ6WadyBP4Vwg9/zFCAaI9c6Augg32g5E57Ys3khsVM/g4iFXOMBqb?=
 =?us-ascii?Q?2lm6UpJm8Agczs+oBCD9wT4jFsg8UWPBjwt/nCNbJR6ERWeNTT/93gjCxGxd?=
 =?us-ascii?Q?txeG6yWCm1p/lJO0IvYbxz8BF8ytUgbbsRv6M7+SfuCz9z47P6vFz6W/wMDx?=
 =?us-ascii?Q?CvS55fi5iBOaxbxof8yil/ZdidfCdShw/3kHXwYtYYK7pmikqRZHnDzAq4kB?=
 =?us-ascii?Q?LxQXULIfePxH5dcMZ4yPFrqzFVATF+fspzj0bPB2NiilP2fomkiUujB82Hy6?=
 =?us-ascii?Q?mEt9nsHZplPHJ71xzNtMloY48yYu1XNGKIKdIRNBZ3AcQiCvxfKn7pSiR6DW?=
 =?us-ascii?Q?k3/dA56qk5fNVYegcsFW7wuZGGZmfuGQ/+5TUQpNWiDoW+fsasa8OQffv7u3?=
 =?us-ascii?Q?0bdJqeHeDnbG1ZeE8gawtBfwie2YXuc5wgOO3hbJjCcIryrBx5IbUAz4PMWj?=
 =?us-ascii?Q?pdt8QLnhnh1VYZ84LxrMHwekymcex6U7WvxftoRPv3+h6eas5GakA6oc5ZLC?=
 =?us-ascii?Q?R2cE/+ODRTh6dk7KnRHldnWENXKbRb6NUTbFPPVkcoMHaNQJGdR5DKMO9L1k?=
 =?us-ascii?Q?+ZqPzJtxrT7GNwJF1Ev7swUsEG82AkNVdrv4f4VgLnhky1HC58VTYqi6xH9h?=
 =?us-ascii?Q?g/8DAu9BAijGMGDItwG/TV2ESFx8st9ziLnkRNYxfTbCObgjC3pG8MXFjLB0?=
 =?us-ascii?Q?tbeUwQE0+vsIG/JLMZ7zXUDE5rQroIB//mLSZJdDOMQD1ve+S+tJsrSceGPE?=
 =?us-ascii?Q?HPOWt7aDdLAH6/d5vXxTqWBUNcwLspY957d2hX1X?=
x-ms-exchange-antispam-messagedata-1: 
 1BG7xaih+6038wrSFKlmoDHuIUZfEQoq+hbp0i3nfkfqGKiwsLWQM0fgyaK6TRTdOEIUsd0TFJgMMsm+uI/+5Gtv6Q1O7MVPWEN6QnhtEIjbW5hqngi/eDSxJxf46T7hlSFgxyyNo2rH4ul6OqSEOLIveIKZbKfpkpvGuxsrxfLDxP42w1MdtvRZycyVApZr2lnWmcgP9B/1q6OM02sr+NCzOx8OxXj5Blu4kGlAzdOrAzK+LsHorvTrI8uIscIYmz10nDUuZjVlRK7bbTEu3ph9Aj6lmdk8Qap+gbCgBqzMXAjSGuNuFIKfAWW9yE2qhsA/m7vmmeKf9LGuVz0rqAMl
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_MW4PR21MB1921FF91E9E9F1C1C133A28BB6539MW4PR21MB1921namp_"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR21MB1921.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a67b7ae-861e-4fd3-e853-08d9142e6bc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2021 03:39:45.7901
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JNV1b8Bu0zsZ36/ZGELjlJ3t61vUigJs5ctOEMmxWtXifYfOaFpNPsG+Ax+QQgctQ5sKE6zJMjHB+uJxCk11Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0477
Subject: [oss-security] [Kubernetes] CVE-2021-25736: Windows kube-proxy LoadBalancer
 contention

--_000_MW4PR21MB1921FF91E9E9F1C1C133A28BB6539MW4PR21MB1921namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

A security issue was discovered in the Windows version of kube-proxy where =
a process on a Node may be able to accept traffic intended for a LoadBalanc=
er Service. Clusters without Windows nodes are unaffected.


This issue has been rated Medium (CVSS:3.0/AV:N/AC:H/PR:H/UI:N/S:C/C:H/I:N/=
A:N<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:H/PR:H/UI:N/=
S:C/C:H/I:N/A:N>)), and assigned CVE-2021-25736.



Kube-proxy on Windows can unintentionally forward traffic to local processe=
s listening on the same port ("spec.ports[*].port") as a LoadBalancer Servi=
ce when the LoadBalancer controller does not set the "status.loadBalancer.i=
ngress[].ip" field. Clusters where the LoadBalancer controller sets the "st=
atus.loadBalancer.ingress[].ip" field are unaffected.



Affected Components and Configurations

Windows kube-proxy. Clusters with Windows nodes are affected by this vulner=
ability.



Affected Versions

  *   Kubernetes <=3D v1.20.5
  *   Kubernetes <=3D v1.19.9
  *   Kubernetes <=3D v1.18.17



Fixed Versions

This issue has been fixed in the following versions:

  *   v1.21.0
  *   v1.20.6
  *   v1.19.10
  *   v1.18.18



Mitigations

None

Detection

Unexpected processes listening on the same port as used by a LoadBalancer s=
ervice could indicate exploitation of this issue, and should be investigate=
d.

If you find evidence that this vulnerability has been exploited, please con=
tact security@kubernetes.io<mailto:security@kubernetes.io>

Additional Details
See the GitHub issue for more details: https://github.com/kubernetes/kubern=
etes/pull/99958

Acknowledgements

This vulnerability was discovered by  Eric Paris & Christian Hernandez from=
 Red Hat.





Thank You,

  Swamy Shivaganga Nagaraju, on behalf of the Kubernetes Product Security C=
ommittee


--_000_MW4PR21MB1921FF91E9E9F1C1C133A28BB6539MW4PR21MB1921namp_--
