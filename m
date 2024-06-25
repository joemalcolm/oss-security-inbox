Received: (qmail 9605 invoked by uid 550); 25 Jun 2024 12:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9585 invoked from network); 25 Jun 2024 12:15:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=ZeFhmxsrAit7V+8syOrPCfs+uJt6zcBZIJRDnFTqE5c=; b=ZT
	A8bdqA0rbx69KzFcKPiezmY9TaGbyXr70/mJs2uRh5BRG32i+ykhGVdc6ff+lU2w
	3aB1Cbo/H93pD/S1BdZLcmn3Li8vJqbrIG9dWot6DnKpQ2/Yme27crH3cSJ2uHm1
	5oqhdnszSDyn2SZegIS93jzUgTTsDo4schCr/EU03fQ+QEGCQ1NuTdxopWIOwpCn
	EVCOH+jp01Ikw7okg9nA6hRn8+v7W2p8XFgrdgk8Ft5uStxo1IrxB8Z6RntwmyZa
	SciY8rnX9MZKbAE03FyftAdqSLgZ00GZUCWjCmg6rbkjmJLVY8LQNdp2sdQC4LIh
	lRRo3zfaV5RE/s+bAUUQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U48SrnvNlK9sAl8FP16z4ZSmPjGor1ZEbQ8Q77kX4kuWZdgVfGM4hv+eq3NRUFkdkSTRhTAghEDlTOOjrJG/DT8sYNxkjLu6cKS1y7gh4HVRmma6ICi9Dq/22EJVGE/Ujan/OduSP1mZZg7fPBxRjnMK15nfdgLa2HxQ0rMDl8HxM6gemUeF6mixlGAfaPrHTD1d5L/uT4j3PtIU/1ugewAmcjy95Bvs2oRFvF5HR5nl39p5tYHaGHs26EsDBoUy5qDFCQiMKtVubJTGvyKa0oH1gioO6/T4Fgi7yO7F0fv1kqRaX2Ka4CRse+Tay6rQgHo9pZgaF2mTgUyG4Ohj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZeFhmxsrAit7V+8syOrPCfs+uJt6zcBZIJRDnFTqE5c=;
 b=CEY1erTXAGbbr1ze2PVqqXgZcV96NQ4HFXbBQBvlTOYRqZi5QxmBRDno5b4Ls5kE7WK7rKSzMa69/BfgfQdOtLXV9V0xPXJW08F6B99zNXKEBQwP4jL3p6EV1D/ce/vAvJ4F5YD6O+gQ9+vKLARQEogm0iRf0iiD5SQsUICF0gZZBuobWbaGlgd+EfLyZG1NBMRBPgRjbFRqlo6x2qNNdXkAUvIV2tSMY3rWOvtlc9GcDfc82WRgPxrh8MCK5Vk1G4RNNmAIS+V+sb7bLUcXGvTnEuQIchqF/YBHX59MbHZBLQBfYZWe0q5dxK0lUtNC3hRdlVyk8oydZczy3EwUsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZeFhmxsrAit7V+8syOrPCfs+uJt6zcBZIJRDnFTqE5c=;
 b=McHPAe5AKAZjssPXVFjTA902vcEF78aeZqdkBJ/qF5VL+6OQATLRJXEpY2MbDEku9JHPPZOMn5IIPsFtuzX1H2Z/Q+EOF/9csq7NvuFYHVN14C0KRS7taybVO5vlpJhREC1MZvcsOYGwJhS7ajBFU9CC3piR14f+Xc4axfgVMUx2g4LGwsCoWJ+FAfZekk6Tx8rS/OZSbZqHUVxp+9foI+SQSsfj7ubbJupa2iS0cshSTOatzQlxRHbbNk02wUXPnpLyxLKuw1eOspyr8vkgnIrUADuc/DXVvIaPh/bHJKhagwHQ1HGS30nvEINeSAb3FBFCJC9i51c4OfqK4yADBA==
From: Qualys Security Advisory <qsa@qualys.com>
To: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Out-of-bounds read & write in the glibc's qsort()
Thread-Index: AQHaU6ut2YcF6TZwMUOBFY7sDqdUxLHYewQAgADP9AA=
Date: Tue, 25 Jun 2024 12:15:22 +0000
Message-ID: <20240625121358.GA4177@localhost.localdomain>
References: <20240130183915.GB16546@localhost.localdomain>
 <6658f4b9-7b5b-4c1b-8fc7-e9f2801fe3b0@catalyst.net.nz>
In-Reply-To: <6658f4b9-7b5b-4c1b-8fc7-e9f2801fe3b0@catalyst.net.nz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|SJ0PR06MB7033:EE_
x-ms-office365-filtering-correlation-id: eeaa3982-3a34-4d83-466d-08dc95107cf6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?kAHFG+xDqg4ryZgNtwFqIK+FID2EBlO6P5fz+4u8rI89xLK7dX7nQD/cZl95?=
 =?us-ascii?Q?z0TYX4qF1vJt4f5ntgRMBUV7hSruhmiUpJz9EHw+W5vGXP8L0wXRlAWhAp8+?=
 =?us-ascii?Q?G8LjNXGodfk6edsEIxPkezdQb+utFA2z3QtZD9j86oIgAJETQUk2wJ+FUVzG?=
 =?us-ascii?Q?52E5BwA6sGHyKNxQ8NO+dzEyLqti+gwA27OAANPk8K7RMMmpM8JnvnZzpPvO?=
 =?us-ascii?Q?O3lfeWO3YzTmTClQJEKMJ58qiZn2ypP18GtanG/K50PN+P+0c6aYm+AcVsxY?=
 =?us-ascii?Q?hVmFNCGYmHV0CwlHjuVG6LbnIOLmXbZSspzGLbYD67fekwTvd/lh/S7QchsN?=
 =?us-ascii?Q?8ehWSjmkKi0QFp/OG03UM6W1DHoB7L0hUWru8/LwMBCfIRx3SvvoSumvWu2H?=
 =?us-ascii?Q?BMj3zREtaX24yMPdlYb2oJhCF+eeuqrzatBkaCQunZYLQDremjsvR8/wZap0?=
 =?us-ascii?Q?2WSODCKzKmwFMc+qvV1s0o3oIJfQZ1Kbh08GlB8Ue0yAtgmjsuRLKwySpuPb?=
 =?us-ascii?Q?lEAGzsF5TvBfoHNC6g60CLhDhX4HXYCBP1Lin/e57+Q2K7tcBda6iW82EMWA?=
 =?us-ascii?Q?4eQshnzTXiqDDWK9af1tLoYRp3zpg4iWE3Q6A9Tj7u0xFjWs6aHtfJpwrfaB?=
 =?us-ascii?Q?g1wCI+8Jsx6sQcPDc1G4LV8mOCCybBtwxZ0qmU1x0bm3lAitBhiIiPSS1Tev?=
 =?us-ascii?Q?I1CgfKL2I5TrE6o3M8JNpGAu/wAEtYkH63T7HtBI3LEhpe4VMjAfyRnuiRuV?=
 =?us-ascii?Q?jNIyxnWfWNtSoCoC3eAhnRNYAbDjV6fmWcCt+2f7triMzQYSfsJVuV5CzLwe?=
 =?us-ascii?Q?dw/gO8CtMpUfLBWPUISq6zD38jVDt2xi7+z5ya+G1w6g68xInAifygTpX1NO?=
 =?us-ascii?Q?butRl+nFH+IF8kTCz972W0ne3Wo1808r370CYgp0MeXA2bnFm8cDS5gWa9Z4?=
 =?us-ascii?Q?cIM4Fjvob1kFsS3StGWGyyykNk0oAtZcxkMTKF91xMMP+v1ZnVbf6Kg9Wid6?=
 =?us-ascii?Q?lEpmf/HRm7op+HXwaRA8uNPSDBgMCUY/5EvR5U0YMdfbyC1Yn2ncD5ugMlYV?=
 =?us-ascii?Q?NgDPCMIyBSLgZWXsQ1IMJLvWQUmsuM7rktH/Opwpwj9K7O507QuQzGo2skQ/?=
 =?us-ascii?Q?7IxORSBqFW2YK5eVnYoO37vy+J3xEx6QzS0HdBzsehNn0LvZHTRG0s7bJqoN?=
 =?us-ascii?Q?XNev8vEoiQ8EsELJQC+EqClUNpQpI6QYgzYdC3XpWtKVxTwcSBeDfiE/uH1n?=
 =?us-ascii?Q?LjvfLvIqFGgVrl9slzzLuq+Lmt3rBvqAXbIwXisarwvCzMnniTZMmvITno/u?=
 =?us-ascii?Q?o9uiYwqd0gcnX9oiDYh12/gmh0d92MnBlz5Kz1TLEmPtXd7BhM/1kd+f+d9z?=
 =?us-ascii?Q?HrLOSwckqGProIIaqHghcVNsZalz5LeRhzgBuoz1sLIo6gfGEg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?g8x4Aob0FI1ic3CqN7R4Rg9AqFPXPc9nsI9Yy8sPen7nMx5LuHvT+CnpQ73U?=
 =?us-ascii?Q?6KWwqjZmixf1InREai/oN3z5rYhT2TwbIUkERRgOxAHQj8BB9ikVMcRxlD+B?=
 =?us-ascii?Q?CBYtWWqLJCrGpZMNDpA6hMS6n/wQd/3nr2JTLmtvPitVa/prMP+OnrS2xehA?=
 =?us-ascii?Q?dJWK9u3HJFFffr7eXHCPNe27u67bh1UxEurmdy6jBHcEfIclTJQw06Iu9PE1?=
 =?us-ascii?Q?O7CU9S0tGmEQP0UWGDxozRs5GGteerWU+Gz7jADbFjpbe/XOJdSGdmzONNYw?=
 =?us-ascii?Q?DwePNBRJYMvHKqASzOTT+Fi3DXSmeMW9EQ/2TQ1PNsnjmJCTPs7bwLX+tr2W?=
 =?us-ascii?Q?geeJAtawS9MF1WqQNt/aQKAKzikecZAWDw2SqaRqZLk4fqaXKGi4FgtrSENs?=
 =?us-ascii?Q?8+XCYKd0U1BecOZkvjGeZI1hkP1zaKCpkgmDVyVqqR1sgWwc2iF7Kemg/5Ug?=
 =?us-ascii?Q?yCJepi0d2WcwYVsvMIIGglBlmPPtG6cQM2NAfPtzDGKu1PZ6o4aWaEHfQVRw?=
 =?us-ascii?Q?tGnYLbG3dpmweRNrceY/V2HZ7lkYVPknM20gsbDMyfJ55XjZ/3zfPHdGvnfb?=
 =?us-ascii?Q?twYyqq/R3qTmx/VAbeYeeLtqDeFg9eDRIpJAxfgGL0k8nHOZbuwQPPo7R/Tp?=
 =?us-ascii?Q?Vv7Z5Q8Fa6iJMTE9sLXyo/GnwbsQV9WjM1ssqm4ebNjQKphqEqusajTD2Oli?=
 =?us-ascii?Q?FBtHiMaguP5BvoPGnX2DBAHNPKlYTcMgr1jUbM0TcM7SW1oQoebviNqdIQnI?=
 =?us-ascii?Q?oAfbC6tPw6UwLjY1jPU6E16PQWipyENG8JEqLN91bXHt+PMEeVIH182MLHWK?=
 =?us-ascii?Q?XmhNPu/0ivfyzi/pV00NWQyjSecqFhivhFBNomIFGQFi/vudUabuIaF2lcPJ?=
 =?us-ascii?Q?EJykX+Yuaepvj7cLoF8SpmbjX9Dd6/oBZ6/duC9gvIpjWCGJPFxxkAcHuOWa?=
 =?us-ascii?Q?44WsUNJocjXQ//xTpXOZZDQYgnuaX/W73yFZUfhXArFcMA2BxN3VFVhu2Q/h?=
 =?us-ascii?Q?JALKTA5RVYsoFSGsC/TaxQHCXAMsSxGRdxEPu1NH082xgNYNyS2sKoifwVYY?=
 =?us-ascii?Q?iEIkhZglOkeQpu3oVRoMt/mLC5o/9ag5ozI0ug5Ghxd79lEAvYUOpOx/n8CD?=
 =?us-ascii?Q?xSp5eixnXeaLIQ1NJ0BfICbXMMGSOLAKSphHm4zPMBR7OX8W+tLM2M4OjS2S?=
 =?us-ascii?Q?0AaHThMcUAJQ2WW6tv9NgQmpZccmLptFD2IXtCxicFsUe9R3hwAfZ/Z9DB/Q?=
 =?us-ascii?Q?HdZJKnUFOUEJi0qA6y3MjJTsqaL8ksYANVbxAUlzlZPJJUkeEQHj5547w/9X?=
 =?us-ascii?Q?lmcTVwxW1mX09G5anBuGtKXhSzqtnOIZD46Dm27wtES/dqnQXxCgIX4k5zrE?=
 =?us-ascii?Q?9xWc+IPRPiZn7QF0oj49m4sIZkchfm/P1FiHLYlmbAmM8rHN0jaQvS8nYaJA?=
 =?us-ascii?Q?nTKTtzebTK2iZNtDMS0+lTlT8YPERRbvndEMvw1BJGnkl+LZeza+ZFeh38Bf?=
 =?us-ascii?Q?IFO87DHbNerMsoSEfYQypc0f46UPSLZlOTClKgRmj2LaZ0Q8Z+19Tb3eVN9S?=
 =?us-ascii?Q?Zp86AEYPEH/uvYmW8W4h7EAI0gjLpP3GJTg1SvascfCe7gYjpAv5JfZMiu4A?=
 =?us-ascii?Q?yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0B158A6E80E5964F93B80983FE43A3CA@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeaa3982-3a34-4d83-466d-08dc95107cf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 12:15:22.7662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kjjrh6iYgF3RYCUcUwdUQU0n5ywd86a2xXV3Z2S82Fkt7UhuacVyTD96zM5N19fHxRZ5fEsVWriZmA40mrS/kj5o8tqXU+3dzbWN0MRf4yU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7033
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-25_07,2024-06-25_01,2024-05-17_01
Subject: Re: [oss-security] Out-of-bounds read & write in the glibc's qsort()

Hi Douglas,

On Tue, Jun 25, 2024 at 11:49:40AM +1200, Douglas Bagnall wrote:
> So Samba was very susceptible to this bug. The good news is
> ldb_qsort() is not used in very many places, and some of those places
> already used transitive comparison functions. The other good news is
> that *now* it is patched with the "tmp_ptr > base_ptr &&" fix. And the
> third good news is that the comparison functions are fixed. That's in
> 4.19.7 and 4.20.2.

This is really interesting, thank you very much for your work on all
this and for taking the time to write this detailed analysis! We are
extremely happy that our advisory has been useful.

With best regards,

--=20
the Qualys Security Advisory team=
