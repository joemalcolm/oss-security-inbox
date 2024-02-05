Received: (qmail 18129 invoked by uid 550); 5 Feb 2024 15:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18097 invoked from network); 5 Feb 2024 15:54:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-id:content-transfer-encoding:mime-version;
	 s=qualyscom; bh=qYEtbllO8GC50rCMwN4rUJXnbwHksSJjhBZLjXeBK9U=; b=
	z97/YQcMWqU/TWBQdhGWrf9J+5eDjMImLbn6v0praGmdN+Oa1Y5iyp7qAHcxAceR
	caLHQzMrkQP22qio280bdSLA1iW6XrLzwjVyT8bYkJ7mXwKi4jPvfEu6q0RufZhe
	g9+N+U+rJ12Q5CaA9DzElZYEa0S/eZijxnYtdFaua3iXirkHjTCCeEgjglOJVhAD
	bJ4Ngk3Ve5LKNuFGeRdGarAy636hHDmou8BBAsrll+Zl6iwHYOvoB4M+9Wv/xXvt
	YBPtBwkr6knjnbZK/44rgY+vojQ+XW3EiB9F9Q6KHdL3u+/4ichgEu8oYuKa62qN
	Xe+u21UBDmYzHhIxUEvZ7Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMwcF5U8DHPV/H3cULvGqfTSHh96MII2GQKy9y1hcliz9/LC0FHAiODgHZ+7vw/127BmPg+pq/ETiZW7WoMH40jg4nSidyZnrZ4JKB72QHe5dIozD3VcihE8t3HPo812stGhjEL9Cn1GIp4IabVXmcOZvz5vM+SeiTOFyUX8mrFw68J6e3bMmnOH7EJPXfec0riCFWQPu71um1sofPUPMaKFnaSoEoNt0P2fUzjv5UmN4sP+4ZDsMYi4IbvXT/EXReU0dvilgUzxr0r+5xjnKly2ZKhP+RCOjVZQfbMYST45b3CLl7vRojTF3gKkQKVpRzxPxAbSvtWG0XXzZyY9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qYEtbllO8GC50rCMwN4rUJXnbwHksSJjhBZLjXeBK9U=;
 b=muye9ron49fmdkR3TBWcP4j8OI/mSiCjYfO8w87aRvA0dA0Wnry1+ggIBjZktyLOdzkSmjJUh0Z8sJKvX6If3j/UniARyswSOF7z3Pubw2J1bC1bLDZ6QFyVi1sBVl2x0tTcQ0ClU2TVxjG+//E/iCQH5y7HbyhMBClpu5YA+sOC7uMrKMzpW3bnKYBgyrY6/wJH/1tMZiCiRDTRfTMNcuf9mOqWM2R2fE72e7k0BIh7O64mHIISn6tchtiUsMeVgfn0IxMnpBOlk0+GxvtjaicWyC1tuo9JqbkCYnJTNpeTbxwnohBA+UyaRsC/gTXGGYAo4B9Vt4oKK4qKH/iZfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qYEtbllO8GC50rCMwN4rUJXnbwHksSJjhBZLjXeBK9U=;
 b=P6vwSXhYDsdvGsKr9Oln2IKoTDxBLn8/f2+i1iC4zwuRIwMHa9h6PvN3YCK4T6qj1PLZchPE45e1+JQWUhY07BW53jRSBxZ1hIDAmC1EVO0lRc5d7lS2x19H+5hM6yjyBTUbW3nKLM3JOuobwFqgXJgmzzfJLZm62JJXbVtTOu3CzJ5sZilsclErgS9XEkrEl7JSlV+FEPr1SBbgoc4CLw7yXrs+yseR5GXIfowCGLVwZIb6eEYk66Cd9FOyUUdM10dUyreZlyeIoqb3lHv6jikGcjgIEPc7bBtdJB3GiKxxZLibfP/qgirZrWxtn21dCIYhyTGAcLsSqiGRntamgg==
From: Qualys Security Advisory <qsa@qualys.com>
To: Solar Designer <solar@openwall.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Thread-Topic: [oss-security] Out-of-bounds read & write in the glibc's qsort()
Thread-Index: AQHaU6ut2YcF6TZwMUOBFY7sDqdUxLD6aPEAgAGHboA=
Date: Mon, 5 Feb 2024 15:56:41 +0000
Message-ID: <20240205155619.GA28587@localhost.localdomain>
References: <20240130183915.GB16546@localhost.localdomain>
 <20240204163520.GA20987@openwall.com>
In-Reply-To: <20240204163520.GA20987@openwall.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|DM6PR06MB6553:EE_
x-ms-office365-filtering-correlation-id: 6065e008-8683-4c63-083f-08dc26630bbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Fu1o7vRF7DO2rVr0q7TLKuxEKVgKGHuk5mRqEv3dJ4y7UQs5Fy7Pey+3YFtvL5gxk0xCcLuiR23Ewg92OMQcLO7nXtsUPwOsm3l/yeBzHBCkHK+aZrSCRo4myVK6qVHE5QVjYdQecZL3l72t+smcJplBStsE5b8K3neUdnt4v16p71lxldrBc3jKW2VVEsmVcDZSmWNMOEaWcRAGB5ZWOf/MKCWDJYplI2GTmf2+07tdwCe7KfZfARbTrOytTIkZd+WOLzJRpJsMFRBE3HEtclqgY+M6BPFOLrVTbZLqeDZzMevVx+kGgSuDwXyWQOR7v4Hc/cDvUY8kLWxFXpJM4vuHuTXQObjAJ5rniWpn43h7jcILRrDksV99iasqqDp98Pc8Ly2A1yDx0Fa47rB8ZN5uS3R/xeA0w5EOpQti46z29GlATL6xgmMBHvTBys/upbH29JJ7iE47XNUplsq3DGyepdX4ueU6xz3Omfyxj9Q/ezXPPQmcNgbCn9otgK3c2poNvEJrYSx0Rg0Xa4sfXqhsgy6Ocqve8CrQGFLeI0NJsQYnlyeFa5JXbY89ebUuk0KsXYmbtf8ib9umcJqIOQ2y5VSL0nslWtM2ZI4oOaPWcJdkLHUv7WaCPv/d+B6z
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(41300700001)(91956017)(38070700009)(6916009)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(316002)(54906003)(5660300002)(4744005)(15650500001)(2906002)(8676002)(8936002)(4326008)(83380400001)(38100700002)(122000001)(6512007)(9686003)(71200400001)(55236004)(6506007)(33656002)(6486002)(86362001)(26005)(478600001)(1076003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?8NKuYADZN2Rs7mK/v79Ixlq5871SfTpRvGWGU+j65639bCp2aax7bfIB7d5r?=
 =?us-ascii?Q?kuiaznLLh2UCxtFPfYvxdbLsKNM4Rc4zTWE1feGkR5ozUZYwzcB93UxAJh+e?=
 =?us-ascii?Q?pl3pzFZ9tGpasbg7/ux/VrJgSEZdwtZAjy9TkcKdUnDcoZ+UIKLRWXnxqqAB?=
 =?us-ascii?Q?XFaMpJyoFTNPdo328L65cNhZbrNeyceUU2a/2a7bVC6SDXKra3Gb+MgPRa/O?=
 =?us-ascii?Q?rYAXrf7y9ZZrR6BAR6pQIOhjYFJHkZRciPOEwq90MnN4KoQJ6d6+HmEPCqEs?=
 =?us-ascii?Q?oPOCNNk7CBrMLElNGUA58FHRL4vc5fpXNoHsLHr3QCtSJf9yI20hDbHOJGay?=
 =?us-ascii?Q?uQIB9WdLx7wDyxlalqluIhCCGCVvIP8y/0KMDYUXLPcH3w9SQrkhBuTj9xVh?=
 =?us-ascii?Q?Qg4lESWjNaexFiIiq8mZ2CIeSwgkKFAczrPf6X/f53GLD7REXYiewFfb1bsV?=
 =?us-ascii?Q?gkHpEZEyQyMziasfmW/p+y1zwMaXs/xkmcQFLDDgkXqBrGbvKz1TWEqmR9rh?=
 =?us-ascii?Q?y99dmLgUIVeK62QreMmN8RmVwG2AH4Xv54Ko7r9gvoSrySvRccwTeNUI9gra?=
 =?us-ascii?Q?Kb31w3+tdch5UtpJ9bt1jzMNTsj0Pf79lg3e5x0TrzCtbp8e336Wqq3LpaaE?=
 =?us-ascii?Q?JkGSI1Pe4ykr3kyqiPsEgGe+b2VEKe5ULMZ3WpuMkluBugidoFSfVurWdfEr?=
 =?us-ascii?Q?Qf/BccB6P8mdtZtVUe5IS9xZEVjSc0VUTclT6RXICePqIEZW3WpfEAkhsMcc?=
 =?us-ascii?Q?eQ0hLC7zPTAMB9QuSoypWQ8E67O8ATDmlwXMaCknCucw3CYPPxq7fkv1eNE8?=
 =?us-ascii?Q?Yf0al4SjaYPlNN8GK8OhnrVC6KkoDdC8cZl+J/v73uxxfNl6SKT6ebzahhCr?=
 =?us-ascii?Q?qNqoLjbBA/LXXYy/CzePZFcvSfD3xHiAw5IfQ6i6dAbviFg3Q2DKr4K4/3Sf?=
 =?us-ascii?Q?xvBY0tCWfBjLqw6koaN9zqGV6m2gduntG4xMJU5cQHCjct9XcBf/0fr/ha9D?=
 =?us-ascii?Q?gLNoSKWkh3Wv8IOCo8v0/E1VzAPgsk8qh1vefCgU5hhMSgAPoOwvZhPtmvHt?=
 =?us-ascii?Q?tTWHqpmdv2UvaICo1NS43wUomcIcjUoOeTpg8bjxaqQzp0xx8mbXDzPp5zHW?=
 =?us-ascii?Q?rgwsco88e3P03OmlyoozivJ+vbE1MAMwHVS5LmBpz7g26aG/Yv+aBvjgNrlN?=
 =?us-ascii?Q?YDNX2cVJOy6z5F8+kDU2OpCp0AWbj1ENoqR1rekxK1mD0cLsbwz15rvOZzY+?=
 =?us-ascii?Q?QNCGpG4SWNtkcISIb/2VaGsFl09OwSNRKWH1XYn2xgMKptYr12lnQ2iYD2NP?=
 =?us-ascii?Q?p5eiPh8+eIKY9eyP/HT1abKQYhQEoK/snf25CgZV/cBwMf3yAfZzCrUWaPLY?=
 =?us-ascii?Q?oMGvCV2a0xgpUbYJa1iqGZarXCRWeFT5aQC4gwaTJG9ddeso8ie+uVpTAC5L?=
 =?us-ascii?Q?SVrNnIYlq2lsxFPhAFIs7JrmS9FqbScb3US8XA30mwSJ3jnLL/8EIYfI0tZ0?=
 =?us-ascii?Q?g7f9CDppywRzBjJWZzUXJ7Opwom6C1VtjEkzWsnjSlqRcBrqP/lqdb4UE097?=
 =?us-ascii?Q?wUCj3qYVgZ+5vL8WFFyW5uxeXBeE20QZRxXkPsVTfzGWKfW60yRB4/kisFcN?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <851F2AFA76356D4282BBF5705BA477C0@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6065e008-8683-4c63-083f-08dc26630bbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 15:56:41.9758
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7b5fxlfMwuC4gQFKmM902U/7Rr+1YMec0xi7+2AYpmlmZAWSzZ9K6372/ywkW28oAxGZVKrmFjp1o9axZ8pIleULa3odU9fbMHzrxA4SvD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6553
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-05_10,2024-01-31_01,2023-05-22_02
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

Hi Solar, all,

On Sun, Feb 04, 2024 at 05:35:20PM +0100, Solar Designer wrote:
> It's so invasive I cannot easily tell whether qsort() remained robust
> after it or not.  There's no longer a "tmp_ptr !=3D base_ptr &&" check.
> So, lacking known-working tests in glibc tree, we don't know about glibc
> 2.39's status with respect to this issue.

The "tmp_ptr !=3D base_ptr" bounds check was originally added to the
_quicksort() function, but is not needed anymore in glibc 2.39 because
the old fallback to quick sort (the _quicksort() function) has been
completely removed and replaced by a fallback to heap sort.

Note, just in case: we have not reviewed the implementation of this new
fallback to heap sort.

> Great findings and excellent quality write-up from Qualys, as usual.

Thank you very much for your kind words!

With best regards,

--=20
the Qualys Security Advisory team=
