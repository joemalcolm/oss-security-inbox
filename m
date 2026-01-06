Received: (qmail 13781 invoked by uid 550); 6 Jan 2026 15:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11785 invoked from network); 6 Jan 2026 10:12:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=xmFE5e5l1PjR9YGAM8RuisJZjva54BucgPzeEUobW1E=; b=
	f0umP9yIVxkWYDUPzSWwZNpLtWsR7Hy+uS+vlus6FIFkdc2i08n16sUyvX4uC2JR
	YDQu7IutM/rfjY1LMCeviRK8VJFf5d24XNe8WTafRMVYYWD9VYuLrNjCWYSlyX01
	lunaVRSMRYPMrWasxFh83ikqEK5MJWGG21qmnmUBm+rpLpcwMCw3XqcyZ4muRVEA
	adxC87V+zQTbl3++ysXKkukr6aHgDtAOxAIpFQjLmQjEwvtuPN/WfdhNRsfRSIqF
	aOVQgFRoXPOoaWGQXvoje0metyXt1OylCRIYvJCg//DVzCElgy0TTaOQE3687ETR
	N9K9qR3OOJQSFe+R28j7VQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XaqA4uk5rTiS7IZavfxfC/DTkpylR9xtKRQtiXUxeZd+kuXCpJd+d4qlN5zKNZZWf+X11JVvGVKSarytLWr+8eACxWCajDh3wo/B86E8HGAANJ5evKnDBQ9DEWyuV/Bv0DGMqysRJ87yn/3lEEPYruqd10aPDVhSk5pFyEYmbtZ8uMVDAfJWr+JxdgBqIr9i94LRwEYVNPnnI2bm/avr0ivM8FgJFcIcbGZLvZCdmWa0aMOKcNOetcB9uecIXqm8NEXo2ETS2ueAt+QtP97YaCF4y4BHMjrz89eBVXo8lag/sISjOWpRYVsnQjnmbVbojdC/AYmOnAfginIHwGY2sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmFE5e5l1PjR9YGAM8RuisJZjva54BucgPzeEUobW1E=;
 b=CLLRiAdMD/JIE8w+av8hYSBUydsRBqOVbY9OZwfB5y7cPvC5zdA/wPI26jIkHY6GO4pss6866AQgrNAHgnedV5D2GFP0MNp+Wu9NfyqdJMwmkoWpWUZLOBzk+9kVcNYz/g0WX0GCLZYsEPaGQKD8S6MdjkFUzlCcwmen3nI3aTyaOoOVrLAnWxO6kMdAa15si2r80kjnawWawrSewuWuTG8VLGsqgWzLHbRDS4gEgG3Wef5CtClYBR3HQj+e4yzfZbSUEFEfCrG1Uj31VkaRcggEyuGvu33fTvmkFW2b1ytiaIgylhFbpydlO93Wm0J3i+jfN4pu7rVVo0i0QFjsgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xmFE5e5l1PjR9YGAM8RuisJZjva54BucgPzeEUobW1E=;
 b=gwAgvT052kUFkiXYcwuq8ZZn96yUJcn6I3IXIjEojyPVh5UzzREmg8CPBNCVXBa+Rw07gLDd9fKdHiGL8ESf5GmPXMWMzDe9Raw+TxsFs9M0N91Iabb19N+puKExFi8l0P62rSG2jKjP11yG5oolLxtmiVMWSHZR+hNM1P77br0=
From: Casper Dik <casper.dik@oracle.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [External] : [oss-security] Buffer overflow in /bin/su from UNIX
 v4
Thread-Index: AQHcfmkyuYVu0a/UHUiU3Bu8GhTy67VE7CTY
Date: Tue, 6 Jan 2026 10:12:41 +0000
Message-ID:
 <DS7PR10MB5358A37082CADA10903C18D1FD87A@DS7PR10MB5358.namprd10.prod.outlook.com>
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
In-Reply-To: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_Enabled=True;MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_SiteId=4e2c6054-71cb-48f1-bd6c-3a9705aca71b;MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_SetDate=2026-01-06T10:12:39.179Z;MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_Name=Internal;MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_ContentBits=1;MSIP_Label_f3e58186-1c1b-4537-900b-8707ad116850_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR10MB5358:EE_|MN2PR10MB4174:EE_
x-ms-office365-filtering-correlation-id: 1ca31308-9de2-43a6-c2b4-08de4d0c2094
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|376014|1800799024|7142099003|38070700021|7053199007;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?dS02zite7n/u8q0uwxshA4tI9T50dxVkiSAmmK/udTtVPZl00QgRLtpZ+yaV?=
 =?us-ascii?Q?/VYgXff+mTuJ5e7yfLxWOK2TjXM0fZ3NyO/SCJ6fp5yBJvUzYXh20f39KbFP?=
 =?us-ascii?Q?BQ/BGbOD2R0n5YSO+/JYOYv38jcDOgiH2GF7w+F6q3wy0M4xIRQzgzou4XuQ?=
 =?us-ascii?Q?dWd9EUDXmEYW6SrOGtGqBBjhyUqk9VVbkxcKVWFcaTwLWiVKuhDqzfrC3B/7?=
 =?us-ascii?Q?tP9dKPphbrRpqPB8rSiIHww1sTLxf/K6cXQl6KOf5ccwD96Lv8Ujlk7yMF+z?=
 =?us-ascii?Q?AJ/UYOMb5Yz2QtiGj0n1bidlHi7uQqtxyTqqLuQ5kndrvX4r9PpmzdwGYTzx?=
 =?us-ascii?Q?xmNFg7lWyvAZrrObCGhef6hql6kW8/Y1FfxpW8mNCzNBqG70x0k0PK7BzW4r?=
 =?us-ascii?Q?lnHtE6C0FLqqrINigEmhc4ZBbup4C21MqGGoPaI423AawAXOJYjJoAjxKsEW?=
 =?us-ascii?Q?EOHISK3iDMsQsZeFwghkNYZqlTj12Iw+ZTrsFK6IqYIPFK+a1AnPbNjexmt2?=
 =?us-ascii?Q?ZIn7mvEqxUTXaNmFc82G1lCE2eruZYnxmrvmOfR9IFOa+nmQ7/T8dcK354D7?=
 =?us-ascii?Q?8wmbYoS13ltt2VbrGW7SH8QvWNicZTJ+GXvxS6dPkMMeLxeNNGNqdEzzLbpz?=
 =?us-ascii?Q?TmaoSu+a0f/nMe9GB3AwEEQBcGR+BCQt+gnDa00Q1ABN82EIKDTfQw520Uu2?=
 =?us-ascii?Q?tnHO50ZAh2YTAbrCsE4wgn8ps872wPuw1lUIB8Ed4M9bk0LcTZ1/oCki6Nir?=
 =?us-ascii?Q?M2+MKmjJ295jqf+J3UobLZS0ucv6SViViMbe8sJXSxJ2lMu9KD9mX+LD9tW4?=
 =?us-ascii?Q?mw83eGQzK8Nla/zrBqDEqvfIa9+uxaK7/20EAQ8cR2mITO8FlhS+LhCMHICn?=
 =?us-ascii?Q?sNpbNAmkKjkQ5WbG8skJzqEJCgjSYxKQsbw43y8u+VzSI0FST6aiBD+uZOqJ?=
 =?us-ascii?Q?1u6h+X86Nu6JquLM57BIkocslm/JkW84/OtDhexc5BT46C93JNVNDQsvP+MW?=
 =?us-ascii?Q?j2zKB2sAttov9RXfSfJExr7GM8Ki7fSSUXjWQ+xdSYSE5UVFak20a687mA2S?=
 =?us-ascii?Q?1urM0cINx3zSEuk79h63rWKyxflhXfKdX8M73shjpJJ9ZuSf9bm2LSKEamis?=
 =?us-ascii?Q?iLxkAEdOBBGXM7+meqoXsvAVmP5ZSw4mi8BPGmfzFQCRiKa6ujuTgUMzmsT/?=
 =?us-ascii?Q?DRe78q0ffk8MICNODUKnLwNLkCk/3EV4Qbd6Bw9I2HvavciNQ/FEne3U8bs6?=
 =?us-ascii?Q?QFJl4OMf+TjXT8+4ikBRlpjNRLCZlP5QF/IEbvGOoOV7FWRJr//NiEiV6QjN?=
 =?us-ascii?Q?KplTvG2XZHalXeTWcEDn+Avlq0yUTq4IxSdaGRoP+er8APwRszyPpAiiu4Ix?=
 =?us-ascii?Q?c8Pqnm03ZQX+PXEk1hS++297imH2N2D2gUf6w+VKf/X7qkcsdpyqBHMoV+KT?=
 =?us-ascii?Q?uQeU0jZLjCJruAkL7Vd1PitqUOiUR2xt?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5358.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7142099003)(38070700021)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?2TJS/IyuMyQ/vhCmj9rLSO9f3b5Kbk2rTqrM4nARnu5FITOY3pMFkJo5yKfF?=
 =?us-ascii?Q?MJd+pk4QLBZcYnH1BPGUiViHSWjOELemckCdvQhMMqPgDDdGTxepoWTgqaSD?=
 =?us-ascii?Q?q70jNTCc+UB5ExaXat4PsxnyE8C52TJGvmBI+MlJ+VQiHmQZ8wy03ZoyRQjc?=
 =?us-ascii?Q?y47QymEDiKA+ggk2gcCh5r3EgfuPle761L1jk8t3LrOz3tv6UhgLD72Am5MV?=
 =?us-ascii?Q?MR5a6Gfl8sPtvTbDXOfBfe+Padbl/QD2WDfC+S1v+EFS8euSXYel6TEsOI+y?=
 =?us-ascii?Q?tB856l0yyLnA86HPNkNSLCBPag/2OTfgkmjvP9mGxvCpMI4TZCpMLuVv7NAD?=
 =?us-ascii?Q?WoFQv45JCmhbRWQHHJl1BIp8ShgcHXzcUZ33EI8x7GPbgInx1QzPrCgjouRP?=
 =?us-ascii?Q?auySXXxpsIFzUusc0/dc5m1QJSlv46J0REEUDGrP59Nd/+8/s32pUxxVXS6f?=
 =?us-ascii?Q?hd4V69auobtMH2i1F00PJgJDBsKKSL+FeffERGn+fp2NYuSPHhHHGecV3Ma8?=
 =?us-ascii?Q?gU2MYyVj6SJ5ZcapE8dqgBvycPUO4tuBwxGDjeWEO7RBzqB+85S8YrDmcg6T?=
 =?us-ascii?Q?15dKPmOOYyFcOP7d8uLVu8JtmATSSg91COlDcT3klje+X1dcPOZPXsN5kD9R?=
 =?us-ascii?Q?4lear+F6jWMtKipTn/hHjWbN6UBd0PHhsBIK/N1kMtvWWdLYRd3ZPX6r2tld?=
 =?us-ascii?Q?4CFq+cpMNkfktdIEaOErPoPIXgGWn5mZM6eHFTDOUl6em/sTQ8hOrvPZZn1v?=
 =?us-ascii?Q?FjxYMyYX9/GK0Pnc+T6HqTj7M4lSk0zeZ2TpdvhjH6BhvgR1ah9yObQzy0xz?=
 =?us-ascii?Q?YUhuZtu1fBSSpSm2eRr2MhIQnhTqeDyfSjTForYOgxFhx0E3/fwhSX/jAjct?=
 =?us-ascii?Q?03FPkoHHhlEhO3Jt4qaxVOCq9wMOxyE7dnvnbtm28gmIj/4CDNQ7qE6jHsiD?=
 =?us-ascii?Q?VU1md68JpM0O4jb+vQSxfFIN0XB3bserctNXCyF51lI8bHR08GWNH7l9FER/?=
 =?us-ascii?Q?39d7GBKdiDq0aHGUHs75BN2JG82ljpaehU/xGcajoNd+6y6B7cHmRPK4Lury?=
 =?us-ascii?Q?YfVFLuiIS7iW7Fs3p3mKK+Gto+fby5SU0dn6DpOR8FY9jX4na15D5ntAFz56?=
 =?us-ascii?Q?2tlnaeLmf5PqXtbBo1wtzbPAvHK9MS/FwqrpgBQ7QwFYCUtWhKaKFaP24oAC?=
 =?us-ascii?Q?w059j6DXHO2YbeUcRSk75DFb48+SUjFvK2XYatgM4Y3V7qArdiAO/uUYnO0T?=
 =?us-ascii?Q?k943o6GQyZfpFaoOCZq77BLMg0Vx9bgW0np1mlRsNcXZLgKD8fZuAZ3ELDU7?=
 =?us-ascii?Q?MWXuB3ErnmQnef1knXkcbCZaWScLNemQ6S/rN/d5NxfWP77hGR8iYao6kmxI?=
 =?us-ascii?Q?bNG3gO7E6U9qeBiC2EwT/txTca7stEdL7DwbiRZpjUQbFAwNRhb2PAOJrf4e?=
 =?us-ascii?Q?HW+OMmjap/UBeV01bToTtFqLCv56ScGTyf8t82GOh9rVypX/0UI9fU04k53p?=
 =?us-ascii?Q?/ywj9ZfAJ1KloHcscl7A4QfUWSKZdv64WAGI+DEVUFs3O2rJfdqBkNaDbyA6?=
 =?us-ascii?Q?GH4ERgr6ioVyM1/qXkwVAAf/NA5zJ3FD7tAXIlq6+HinoJch9BSmz+GecTW6?=
 =?us-ascii?Q?ZKVPrSljMqFpJwOmLKmjOtBuetgedCtXu0AWkHtZQD/jPVEyl4YARE8TCxyR?=
 =?us-ascii?Q?9KAhVTBBfc4jkqoTR6K40BZ4S1lGc4VNGXuX35rurO9P0V/t?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	UtgzFn8z+zprNVv0Ni+Llx3kJPLv5c8OtRTAQx8gFDw5X7QHeKevs+/b+nznDv0g/uX5h4k/jCTHfOwGILVMkeOvP84b73baie3RTal7Gmxc2pOLytrzzFfbI3l6D4zCm1OmlO3j7pPRjR2VScrArGgfuhi48lNvctiAxrI0QXe0PYUW54fm7j4BMNOfEs30Xh/QsJz4hGCZ7zjKEje3eFzUGljescjKcYYGD+BKId0Slc/3roxKAXl8XkmbH+a0E43qMpTAUgmUK2teJTeE1oibMos+zzJMjlL+kemNU33Fngz/phJq3TWkefMrUo3EI3/7qvU3iMiGyvX0wBWCzKgaZKo/rEVh2Blo3f6RgY4uqZqiodCscpkmIMz1RwL8XfnHPUUXEmP5NJCRmW5Oga+O1FeeFWPu/h+WfumGWAJ4nIRVh5K75C8rENVMp8DtGpZF86tH/R7+JsYtHIM+lfkE+0qYbfNk+0CjVX5nhVHIAYQdzUoZ7FFn73t7UbzK9CIptiSZ+39CknOzhkhuUFobtWOeMXtn+e3aKkrFfEXHl9nQvK5EzVUoL9VR7+zbEbmF3nEwH8PhZoXFC7dPK8jwJrOc4isu77r3sm5LQhk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5358.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ca31308-9de2-43a6-c2b4-08de4d0c2094
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 10:12:41.4590
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rlzr6OiuLsvpfLTijqejmMXuQBaBMnyrfnQf12SYx3UUxwcpIB0LSUI6RpLq/zXQoKU8yThRQRwhGvzbkiYWIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4174
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2512120000 definitions=main-2601060086
X-Proofpoint-ORIG-GUID: gbl4aQ6lO-8PhMgskwKG3bClWKn6XUMv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA4NyBTYWx0ZWRfXw57bM39cusPs
 ewRWoldCMsGgsmo+z1fENQePqPB6WivHOJxB9BE2oC3Hj6A6JMaLl8AA1JUPiy8h3ohwmTpm0qv
 zqTNppwHqZ+QLi00vn8QT3ByhwbPofObNI7hGJZNAYOOc/P5ZHjhCmXlPNvYPBk4x7S9DWAChoX
 1U/6flECzFFw/9xFNdFUpOZaWz/R7EmRl6qIcLtVClz9siSSKXihg86mWcBa9GCanvVmNxMc9L1
 pL0qnncX7esgAygUk9Lh0F1R0jMpQatvN/6Ak9B38cRvi+nbYNNW06orUfmm+UeooZ7QC/lA6TX
 ySqUMd8cmHK7LS8mMrfKNv7oBpbLH5MB4G5B5oU3EXAaJ3nOp7YVMpAdHAdwBy/4iS+4+iPPFnf
 JZ8KGFidj6SwS54jMWQjOM6WAxe3zXRbaHLEX+yVqkLBwqRcYs+u/RbbXPLwcSl3mA1dhniiZdJ
 rgJBxgsaHHKs8C5r0rQ==
X-Authority-Analysis: v=2.4 cv=E9XAZKdl c=1 sm=1 tr=0 ts=695ce01e b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=BE10-0SnAAAA:8 a=AoeSMSUmAAAA:8 a=yPCof4ZbAAAA:8
 a=XkRKQH6RAAAA:8 a=g1yKXgUx6fylW_SDFmAA:9 a=CjuIK1q_8ugA:10 a=3p_NMfGnNR8A:10
 a=gWwGET_y_eQA:10 a=7Sfvhf337DmkywDkm9lA:22 a=2UY7SMgi64q-0UtCmZ5F:22
 a=1gUyE30hU_ULiMxJiLUW:22
X-Proofpoint-GUID: gbl4aQ6lO-8PhMgskwKG3bClWKn6XUMv
Subject: [oss-security] Re: [External] : [oss-security] Buffer overflow in /bin/su from UNIX
 v4


I believe the bug in su was found earlier; I remember that if you type a pa=
ssword and follow it with the encrypted password, you would get in.  Lookin=
g at the code, you'd need to make sure that the encrypted password of the p=
assword you just typed in would need to be at position 105 (100+"root:")

Casper

________________________________________
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Sent: 05 January 2026 18:27
To: oss-security@lists.openwall.com
Subject: [External] : [oss-security] Buffer overflow in /bin/su from UNIX v4

Late last year, a tape was found containing the only known copy of Bell Labs
Research Unix Version 4 from 1973 - the version in which UNIX was rewritten
from assembly into the then-new C programming language.  Since then a number
of folks have been running the recovered software in PDP-11 simulators.

https://urldefense.com/v3/__https://sigma-star.at/blog/2025/12/unix-v4-buff=
er-overflow/__;!!ACWV5N9M2RV99hQ!Px94aM2iBzLwDRhX4zhSX89cVDosduXv7mNqmv7HMg=
wJHi_4FhtNHHhlzrhKONdsG8YQvXzRqmsruAgbbj_wwY8jw3A$  examines the
source code for su.c and shows that the buffer for password input is a
simple 100 character array, but the loop to read password input has no
boundary checks and will happily keep writing long past the end of the
buffer.

Doug McIlroy from the original Bell Labs Unix team points out that
"Overflowable buffers were common in those days." and that there are
likely more to be found in the UNIX v4 source code, in the thread at
https://urldefense.com/v3/__https://www.tuhs.org/pipermail/tuhs/2026-Januar=
y/032966.html__;!!ACWV5N9M2RV99hQ!Px94aM2iBzLwDRhX4zhSX89cVDosduXv7mNqmv7HM=
gwJHi_4FhtNHHhlzrhKONdsG8YQvXzRqmsruAgbbj_wKopG4mw$

--
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

