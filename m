Received: (qmail 26353 invoked by uid 550); 8 Apr 2026 02:10:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30003 invoked from network); 8 Apr 2026 01:40:27 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lLvtlkk/lZoCqGewcZyKUqL+4USP0leld2+m1w64g6tJ9kH7XsF6518gthZhPiU3L0yMATjP9Eh1sT56mL2tbye/xe/CuAlFKOpMDkBmD+T9kegBavWSJ+UbFe2ypMouQxAP+MsKRlE4qBdA9oPuN3Avpr4G1hzhxalBKlpdw8pAjKJRkXNfghZakhnd4D0j2aQP9s3QgTBTjWtgHMT488YsMSZ5FHW90aWrnlkaUra87AVq0laTHIuYGcsQKe48eZCAgZGN5jTDbq6v0IE5pZNrNJN/Do08pIQbrNSpX2jCqycACL+DTupfb9QurA2w/E8+Dvrkc+rOACCYLqtw9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sG5YzX5kMTXkRbCnMLSnvAjCMlIpDnH49au4dysBuTQ=;
 b=PdzLx7wczWxpyY9pDiZUmVLBVT0m7A1nuEaSJoJx8LN+QsqET+oAmb77t1dPcT6+zKHgIUu5K1X0jR585ROIuIPyoJXrH2qQ8em6TgL8fFzwW1RRZb9GBoGhMepWK4d6Pggf+EhJrwiYZDbtPfJVynPTob2Bl1gfxX/E/V5EjpuU2R44stEYOXJkHb70qwX+NSc8IAsUtIw+BBZyVzwdB5+Wncr0ela1UFQnP4BNr5pjROUQe4jOgrJVH5KaSwIryVfkKYrKaQ1pQSa0MRx5/ZfldZxIKk7vtYeJ1RW4XO7FFEdgpkwBnQkbSmztaEjFOxEfNqccrYQk+MObMl4y/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs.auckland.ac.nz; dmarc=pass action=none
 header.from=cs.auckland.ac.nz; dkim=pass header.d=cs.auckland.ac.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.auckland.ac.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sG5YzX5kMTXkRbCnMLSnvAjCMlIpDnH49au4dysBuTQ=;
 b=a1DVgqSZnWADiAZ2pT/3l551YkzbGgjyBU1raQjvmGC1rsxMs+gRbJn1AVifRjTKFXiiXFKHSyVyz8G43WtBIw8f7w1ViwLXNvjUWCo/skINGULMRKRuPtIbUNgthjBsoe4jOGGkHpMOcc8AnOAuT/tfy1nJa/t4mHUkPJCyXTQQg0SxdJ3A55q0e3cGucpoyJ0unudFleHVhMshewxhvrwxfuAXravsxvfJwH92W77oEaiRTBgdHyI6cFwWFJqy1pdhZmqMQWLy/b9v2XHgg08yhBb3q6TH9ofeLhCsuzHTYYhKwD4OtkmwPm4QPV477TlGqfEzdd50zGsBvwd/8Q==
From: Peter Gutmann <pgut001@cs.auckland.ac.nz>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Multiple CVEs disclosed in CUPS
Thread-Index: AQHcxvOFdWAcKTarTUWAr7cSNMStHrXUYs76
Date: Wed, 8 Apr 2026 01:40:13 +0000
Message-ID:
 <MEAPR01MB365475EE9DC8CA57A14D5B12EE5BA@MEAPR01MB3654.ausprd01.prod.outlook.com>
References: <c7faf33c-7843-4569-89fc-279484c526dc@oracle.com>
In-Reply-To: <c7faf33c-7843-4569-89fc-279484c526dc@oracle.com>
Accept-Language: en-NZ, en-US
Content-Language: en-NZ
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs.auckland.ac.nz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MEAPR01MB3654:EE_|SYZPR01MB7286:EE_
x-ms-office365-filtering-correlation-id: 556858e3-6042-45b4-8cea-08de950fc747
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|786006|366016|1800799024|376014|10070799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info:
 LN1YfFUaGNlOsgX60K9fG57zCnuiRlxYCuPNrjyoPsAh07mDV0bt8I8xK8+JDV7tyMFUPAXlkNAC+YD4Rrk7MzsQgnYt3N9dg/VAU7IgOwvxAaAcu8xJBUG8TO2D1CSlFtJM0Sd9wpsr5wroyA6Yhj8A3FY2PY8K3kuNbyB9Z6aJ+WH7z4kkKVVQYkCxeuwH/FDAVHBGf7HkrbKvvkPkyWWUjhT9RqhWr/N8u6drzNIFIOalGOxQB8kpYf0DpA6Z7UbDEHIgiL1UeMB1GnhDKjLKAMEl5hOZkTV+/A5Xjq60k+9vtx35rPuwm+eVCvEOUieK7s4ej0oJkTtRbUdEJ93flWEHyH3fU7IgIWLbzD1BKxu+FB2rRgDa87CYETrftZfBG/YD2v5Kl4kxqTsAJAnEwK2l01/YSQX5wZp+qlgqX3tliAn68aPjC/nnYX74vFwkrFa+F8dcJTiJrdJkyzUguOoLxkB9BBTNJwXpsd16grn6bcU5Oz43QrCp4bFU7Z9AQbmpY45cCiop4Jlb5Z+Y0t3vjdCY79CxBc8MElvube1fumkKhLZH/qBhV10cFToFwh2EOsDiM4gXr5vKPqKfrLt0lyAFIgRtlfUmZjiVQu4JppqXx1XoUPEKg37lxB38E2QVl0FXPDdPOFtfDkE9BRm7fuqo9xOVfzWNGbHMPz3OPJOLYjbxEiLkcnvp89gEGy2wm8QWvgCqwdtEvfBL4kWfEHjMteqWHtma12c=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MEAPR01MB3654.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(786006)(366016)(1800799024)(376014)(10070799003)(38070700021)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?hwutLYoNmvqr/zpufP8Heu38Biis9/PCE2tMCLLrlCuOuzsffBFgRVSN3p?=
 =?iso-8859-1?Q?aZGg7n2hTN106Z+rcnYvD70rg4Au2iWttQGIkSER1KuW2E+WfXdRYHlBiX?=
 =?iso-8859-1?Q?7f749KDTDcO4HMvYCE4SiyvRjyOZpHqnC98A/KTkWqTqmnTuB9GiXvFRft?=
 =?iso-8859-1?Q?KBsufTa9XeKKPSkzdeEJnlXQ8FH+TeF3VmtEGx0Mo03UgPJLUDH4T86Gc7?=
 =?iso-8859-1?Q?FZ/GqVhHqbr3Zl2+Q/y9O3LvPSaFW/xIOjm6W0ojnphi71mcxK/sdrWM4p?=
 =?iso-8859-1?Q?G/4affCfxC5z3nMvEYe7DqVGHF6sqp+T2EBMmveUv8WT+jyiZl0VO/Suds?=
 =?iso-8859-1?Q?NvadJVYWuyrECz1T228X3BhkNBrQoMSZvb0qqDZ8gqNFeavHrdLrf6brtw?=
 =?iso-8859-1?Q?xw7/cMuvpqoyZTOkoWLQE0QKYfY9U11t1Ilq9xQ1TJrln6Q807PMMbXejW?=
 =?iso-8859-1?Q?oEJXNQ+jmmJVOtuS2MFw+jIx1BZXiVBTJQMykDtWp3rQeK5u6xzhF3O0E4?=
 =?iso-8859-1?Q?1wJ/Y/Sau36c7IqoUSKqWUdEU2FYlxmLQHQoR5Ccbksr2us1UrvUJH6B5o?=
 =?iso-8859-1?Q?6Tt/9R16z4svbsMnNw26MnnpfCOKHRu/hGwk3wkHwpf20dh1fgLHY0C7Wt?=
 =?iso-8859-1?Q?Z/wUmxudBxjVqL+E23HkK2R0KBfTMw8X39FUEfzGL11st/RMTO0ymOs+dy?=
 =?iso-8859-1?Q?BMIMefTjA1yxL91PwfWy3xEPYTwbdXvqHdRIJSkLPR1g5n0tu9kiP79997?=
 =?iso-8859-1?Q?98/9YCavnhnmq+rBoLNnCbd/0eyIEnAqZZEc9HLQSi3QxIF7m1bxYSYp85?=
 =?iso-8859-1?Q?U4a67i5KTjrSTpU3pdn4pS/H6emBaP5yJ3j//AhqWYwusA4LVu+0+AfjPg?=
 =?iso-8859-1?Q?n+vt4L0ojTJ0pN3Qxsv8QbGbZzyUk+usz+nkJMPMZfYO4Frqu2cO+dc98b?=
 =?iso-8859-1?Q?ka8py9rhQ/9DfCYk4rcZrGqfGEBK7AMK4yO3xuYrndtnGt3nZ3NLBGlDWb?=
 =?iso-8859-1?Q?aGuFpjbzBgXCFTUa/jnPN3ChrZZ8YiRFroIrwO3PpLlZN29D8A6QLuhiIp?=
 =?iso-8859-1?Q?dWnZzVYtHG9EJEFNeR1fydtogBTD48+i3glTJZ/Sh2TBlSRJyG9RX1EX6y?=
 =?iso-8859-1?Q?72s62Efk/R/WVW/sB4AKhpPOSqj+jLaSCfhHsT9W7JgsZchoGsn7zCYu+5?=
 =?iso-8859-1?Q?UPNukR44s+dVpiyfu+m4waj0/lS5N4Vn7MBCt9T2yFfV/sERnkm8Mpezwh?=
 =?iso-8859-1?Q?ZIrVth1pCUIaR6Cm5ouPi4SEGmOqf1zkz7BpYNFmtYc48+LMtVYFh8xgzo?=
 =?iso-8859-1?Q?njz4LTly5LvW3P/dFArgyD8aWGyZr5ZK6Po8LRPCqQCCthsi863dnLA7mA?=
 =?iso-8859-1?Q?BXVF1Og3Epjq0cK42Zm2By46+PSmdYnRkC/jhjroNJVD8Y1ZX/YHOCEftP?=
 =?iso-8859-1?Q?fql+xLJMrG02WFIMqdA+rujHiw32uoWhNemsHQuXYjpD5ZP76nPn2+OtO/?=
 =?iso-8859-1?Q?KfVoxEsY/jscNnxw/FnSkK0miip1+HceyOgYOLlOMQtXTQsOpDxC0n1Xbc?=
 =?iso-8859-1?Q?ARROfRSB2xQ83Q1DqJYYwIcmibDtz2N95iqF1uSqx+sHK6N5MepmsUlXnk?=
 =?iso-8859-1?Q?2bsoMmFhx1zE3sYJHoyCUN5ab9deDRniVF2mayJl21kju6I/BXmrSnxyo8?=
 =?iso-8859-1?Q?tdKb4v2iRjLV3ZieX/xiRKnwej7d2P46bxNIxi6ITKcbwtVa2VAeAqfBDk?=
 =?iso-8859-1?Q?5eMaLiRS+8BZ+qNtyhei8BreD1IAb1P1MJIbroGBWesNMXjfjXZrqESU+Q?=
 =?iso-8859-1?Q?Huw33DtMU8+4crWQy3YAy6cdOYWX4mExI8PCkGM7wuPDAe00Uy7vcZorFu?=
 =?iso-8859-1?Q?kH?=
x-ms-exchange-antispam-messagedata-1: yZc+d5b0huOA9w==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cs.auckland.ac.nz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MEAPR01MB3654.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 556858e3-6042-45b4-8cea-08de950fc747
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 01:40:13.3446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d1b36e95-0d50-42e9-958f-b63fa906beaa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cB1afbIhsTahSjbCnQUiRWMYcnEJ8nsFQBDA419eANfEKga9YPJI9Zba5R1jNuXSAqp1Pm++icNSJ9764GSQHu3efw167ZmISQKDooTXYig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYZPR01MB7286
Subject: Re: [oss-security] Multiple CVEs disclosed in CUPS

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

>https://heyitsas.im/posts/cups/ discloses:
>[...]

Hopefully not too off-topic but a related issue with CUPS is that it's
incredibly difficult to remove in order to harden a system.  Under Ubuntu i=
t's
installed by default and deeply embedded into things (some packages can't be
removed at all, try a 'sudo apt purge libcups*' but whatever you do don't h=
it
'y'), and keeps re-enabling and re-installing itself via different mechanis=
ms
(release-upgrade, snap, etc) once removed.  So the easy mitigation of "don't
do that, then" isn't really available unless you're prepared to spend some
time recursively removing, disabling, and locking out everything involved.

Peter.=
