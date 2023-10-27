Received: (qmail 28671 invoked by uid 550); 27 Oct 2023 08:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1967 invoked from network); 27 Oct 2023 03:44:01 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnh8NtAhXWS/zIhv6c+euNXUhB65nrR9zxMVXxbIk9c8XtYx0NU9DtrC83vDWKxA3q30rIvJhMG2KIMjtPRDJrPCw1vY6iTTl6r9XSrAsuTE2s3YTjCdCxQrh0FZwr5QuP3x8pbeR9v+We897uv6DDe7eaXMvYj9FjAZNM88ZEQipBWBoCswEbY7ubzJlQyXyC/OGnJe9MeEArBr9WBrdYjfWQWYe2gqZNLhMOzLDgG0F55VHO+sU3cVWWI2zC/r2ukT7CsjMlWlq8wKpD546DgZvpKS1mxaO0Qw4It7ZmMJ7WrP1oGYSUGg03dD5XalFMIYimmoy/Iwm7BlcjSeOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RHMpDhdNGCEo5AuwOjOY4XYxBmvd9YmItpTCJUU/2n0=;
 b=Wi95YcSsr9fLy/e//vFls5RQ5hXnhMMKiCvSXxz6P0mcCsr8qRfr4fOopEjvy4ZpRkvyFHjL8b18As/Zh+TnjHP2O+EKoss2MXhRGH5zLQoe9rIvsBzjPDI+0ISHUYKX0/Cg3TxX6O7cp+KYDIGaMjsGDfcmazkwHqOTDVi8n8m1LiGBjgltxm3EvSQybjeaVeDSCEsb1Rzg/2C3EMN47Wd59ngoyvZJjXjIZwLfd7R4aNPtcSeYF082HhAV008UVF7pSgXRyLWgfQ2MhGs+u6lFqsJWVqq3f8v11BP9XwE4R1zvCyyt+jZMZQYk+dM4uZ6AvlR4OMsAlRoHx763mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RHMpDhdNGCEo5AuwOjOY4XYxBmvd9YmItpTCJUU/2n0=;
 b=CmyQMUF8Th52/HOh89HaRYR6P9iVzFA10zfX2M4JDzp5CpJKIOKzuJL1NnBJazTQHEkHNL1HSrIgbvRsCytdfj5kDEav4t1fCXxmJaFEwBH20cM1zpYJT2m33hWiDmkRcU4zQ/sa5dHrsNQ/CzxpF1AJVr4yy+7ob1KmWROiFnQ=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2023-34059 - File Descriptor Hijack vulnerability in
 open-vm-tools
Thread-Index: AQHaBOZUMRCADcQRYUGA+iz7b68lrA==
Date: Fri, 27 Oct 2023 03:43:46 +0000
Message-ID: <AEBE0F32-EAA7-4BC5-ABDB-2EBA7B3046C9@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/16.78.23102103
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR05MB10203:EE_|CO1PR05MB7880:EE_
x-ms-office365-filtering-correlation-id: 0325f0db-e85f-4172-ba38-08dbd69eecbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 hnr1ZMPJp4SHLNH6LpaUhNcJJyPgFimBas4URuc1DaOYDoveJds57zUXHZ3tI/4Npb1khL1Bsl9nxjrL7iKnA4yeiKjDWNwh2R9QVYtuEdY6bINEbTw3qIhe0b9/htqIU1Xdp5mzS+q6pS0aeqCyBOTWV0iK+1PgY16gvlltPE69bm6E1pikUYdAl2Bey5Vn5rpXKTVUM8dOcyjJsOMutvuTemO+oxa4ZCvmWNPUZuaYiWMMEaPuTP1oksrGBr2+n5BnUeH0HLwr8pcVRl31xYRryLbCWeQZRVa0b+B3MkYy6jcPOPBuPPa6LF9fIrwDbcE7Upz84aM0/fQ0cQjVc+0cFjak2fGTerDqVXxM2Eu98cV1YDdwjuq6MlEfc41RSmTEddyJgSuY0CyULUaNV0kAMjcsMBINNddhDkqrUinhf5dvr+ESCixbyIF7TfBHHH22jpaNxnfgtwjdOb99c4VTq7qpEMHyxm7YP6T5u/JSdWcK2fmxRYciDQucd6KQKazQ8oOGHYhDJLKKHs8HHslamdo7nQgMayEORq8yjp04nNQ+UO5camUxGfj0jV74+K1lvCJGqImQVK8srgZCESfseAE0fx3jmcwgY7q59dAc147nysFOZdrLC08Q0le5EPiGXdwj6M11BIr4rRBfmavAQ6mAlYno0eZ7hdC9sW7em5qvQST9rmOdUvefsFe0IzORjZHaMT8B3SPecDzkry2AgRERjE5J/1aJkO7Zuno=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR05MB10203.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(39860400002)(366004)(396003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(2616005)(71200400001)(6506007)(6512007)(83380400001)(41300700001)(8676002)(8936002)(5660300002)(2906002)(1015004)(6486002)(478600001)(966005)(66946007)(6916009)(91956017)(76116006)(66556008)(66476007)(64756008)(66446008)(316002)(122000001)(86362001)(33656002)(166002)(38100700002)(36756003)(19627405001)(38070700009)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?70AVBS9k7HxKEAixWioJiJ35Kjrh8z24np0rSTHltYP1quECi6c52+E+LD?=
 =?iso-8859-1?Q?e+Ppgka9V0T4JSshXgjVhGg3px7dKPQs1+jJ6J3TAW6nRXKSLHdljrIyPF?=
 =?iso-8859-1?Q?uJqvQFufPugLei+Xmk3MVfoWIYPMjuGQyfePGSHM4XsiQDS7wIzGFTqMEc?=
 =?iso-8859-1?Q?4WpRoNnfKGKdyX05h+e1pMHCuZ1YdKP9YQ0zk2fpgQaLCzQ5eCRo9clat1?=
 =?iso-8859-1?Q?OM90a1UpB0tajW2RfZ4wntTTO1Iymysv3TQqvvfs7Li3jIK7GKm493j+Pa?=
 =?iso-8859-1?Q?pKxyR0jdccVKhhemCEL/wZgHrVH9VjoN1b5BwCP7e6nv6tSg7B+PT4pROI?=
 =?iso-8859-1?Q?chO7aWuSDYOAkeOSYHAPbaPvk7W3fiFZdQ8F/lDsp2OTHLVENXcjHpwosb?=
 =?iso-8859-1?Q?9oUYtDFip1oQEn6xAluY/8YkBe4/Ms1RfH/2CjWApGkUDkMbc63EFp+EQq?=
 =?iso-8859-1?Q?dm9No+GYtk4inZZBbddWtr2DQ9RVA+RmdGaerc3nkJbnB6jMNENgv4cPaS?=
 =?iso-8859-1?Q?aXH6l/Jl3DRYI0eSgHFzFaVAR9QOddKHJyQEV8+zrDljBuEZQizmYmej5z?=
 =?iso-8859-1?Q?iOPMEn2jZ+1LqRHETpvzKX6Z2DOHaNFNfQLDDvjksElZfthCEZ4iEFxWd6?=
 =?iso-8859-1?Q?4JipqTZPENHicG5tKGmC4iryDZGROnjyZif6ZkZ4okTgUPx+KQ1QVdqHcv?=
 =?iso-8859-1?Q?gNl+xYQb19epfN8E9XiOAwSPJ5h8EVGLHf8Yptq8R2a9lynSK5I/VcYm32?=
 =?iso-8859-1?Q?560t2n4no4FFeHqU6tE5E1GUN19TP3EbkfUWliXvMwDnwJ/Kc+cY4u0gQ5?=
 =?iso-8859-1?Q?BxZPCv0+qGa4XRkoytw6BFTHPkHEzjSeBnvJ3cCLmw5x+0oW6wkrRft5kN?=
 =?iso-8859-1?Q?l3SfS2oOkfIPjYGXncBKef0hb1dV8fH3U56oLFEl2X2LPe1v+Eo3XECMrr?=
 =?iso-8859-1?Q?3SxCH+sGHHoh6cam3pTolrkz78zYgiFRExiFTXt2g7FnCfF1pBtbKhLIR4?=
 =?iso-8859-1?Q?HaCuW+0M2eGD8kS6aTQgJs09PbZBt+UuDijYI97w5mfpUEDPo62KLXjV4B?=
 =?iso-8859-1?Q?urN2GlmHzBRmvEsHnJysjvIGWKIF/kPJdCOPCpIsvpsEz1zU35iYTtmysg?=
 =?iso-8859-1?Q?nSyMUS2R9kX9pgtUcTWu73NGQds3GOibYfnXowVlMEF8mZZQuaGBr20rfP?=
 =?iso-8859-1?Q?WRl8dfam75z7Fd+NKI1JfiAMGasungI/szh8FiMKnwzCMRHnMMlC9Egxz/?=
 =?iso-8859-1?Q?/m9tVGEedtDBj/fMYVxRz/kZsqYntGsy/t8Sg6L1Nyk6JqA6YVhK9fT0f0?=
 =?iso-8859-1?Q?/pDKF8qUqOGaxLhfJ7DIO6rmihNQyt3G34C4Woa3+NXESNjIi3XsxrIOV9?=
 =?iso-8859-1?Q?J11MH1oh1WahcK/a4iidrQCkmLev6raKfQuNGAYh3oB7VRbX1NoxR2pwl4?=
 =?iso-8859-1?Q?wOv8AWhD+LahFE0NVWzeA/J1FrF5+C9gMhc4hVvthofqeHpMY8DxSZgglw?=
 =?iso-8859-1?Q?lJjUlwN+2K+/jl3jmpkg1AT6/vS0uCGHyCWNuANKlUNltw11PP9wdq3yC5?=
 =?iso-8859-1?Q?6h1Uk6eE9U2pU1g5t8p4JIi0ycvIFiyynnPZO4cz34Unb812lG5EW95u7/?=
 =?iso-8859-1?Q?TPePNwjnpHxpOHAcpBXEQ+dsz7zJR/HpQD0p2wp8eTaI7fbG1vdz4qER2E?=
 =?iso-8859-1?Q?HyPWnUl/XaUz4wbwCmv1LwHs+qHarAUqJxxbL5Mm?=
Content-Type: multipart/alternative;
	boundary="_000_AEBE0F32EAA74BC5ABDB2EBA7B3046C9vmwarecom_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR05MB10203.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0325f0db-e85f-4172-ba38-08dbd69eecbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 03:43:46.7837
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9RhYHczNIUfS8t/boe11j6MfiL1Vkzj4aeebpyI7Fjt3ZQO7v00Xr33J+mVNTjsobhzXB7rur9u5BzMT5uNSyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR05MB7880
Subject: [oss-security] CVE-2023-34059 - File Descriptor Hijack vulnerability in
 open-vm-tools

--_000_AEBE0F32EAA74BC5ABDB2EBA7B3046C9vmwarecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Description

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2023-34059: open-vm-tools contains a file descriptor hijack vulnerabili=
ty in the vmware-user-suid-wrapper. VMware has evaluated the severity of th=
is issue to be in the Important severity range with a maximum CVSSv3 base s=
core of 7.4. - CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H



Known Attack Vectors

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A malicious actor with non-root privileges may be able to hijack the /dev/u=
input file descriptor allowing them to simulate user inputs.



Acknowledgement

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

VMware would like to thank Matthias Gerstner of the SUSE Linux Security Tea=
m for reporting this vulnerability to us.



Remediation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The following patch is provided for all open-vm-tools releases 11.0.0 throu=
gh 12.3.0



https://github.com/vmware/open-vm-tools/blob/CVE-2023-34059.patch/CVE-2023-=
34059.patch


The patches have been tested against the above open-vm-tools releases.  Eac=
h applies cleanly with:



git am for a git repository.

patch -p2 in the top directory of an open-vm-tools source tree.



--------------

Edward Hawkins

Staff-2 Technical Program Manager

security@vmware.com<mailto:security@vmware.com>

--_000_AEBE0F32EAA74BC5ABDB2EBA7B3046C9vmwarecom_--
