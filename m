Received: (qmail 21768 invoked by uid 550); 9 Mar 2023 13:35:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21747 invoked from network); 9 Mar 2023 13:35:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=qualyscom;
 bh=0TYKZUPoQRvbxlqAvhc4oXIT6OPrftL8gNpAXeIjUfw=;
 b=ihoiiS0DFA5xf2f6YiwmWpoVRylR8ULJvC1i0SyVW/6i1+k3fxMMZDjX9lx7539qtuCr
 zYUBT0hVjej5kvSuHd3PBcTRVdb3r+L9dKZnpvdnaSXGj6P2Ne0IaE6tCaK8d8Jnmt3u
 UR/AcYCvDkAJzaNaU6zOy9jP+JajWeDnvVxedAnrU5301MjPUK8HLORXKLRwJ8Uy4rKu
 Bn6XJDFfWgm5glwJKnj6vYYLl1tnc4RvE3xIJuEb+whKD5Sp6bTTA2M7ztNN0Nh58ddc
 LYiCMhMfI0U9P79SB9JZA9iODmFkMNUWHq2y86PN/j9re/dvQi5RBlmibMWhLhqUrtjq 3g== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBk4+RqVjztqu60OmDfNumtsy8WqQV3bZdFcUYTeSfI9v83M7YHVys408phYRS5DwwgQO+51DvTYb0VE5DOitOI59FRMbSPScuGIyM2wTnjAPy5/NUxIAN+U1iDsGSwrPCyLHKfMEihIHVzN+JviuDUPBtIldeypinU9B3nEyfSAud9TlAWhwVO08mq7gFseZiv9WoVsEjgICY/OgOPofzAB2J+WBIHkUz7yj9csAVDOtG5hxThvww/KXkjrBniMTkaL42f8+F+8+OGBUj0KCLOmY6tMtGk4YUKrloX914cJ0e/ukY/nYP7CpQAyNxrQ9tjN1gkJNJREdArd2USb6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0TYKZUPoQRvbxlqAvhc4oXIT6OPrftL8gNpAXeIjUfw=;
 b=ESp6M7k17aBjqQpHiVlrNanWHmvW/jHDEUAxzdk5jzQ9b8jpQMOsZgFeZfDY9qYjFUkYN6WZqrlwP7AclD9pOT5Tdovx77XBNsgnjufgHPOq0Lex1KeeBIO9C3FNrGzMWRRfbIHJWR+3+xgh4lcTzx4zJ52fiMUqj2kU6/BUnJVe0ycWx1F559X9QkGw3+UE9vL8tOPJ11Nwqe9fO5UCV25CjFLqFoEY96RKDXRDFzDKFggSKWPHRWV8WDq4ZGlc21NEJqQ1OXVq7lOekTOxKRj6aKhaeaIjRZhHVcDbnpOqEJ0jN8/2dNTy1iqhP1oXGFtePsb0aUbF/FimaILkpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0TYKZUPoQRvbxlqAvhc4oXIT6OPrftL8gNpAXeIjUfw=;
 b=oslUlLIfZ+dftLQ+Ok7AUWV47SWPJp0K3oitZfIKbXuSSqeOKGRIcWYuSOeefQyrJss9j4wDilQCxfjAFV2mH7jJCwTGD3y5/AJ+g8GuAop1flkFg9GOzpLLFFOIPM2z/vvxDXifSSLoSXTq+KmpD/UDnFi/rZC/TVLY+S6jC/D4TK+cieV0fFpXNw4bXAY5d0idaEx4JqIp9FLhnCjj5QnNymqboQ//2d8l+M6mEasekYde7Bqcy+u8yE7ZofYib9+nIrYv5kfnF5v38+WLySm5Eolaqn+hwkAFAm6x5ad/I1+AjZKwtf9xERgChWyxj02fEmUdCj9PQ0BGEu4OYA==
From: Qualys Security Advisory <qsa@qualys.com>
To: Georgi Guninski <gguninski@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)
Thread-Index: AQHZP6MCIrfQwQnS6U23aTWiygrAQK7tghkAgAUWcgA=
Date: Thu, 9 Mar 2023 13:34:58 +0000
Message-ID: <20230309133444.GA22470@localhost.localdomain>
References: <20230202130212.GA15689@localhost.localdomain>
 <20230213120214.GB19824@localhost.localdomain>
 <CAGUWgD-RAoKOCtQ3COqyuFKxo0KHnwQFYpV9ZRfyidWPd4v2VA@mail.gmail.com>
In-Reply-To: 
 <CAGUWgD-RAoKOCtQ3COqyuFKxo0KHnwQFYpV9ZRfyidWPd4v2VA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SA2PR06MB7355:EE_
x-ms-office365-filtering-correlation-id: 16c8a7a6-6be7-45ee-64f4-08db20a313a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 y3g2CqCrL3GYxv2FqtiVPHrieePX7Q2Xt9j5tKxfhCnqQBde7TwOaG1/GVsHBlDGxJeYT7G3xIctWsMu+21ciSfzJyvRy4MxffZqMB3XiaJ2guTy1bm5Y8kOpK+nCFMjXypCUSUkO89e0TwZYY2mksjK4Sj38BszBFrXHBjVB2h+3MNqqtKYhG/DtRyXZglnGkTNlAej2z6dj+uU9TeuCWmxASSK6JIgCGXInMHEEFY/Ai+0wKlKTeKHQjLYdYarPnpyUB30HWZPpB7H3K1r044YRz1a6TUd8PbIVghd4PLzEtA9vPLFlFavQqB0I9dhMOb071gMVrqtiPuow2PGDYcU1WC81oIRgivORt+2Mmdcg/CaeeJ8XM3YvgMi/JA4MmZB0FzSnieeMyHlSYx8kNYXqKSe7RYNzCEZiOX/KImakhY9+rbv2GoDShZJjvZ9yhkx4ZOeLNwyIBmvule7NJbxFSRKM8ddMzY29+d0mtRIQ1SQ4tedxvDsZyZrECB+y/iM+vRBQWDUtGOdNZySZpXDT8RetlS+T8X9vJith8nWNdOYT6GJ4t3imi+ANLoy+4SLv1IIav+3GsdCtqyH6iJxoUFFxf/oFFOKxwyvr457FXHSon/DR1f4l7GAglrH9r/hG5tdZnLdWiH44WDZCjUY0zRb/8wQ5S/qRYylGFrwCVq9uCwgEEO+/PVOWysX6xMjCN8T9bD+D/bf48uleA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199018)(4744005)(8936002)(26005)(5660300002)(1076003)(8676002)(6506007)(6512007)(9686003)(55236004)(122000001)(38100700002)(83380400001)(186003)(86362001)(316002)(91956017)(41300700001)(4326008)(6916009)(66446008)(66476007)(33656002)(64756008)(66556008)(76116006)(6486002)(71200400001)(478600001)(38070700005)(66946007)(15650500001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?9PG/ljOdIDVhvOVfZGxfSr2zOcZcwnbp7ZPcv1uy3x7aj3SyOO9+tenYACN1?=
 =?us-ascii?Q?XQ0itHnLPZykDI+aAeEaPrtm8aswlNI77Bdcmu9M18m52tqhYwPi1kMQCQRW?=
 =?us-ascii?Q?y+X5aKq/caEkga6dT+/0H7fZH/aVVYFHO2/5spMLV2AfAtOBJrzoINemtjNw?=
 =?us-ascii?Q?Jrd/B4aCAn2B26J215NVM+n44Cw1FZaiBgKVzJVO4E7S5kscXV6OYWbdszKs?=
 =?us-ascii?Q?eFhWnlyzQkvdmd3ujiHNz3Ylen9ETHOOD3XfvLMyjPPtVlg5K9wx9VOFPKtr?=
 =?us-ascii?Q?NzAQ1g006Zk1J2bRieZ/vHyt3K2z4FnLYomH60LR+IGJTl3OBkqvVSqyjvDw?=
 =?us-ascii?Q?r2Os99exP3wbKdIZR8OCdxyOdCfV/8p3QgmCTKgICcc6OnyarVPTyehEzXw2?=
 =?us-ascii?Q?OrWX6PuA3sPFbN9lXQPJga77PtmcpFqRNzPCXlT6ke5tuy1UkJbyPf06vMIW?=
 =?us-ascii?Q?irBq7jrS2LBKb1a2ZdyhRS/5qJZllXOHd3iO2hiG5SfX/0+3k9lxMxLClfib?=
 =?us-ascii?Q?yOcmc9+9AhaznhqxICNCsJGs1SvMuozBgGFy6AKQqwyBbCatmmGOD7UW4UVX?=
 =?us-ascii?Q?pg2NZCqr+zwbrDb/Oljy8PkcunrW75ZJsb/5MGlmwBYUfBtSpi3p9+blD3at?=
 =?us-ascii?Q?DT4Q0tLyXLbJHLiOXv5fP8UhWN5pY3J1XmJhdrLhNvHf+Hy7rjLm3P9EFlkj?=
 =?us-ascii?Q?E/0OwHIRsMwnxmF5Q/XZNwjMjQ1KMBXug2DKxuxP61LhMCSDK2UAxxjwhhIC?=
 =?us-ascii?Q?rDB3m3LSkx7tB2rgQlclPrFAIHnVR3IrD/y2MLQYRsIHG4FXQevktLzh18m4?=
 =?us-ascii?Q?f0eJmZ5oviwoOgPeygy1PKuJM1cZlt2ABR/uBVbka+hG9y52ZREOFcm9QEZI?=
 =?us-ascii?Q?TaTuuY802ljN+4Sf4oqyN452b5fSJeH4BIQPn2mBjT51NiEY0ZzDGv777eOg?=
 =?us-ascii?Q?+u02cNk+Pf6N9I2snLpsRPgWykW95/XuoG79joNENfz++qBPHVi0bevdn4Ej?=
 =?us-ascii?Q?vxpGdoGGVC4wiSB62eK43gnFd2M6ogLxpqOrAEUPWArqYUxSv8c3TR3VKia+?=
 =?us-ascii?Q?gXWx2R5nAXdCzwCjECRvt7aC1XLfJCnBV7E1I1zvRyk0gY5kFlX3H+Ln6o3/?=
 =?us-ascii?Q?36JOZzDwqrjwVaF1mXZ/Dgwjc62AK41z/f26VgQYeZHBxmze4ywZRqdFm6db?=
 =?us-ascii?Q?JL4GQu7hIsM2zwagQ07tfHx9PIugbSvWUlPoynpCyP55xtV5G+8iXNu55xIj?=
 =?us-ascii?Q?BgU5No+3ZhK2RroFwjzOkzXRHQBAGa/x0k16WzVGoFvtM3J5maRRH4vDEjBx?=
 =?us-ascii?Q?4QBGpr8ucR2uYQRZjqa7U9MPZUzq6GBR8nwvvYqYN6oJ1MdVwvVDQW+WScwU?=
 =?us-ascii?Q?exNTC2IPJJz7W2eJLAeoPC4oEi0nk91EWuueQ1E0Bb5YjwPGofU43S7GUK1O?=
 =?us-ascii?Q?r0IXJi0PuzDhtcNY8NV/yKXKk9yRw17j2ylm58uJ2n4tyUymqUBIrOcpOMfe?=
 =?us-ascii?Q?2ylGju+a3kA63h6IXQ7ZcoLkBZ+xZrLKFlWm6mvTIktmA7y3GbISnx19QH+c?=
 =?us-ascii?Q?KP72o6jA21ls2aiLmBuRyin1LBOc77rCI8YGU40017X4vGTjf60Dv6XHql2q?=
 =?us-ascii?Q?glXyTaZDYAioXY8ZpejmnPI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9DDB5BB355CD4048BD70E1D276E481FE@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c8a7a6-6be7-45ee-64f4-08db20a313a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 13:34:58.4149
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kbc+D1+d4ca8wg0ZmZ0yK8o/5fLARV3l7U8TXEz1JrhrLTy2x2+zgXj9VELfWe6AMer9Z8nEhLe+qNEGkVdKlfGLfdx3mHn6rQkkMritySo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7355
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-09_06,2023-03-08_03,2023-02-09_01
Subject: Re: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)

Hi Georgi,

On Mon, Mar 06, 2023 at 09:53:06AM +0200, Georgi Guninski wrote:
> So besides the double free bug you managed to circumvent
> the mitigation in both linux and openbsd, right?
> Did you find weakness in the mitigation or did you find
> fundamental way to exploit double free?

We have not been able to do anything useful on Linux (glibc) yet.

On OpenBSD, what we did works only because this double free is of the
form "free(ptr); many other malloc() and free() calls; free(ptr);".

If it were of the form "free(ptr); no other malloc() or free() call;
free(ptr);" then this double free would be caught immediately by
malloc's security checks.

Hopefully this helps! With best regards,

--=20
the Qualys Security Advisory team=
