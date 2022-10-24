Received: (qmail 3863 invoked by uid 550); 24 Oct 2022 17:17:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1043 invoked from network); 24 Oct 2022 17:11:39 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i527I51jT6TWrDlxX18sPrnxq7qjzZLfmlV5d724+S4Mzi+zrxxkab4GcLjhciZ/q3bPaIpRsxlQW1o/jvAEuIaLqyUz7WGmyDkINFHW2JcWFcDVF/JZVmOcnZ9gPGLfoc/FBIrBcpTwDmOcntPlrUQ2IkCr3P70WdLqXLpDKiY7l8h1yFNViznQaChXG3G7Ms65AB7G6TpnwKQmLviRjErebGjKHxjFUCqwP371+A00GkJfc+wDgLOxphE4Dm7Fzd+JNJbDL9kKTDJdBfgb0YfC01AkSlTqqZpq7KVQC3HBW1M+fUHWZk/JP3StxSye4eqGi/E8PLp3M4Wje/j6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=leTY0qD0tQQ59lodYBMt5/6g6SQBdJBU5/xsOPYDUZY=;
 b=e2QoyqF5qWhOU5f+lkAsvjVHOQ9B8dbuwq4KVAcYGrLkYIR7nngJw+r5DN4ltug73M5gttxlHdKHoDPBDK0PDOif47GynsoHMTTmseeTnnnnjsC1KbY77lMlF0e662gsVAonke3BpJBGfwzAbuOpnHxWxbrld2f2e7wPtCSgeerFSJUT1drTExipAA6NCSONnvPUa9V0aYQNGHSU7XA6gqNALn14+xFdZ9KWUxwcbr+GQXNGfJHdcCslah2La2Vhh/uibys86vM90HYmKC8T3Nr/0JzOp/FQFFPaoqDnETDurvo4APgBbJ7oMQH2Q96lk1wo7GFqIry3c+C+DglMtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=leTY0qD0tQQ59lodYBMt5/6g6SQBdJBU5/xsOPYDUZY=;
 b=UCnhNhF1f516TIz0zVavCgkqdj6YO9wu+edVe6E40PO/N92tEzbPA3jdveba8NjxRlfvWgAvNFYfiGFP0h5qrr+chuJF5ETliiT/DojmgnKHI2D/czG0CTCo2scLAHFgooBmdt+TqyNkcXNEW5AdG9+giXqxxMDax33dxYLC3Zs=
From: Dan Smith <dasmith@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "dev@geode.apache.org" <dev@geode.apache.org>
Thread-Topic: CVE-2022-34870: Apache Geode stored Cross-Site Scripting (XSS)
 via data injection vulnerability in Pulse web application 
Thread-Index: AQHY58sJxp6pNn0i+k2Ea1AacStmIA==
Date: Mon, 24 Oct 2022 17:11:25 +0000
Message-ID: 
 <MWHPR05MB32146A1E7E26CA44CD71DF95C12E9@MWHPR05MB3214.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR05MB3214:EE_|DM6PR05MB7019:EE_
x-ms-office365-filtering-correlation-id: f0932114-a4ae-4213-4157-08dab5e2c84f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PSYTTeb1u1icaBJumXeJk4WW2+srca4CLtTUa6ExpP3mDtO0bz0e9Rto5WYyodJjt7/cewOj27JN5YUNMLm34uvbtrZvWQrxLKzj9GcqyBn7APDlbpA6GrJJcwrgDZZf6VFKjx+H1oHoT0TAYurJGbvo4vkHFATHVTG5BwI7xgIs+yJjgkG27oEfLgEbbJxgZiN9GjXyf5QN1W6/woztcLVlZJcoav0uzvfQwuIU/Uw3iDxfAV+sddt1cctaObfG+jx9LmQXBTAQfoW0/faomdnHDdnZgmyr5XhAajEyoEhNYT6BaRrpYh+alkQnJpc8P+rx86klMKLgNf4dQX/XN3WOY5bFv6lAkeM3l3HDa9qYD9DDgoJ/A9oMHPyMQcr8nYLaN5lZtBgCgqPlrd83K8OSwskjDssssh3C4m57b2IGxwtt/KazV1jW45dSK+dFjUiVThyQhlF9J3JVaG+dHQWUY5S84HmyPp0st+jIOZL4gBsdyv1NUvsOYrZ5/SVwUcXb9uONm+KfGBRkB6Gb0xfVjIlq/BtAB7wGWxEdbg9dFB2uXKK8fPj1uqln36HWtVvPc6Y9+3Zj4lV3LpH4WJT96OPbtwr+4W9oblonus4vTPIyiXtOMZLP5DzuuMs8S+HIPbPBSmos0OtY5TWvoAuu1XfQszR2hLlI7K52YhNxgouWTmGsjLrmhsuDNqTCiMiMkp1DTPmnsECVKvT3MyBvvwhDPNqPNj0EF11uuJqgIIVwzSdV1fVm/cf45cGvUMhW2YFwP1JEZOs9vILA5IB2m0P07BSBuXgb5o9O9V7HKdhvWsjJQSelbF5urpAk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR05MB3214.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199015)(91956017)(558084003)(52536014)(9686003)(316002)(4743002)(26005)(64756008)(33656002)(38070700005)(66556008)(66476007)(4326008)(8676002)(86362001)(66946007)(41300700001)(8936002)(5660300002)(2906002)(66446008)(76116006)(478600001)(122000001)(6916009)(6506007)(7696005)(55016003)(71200400001)(38100700002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?jir8nG09HhIUYWj5lcNOLizoH7aunpWSoBWQTfVxsm8DL+nNfliEJqSi2l?=
 =?iso-8859-1?Q?7LibHT2PN0IhjhOOxWqyPvtm/GVo/sHQe/8Ry28YsYVDW3v67RvdZ/eRpK?=
 =?iso-8859-1?Q?kFB4SGAphjL0oVYga2pZUGXEMw8ofoFcJCtRklOKlUJR/9AecFILgfdn2w?=
 =?iso-8859-1?Q?rVLHc20JjPdB5Jqdx/GmWM/YRcZiKnO9nWk2ZBzjBQU+Q5seeN8y/FcGdJ?=
 =?iso-8859-1?Q?N6MpkS2dv9/QXi2o9OJln34Dl4tVD95h7g3qTTFGqDbR+tVIXhiqPkcRJC?=
 =?iso-8859-1?Q?Atp4+dah9XuQFjqiG3suwW5EkrDLjt5VyxVvNUPcYxQheu0fw5A3n7dImG?=
 =?iso-8859-1?Q?lW1/JuAWJcSfuFkyHehuB/CYOrlsm+5UgSfCFPoEKymH98oThAqG6svS6v?=
 =?iso-8859-1?Q?pMB0aZUCI1676YH74VLYhpxaiU/Qrr/jcg1eR9cWcraezoZebtMWK8wVB8?=
 =?iso-8859-1?Q?D0yu036c7IxaAneMVKfHiVSWtbHGlfohLb9nLKmcdzXlfn4APRXMY9uVop?=
 =?iso-8859-1?Q?P16caLV2d2ISWn9lgrMruhtbafdieU+palOUG8CgyQj5TOBT49+BsbKb1u?=
 =?iso-8859-1?Q?mZHt2cbURLwNmHvnOhq3i4VAZL6yni/58JVDTytHhS0QM8HF3/Xb16TAXY?=
 =?iso-8859-1?Q?G/dZ9C+VSu2HXh6t7xFHB+Q6oivpn1L+DkqwjfsvY4rRT6Dvr505/3P4Dk?=
 =?iso-8859-1?Q?Hvhrw1dm2SfWv42+f+C4IsTuh297Hth2JT+RCeXnOzt6Fv9sTPaStGQnkz?=
 =?iso-8859-1?Q?zWDIddvDKezDWJuqdflKKgy4wXzk//X984wy7MZm5nWd0ZcQNR9o6EDx9v?=
 =?iso-8859-1?Q?J4ISD4e+iVhpvdNsQsDf+YfhQDTuz26eUAqykKgF3lxzc10Fj1qkBQYQj3?=
 =?iso-8859-1?Q?75czFX1hA9NXwmag4grqCwqtCQVzCbLxUWJiQYBlgjf1u3SUbpndcFfjrX?=
 =?iso-8859-1?Q?eZve7bGE8yi3WrsdM/VtD8baEPk9z/v2ieRHQvlcmjfsb/J+DBCX9bpzl/?=
 =?iso-8859-1?Q?o6hXpFyqGSKtnGJ2ayRNTBPSezfeJDHMMMLR4994ER8ahcO9+zYsVUM+g2?=
 =?iso-8859-1?Q?oPv/gSHS+GjPRt4aqteaG83921fj93Hobe3/pMGrOLtKEetKSPxISfU67E?=
 =?iso-8859-1?Q?V3MwWrn/w0PzI6eBOYxuodeEtVZbikYfrDHZKfkmjLCXDkZVhK6a42WSqB?=
 =?iso-8859-1?Q?iYkQlbT2K+Cc1LmoyluaawCMim2Yuu4VYBsEWueJOzRZWafJaUtLiI6s7S?=
 =?iso-8859-1?Q?gpl7HnzQupZcJZ7mkmRXJU0Ze4oLxfFsXM6UN9QVCFv3wGJDrvvyA5tHbB?=
 =?iso-8859-1?Q?LF6b2DhSgLjyvZiqUO/Z1Chz6LTmm2R6v7fYGUO9s4z1wFXMyn6FoWsMpm?=
 =?iso-8859-1?Q?xWJr4folbW+nCF2IHbUM1XmFD+PE6m9dJJ1VFy5A5MIX/sHv829XivtEr1?=
 =?iso-8859-1?Q?vPKwGq8rT2hDg8kL6Ds05TDx9g2yH+Tzb7uDsJ5iOOW0is6UJXCFr4i/wO?=
 =?iso-8859-1?Q?GR17dE5RD2mPi9GgzmwCUOD+o1eVHv4tgK0IGy1aQ678NjBg2bpLAnrcJ0?=
 =?iso-8859-1?Q?xDjbhLoGt9dYCaZAZQ4qAgyfcJQrVC0JXrkRS81evcX8OPbMQ3zgygS1Ps?=
 =?iso-8859-1?Q?X0rGrEgkVCdlM=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR05MB3214.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0932114-a4ae-4213-4157-08dab5e2c84f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 17:11:25.3751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CbTAConSUAKXhNtopHRGLInbXDtr72BZ4gPiYtF8DGy7yEIaEh74jYjT96wR+CPGCFsll403D1ahDdI3kjrAfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB7019
Subject: [oss-security] CVE-2022-34870: Apache Geode stored Cross-Site Scripting (XSS) via
 data injection vulnerability in Pulse web application 

Apache Geode versions up to 1.15.0 are vulnerable to a Cross-Site Scripting=
 (XSS) via data injection when using Pulse web application to view Region e=
ntries.

This issue is being tracked as GEODE-10411
