Received: (qmail 11869 invoked by uid 550); 5 Oct 2023 16:03:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8036 invoked from network); 5 Oct 2023 16:00:11 -0000
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.47.75.169; helo=can01-yt3-obe.outbound.protection.outlook.com; envelope-from=kmcmi046@uottawa.ca; receiver=<UNKNOWN> 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uuhz7EtgM/XdyJkwPG8kNLim4Nz4eXu6uR3Xpfpt7r/WIPkO/+7KdEyGxYVt4+7CswjIgCObgjvfT0+6wuDvLxWXYhPsC2FSogsvSJKO3bfGzCIHBEjRaR+rVbJvRZQr03RzDJzky3yhK6YLnT0jntXl0yZs+PCXKGG9r0eEvYnH+uBcTD2mm3USrEVzdWNfFPxAG8htD4LuY7EU2uSwpoQnNOmCbOcKgccZx4d6YapobNLEx2Hg0PwIq6r881mTAGWzmsppuw2qK33XKve5FHCxRVqvzA732PU39hm2sUA4yBEK78VaXjgIubLApotYwHqtz5y0asl8DesTHzm37Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8HCt3HHAxV9xOSGfGocpmkrZhhNNfJ1dPzzioOObPk=;
 b=J2CrO4muKQMr2dLEA6VqfdRBbEQU07Ga7y92t3U6NQkU4lJyGMWTjMVWcWJjGv7+bfFcaA2961Igcv2+0a10eo+6QkNGqHVK3kiTT885tcASdusdeyrNuS4t4teUTP5qrwGv0wkbECLbMI7wK/8SxpUcopeiNrIgbZAeIP8nRYADZV2dopbjpP2FU8EZ8DuShSFWqdTTxU/4jt2AGMLEE/GlzieGaGYfflnefQ5NnyNPL7toxaHaRV81yKi0iq4hNi/JFLt2RLavdGmKBPk+XRxHHSC8DWNKP7MOx8M+J/uqEwRG9nkuUnIk5r8fQJcsEFK+IUQL0Mz06iK0SR1cMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=uottawa.ca; dmarc=pass action=none header.from=uottawa.ca;
 dkim=pass header.d=uottawa.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uottawa.onmicrosoft.com; s=selector2-uottawa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8HCt3HHAxV9xOSGfGocpmkrZhhNNfJ1dPzzioOObPk=;
 b=bfzow3tt6TVHvztNofE8vC8A21qHINOnswd48OORg7ozyR/Cs5Te197K70yboI4b0y3sFLqRUlNsnNEGIk7CaEsSXJQfCgYlhSOnAviAuXIWz95aTeXJoGv3Dkcfq/0YpLirCJ2vn+UWjGASwePanbk0751QRtIKcCa0LKpG+wc=
From: Katherine Mcmillan <kmcmi046@uottawa.ca>
To: "dwheeler@dwheeler.com" <dwheeler@dwheeler.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] European Union Cyber Resilience Act (CRA)
Thread-Index: AQHZ954os98jkzkn4EWeyOdunOJmXrA7We4B
Date: Thu, 5 Oct 2023 15:59:57 +0000
Message-ID:
 <YT2PR01MB9827F9C7112CAAF0FFFC320CE8CAA@YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM>
References: <1061E5A7-416D-4C7A-A2CC-AA3617ACAE13@dwheeler.com>
In-Reply-To: <1061E5A7-416D-4C7A-A2CC-AA3617ACAE13@dwheeler.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=uottawa.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT2PR01MB9827:EE_|YQBPR0101MB9087:EE_
x-ms-office365-filtering-correlation-id: 6406792e-74aa-4b63-556e-08dbc5bc1f66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 rmSsX81MVh9vyC5XUiafU1tt7uaYCDx4yvf8bWVe1+5SdCim2Mb9N6Q5PuvYkz07YLVDDyV8bV9dtv/EZaLvk1cpH965ldm5d7FkcqsqupZryiwnhzOyWWuhDkDgpJr3tLS+LE0GXy/CwUBzMzA234kIqYCiPqyov7JMq1hMogjqVcV0JMT+T+AYLEsfebz7asdUVriYhYRWvs+o/AYUH4omctzgtXZ/iJGswgGLkT1/DJNeQWOkcTEr2WirGJS9O4+Ta7KQTTWJzKz987BxKfBEheNdOy6OgjydH3JBCrIoBW1x65IyrC6QSrcOIFmPQLEjMWllVnsMOB7V8BDKsdQjxio1k49Ww1d5PEeVEwaao23n+WoFl9r+ko+R5sil7VuZwz0nQMIZGdENIq+81xJRDgWNJhz2Dx3a+wn997qeQ+ZJr/CMpAFRSnWyhiN6VSaAZbsGavM9JLPdqMU962fiRqMIU51iEb6j0mW8Fdr3cOGcwJbWxQdu8Agponl4ye8aIZ0qUONCuohTdkQblp3JbADAIjStRrCFRJj/gdYERQTOcAe/w2VVvZ7xuKp524BkZHIqqpgg8nxnNECdNL5FBBD3FesenWUfIXJ13wg=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(39860400002)(136003)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(19627405001)(7696005)(71200400001)(966005)(478600001)(6506007)(53546011)(86362001)(38100700002)(38070700005)(122000001)(166002)(41300700001)(2906002)(83380400001)(9686003)(26005)(21615005)(64756008)(33656002)(66556008)(66476007)(66446008)(76116006)(786003)(316002)(5660300002)(6916009)(66946007)(15650500001)(8936002)(4326008)(52536014)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?Windows-1252?Q?GgT3t1QMVL2oRmrJqZUAttNAXpF3YQO1S+GGj6A+wotkJx6ZEV69i/tP?=
 =?Windows-1252?Q?W0Y/ESUvhkPo8jDy1A7LwSUKfp3qNgEMD7xe2dQAKdNGF59lG2uUWIoA?=
 =?Windows-1252?Q?d69TiWD0slXdNFoqPJZ2ya20+fPC4O/BX8ETg9kgpYE8/E5rvArLSRwX?=
 =?Windows-1252?Q?DkIQ7FG7bwBXZ7EzXK7KlSutKzk3j8rYZXxzvfoDeY3I639GhwQyjuDM?=
 =?Windows-1252?Q?gULKMcikZdJzJu0Syvirc+UYF6hnv1l1QFj8Eaerm5jMzFEM3djvOiUy?=
 =?Windows-1252?Q?ty2Cfn1uNPLno37d3Ht8GabAW7Konirn4EH+ZXdjEMhDCG5OHSLCttNF?=
 =?Windows-1252?Q?w5t4uYeRZ45fMd+YuYeBBxDD7qfM6yUtqO+KhIErHc5VNkzNf1MlE7PE?=
 =?Windows-1252?Q?WTIw2zMzCAWnLsfhWu7WNRm0ygthin6NxVCYE/RHWpGaxQakLhoXcbM7?=
 =?Windows-1252?Q?NfzRG8ISNyXEB/rauHZlnr34n7gRJmk9OMPrtpG9Iag+ORqUqz2WSh/7?=
 =?Windows-1252?Q?tJmDZyDXavnRalu2DTVnLFicHL5s3VIpSvt5bzWGNKPhA8bSesBZmWwY?=
 =?Windows-1252?Q?892TU7j8oWI2onm+MJaKNtFuwksMnchfgJSer5iCj3DJyDfCUUIijkny?=
 =?Windows-1252?Q?EjpbJH2w3z56Bs3Z3CuEuVi72CN1nUojsEg+Kf3+ox6dkJoVTZpk4lFp?=
 =?Windows-1252?Q?bsODFq2m9f+7FDZD3m+tV8mFkNIt7Rev7R0yNOLkOvPAYX/ySAA8F70W?=
 =?Windows-1252?Q?0qcX1+qunWEjxi+OZwopI92zYytOLGpE3NIwbmSQmpaaEIyA5cQW4nbu?=
 =?Windows-1252?Q?szsFtCfm2FDRLNTSxSPjoZkdGSB7rgf6fQKGBbxVmHIYK0BMA142/si0?=
 =?Windows-1252?Q?5Ope0ZgE5pjuUB08DEpTeIzC9eekKMkdCCo6wKXM6ByEOMH8TS30PMOf?=
 =?Windows-1252?Q?Davw3dt6srgBvtgqWHRMYk1HJ6UZVlIabUnuACR26HDR5us4Cx6eMmYq?=
 =?Windows-1252?Q?l9gnE7Ddz9ssy7glYbEDQuu6B8kE7BawZpTGLqO2lwGvOLlg/43JO7QP?=
 =?Windows-1252?Q?IdWWqtysmBen77Pzwfz9hGZlGX+B9mr22R7/AhTz/m2c/b5odRhsgNZ1?=
 =?Windows-1252?Q?gzJP5MVnzfNJUu+QC563joawJn4PkIyoJV653pOVGlVr6UidmpZr6zMZ?=
 =?Windows-1252?Q?OpkqXFQHExKBhEiCJg/pNl9griIBi4/+YKbyLnr6qHcs/ofMqK47OrXC?=
 =?Windows-1252?Q?nQlRZwi33rbdo++1scq9jPBDlMB2lfPMFznBVje2i8tbHD9g+GLg1G9L?=
 =?Windows-1252?Q?Sccpc8f1gkKFnKc2UUdsKCE9NFVv2qrJyq9XyXcwmtZlBDd6X99O2p2w?=
 =?Windows-1252?Q?fOzYItySiGSxr6sAcEUIw8Kk0fPgwJBwVT0nFZ628vll5TGl1gD2nbIN?=
 =?Windows-1252?Q?yZIrKN7p9+WTIA4WWrFCpqCqGWGj1BbrFASoN+xnIs7R/rroCMG40HaI?=
 =?Windows-1252?Q?0Td7ZDcbMjMaOr3ucQeB/2D/Va+37RaSAmPswdN9hzX3/l+Eung01Ywh?=
 =?Windows-1252?Q?SKKlszRsCifvXY2cMZQ1Y6eEBPStKo8yA/8OKpoQvx4Xtlqdezz9VgVz?=
 =?Windows-1252?Q?p50++KS/0NZw9V0NFU0ArZMpJ+xk+5oB8JUh6tM7f4QS9xwbGom/oE2t?=
 =?Windows-1252?Q?JeLF4G7pedrCISMU/JEOkblIc2Q8s+m7?=
Content-Type: multipart/alternative;
	boundary="_000_YT2PR01MB9827F9C7112CAAF0FFFC320CE8CAAYT2PR01MB9827CANP_"
MIME-Version: 1.0
X-OriginatorOrg: uottawa.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9827.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6406792e-74aa-4b63-556e-08dbc5bc1f66
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 15:59:57.4201
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d41fdab1-7e15-4cfd-b5fa-7200e54deb6b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIsxsGvheTIUT/IqvkrLq/bnBbCkfh9Zkf9P3MFjiHdgVZ9P14EiK/KU7A0mq+77vhHQw/nNrBta9WsnrYP7sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YQBPR0101MB9087
Subject: Re: [oss-security] European Union Cyber Resilience Act (CRA)

--_000_YT2PR01MB9827F9C7112CAAF0FFFC320CE8CAAYT2PR01MB9827CANP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

"However, when evaluating laws & regulations you should always IGNORE their=
 goals, because their goals are IRRELEVANT. What matters is what the laws a=
nd regulations will actually *CAUSE*. Put another way, RESULTS are the *onl=
y* legitimate basis for evaluating laws and regulations. In this case, I th=
ink too many regulators are focused on theoretical goals while ignoring wha=
t will actually happen."

Wisely said, David.

Full disclosure, I work for the Linux/Unix Management Directorate for the G=
overnment of Canada and this is something we, of course, also have our eyes=
 on.

Sincerely,
Katie
________________________________
From: David A. Wheeler <dwheeler@dwheeler.com>
Sent: 05 October 2023 11:08
To: oss-security@lists.openwall.com <oss-security@lists.openwall.com>
Subject: [oss-security] European Union Cyber Resilience Act (CRA)

Attention : courriel externe | external email

Solar Designed posted on October 1, 2023:
> The talk... starts with a mention of the European Union Cyber Resiliance =
Act (CRA)
> and how it is problematic for Open Source...
> (If we want to discuss in here, which I'm not sure of, please start a
> separate thread for this sub-topic, do not just reply to this one.)

Fair enough. The CRA *definitely* impacts open source software,
and it includes security-related requirements. So it seems on-topic for thi=
s mailing list, at
least to note that *many* people find the CRA concerning & to point to more=
 information.

I think a good place to start is "Understanding the Cyber Resilience Act:
What Everyone involved in Open Source Development Should Know" from the Lin=
ux Foundation:
https://www.linuxfoundation.org/blog/understanding-the-cyber-resilience-act

As currently written, individual developers of OSS are "probably excluded b=
y the CRA requirements, even if you occasionally accept donations. But if y=
ou regularly charge or accept recurring donations from commercial entities =
(for example, if you do open source consulting), you=92ll likely be covered=
 by the CRA."
The bigger problem is that nonprofits & private companies are expected to a=
 lot of things that don't make much sense. As noted, "the assumptions the C=
RA makes about software manufacturers do not necessarily hold for open sour=
ce software developers."

The Linux Foundation EU has a page about the CRA:
https://linuxfoundation.eu/cyber-resilience-act
... it has many links, and is urging people work to #FixTheCRA.

Many organizations *have* been trying to get EU regulators to fix the CRA. =
This isn't a case where no one spoke up. The problem is that for the most p=
art their concerns have been ignored by regulators:
https://www.globenewswire.com/news-release/2023/04/17/2647861/0/en/The-Ecli=
pse-Foundation-and-Leading-Open-Source-Organisations-Deliver-Open-Letter-to=
-European-Commission-Regarding-the-Cyber-Resilience-Act.html

I think the overall *goals* of the CRA are laudable. However, when evaluati=
ng laws & regulations you should always IGNORE their goals, because their g=
oals are IRRELEVANT. What matters is what the laws and regulations will act=
ually *CAUSE*. Put another way, RESULTS are the *only* legitimate basis for=
 evaluating laws and regulations. In this case, I think too many regulators=
 are focused on theoretical goals while ignoring what will actually happen.

Full disclosure: I work for the Linux Foundation, but I'm just speaking for=
 myself here.

--- David A. Wheeler


--_000_YT2PR01MB9827F9C7112CAAF0FFFC320CE8CAAYT2PR01MB9827CANP_--
