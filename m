Received: (qmail 7316 invoked by uid 550); 16 Aug 2023 09:52:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14091 invoked from network); 16 Aug 2023 03:45:57 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTmf5NICzJKp+SJrORt01nJ3MDWbDSLIntPd8yzJUnM+Km5lyFOaytmfK1cp7OS8oOoH4fW77UG/Dl5/vQhIZU5Wlf6IAqcwBWlDYVUjqHD+n94VcG1ac9WmV0khd2qOpYuML+dC2YySxM+n2sCK0OmXi6xn4AmUroAnUl9a/hgcgvmiO5QpTEdBo0RB7bRQJxgZWSlTWICFddiy//+WotQlZDRNW3xiqkraVkpQLg2Nyb5kAFJaQSTQFIiPgEXkF69qRfUfO3/m3kKCiw1sU2KzHvX7aJyY463VvaBD3Gv6cCGWfKLGuthQtOQBR4q4Pkk4ocSj5d2Qvus3EySQLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyZcUlGp9guXMkVqE5R+jM7kFXpT2QcZLFcTlyfS8yo=;
 b=VqSwbW7ELbJynkQCwwSJISouILVO6ajBlspPOlyn3mz5GgqsI8XIdoV6hEPYeBaBYen40uOt8r0hWATVEIcIU3Iu0vrwxRYeFCBDXTiZ3ivPbmEoEEqmlomwonewplMxyfI9BKY3+CCxRUA/OYLR9g2N+Dq0jXy2FYOuzFLCWsShYXxXHxmNxE5cIbu34aPq0G8luZOPB45IUvZt0o3zhGmKfoaeRm0Ql5Cd7VWLNEPnoLlB4NAXlt+/ME63mq6BY8a8b3bSl1b3v8MRDYxQejzHS6YuYRVSB99HuI7gzz9zWCDcqYYkFOAXRPguq7mIfJyBoMVHx7KNmX7NUgPkPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=securelayer7.net; dmarc=pass action=none
 header.from=securelayer7.net; dkim=pass header.d=securelayer7.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=securelayer7.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyZcUlGp9guXMkVqE5R+jM7kFXpT2QcZLFcTlyfS8yo=;
 b=YoLKDImVn2KUQpD+/f73cS1SyL6eLowUnl9g3VB3xaONKf64xohkeJStmAWyi3bySaEFbfl7U/pw5q2/NwAjbIWmhN8AJrjaMdk/CVIgBf8QZPA58MfoweXSGn+m8AU+VGUK2C8Dq7z5yPHwbfbBOJ4YLqc9TEHrhdy6SpF7St4=
From: Srivani Reddy <srivani.reddy@securelayer7.net>
To: Dave <snoopdave@gmail.com>, Apache Security Team <security@apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"dev@roller.apache.org" <dev@roller.apache.org>, Roller User
	<user@roller.apache.org>, Sandeep Kamble <sandeep@securelayer7.net>
Thread-Topic: CVE-2023-37581: Apache Roller: XSS vulnerability for site with
 untrusted users
Thread-Index: AQHZx9kn0/qfYJXIL0ibmnDvueNWTK/sVomq
Date: Wed, 16 Aug 2023 03:45:35 +0000
Message-ID:
 <MAXPR01MB350100A5BBBD4B0E8AE07E79D015A@MAXPR01MB3501.INDPRD01.PROD.OUTLOOK.COM>
References:
 <CAF1aazB_eBVHv75fjPKHQXvuq7jqZhz_9JOhqMhbpPPA+cVRFg@mail.gmail.com>
In-Reply-To:
 <CAF1aazB_eBVHv75fjPKHQXvuq7jqZhz_9JOhqMhbpPPA+cVRFg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=securelayer7.net;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MAXPR01MB3501:EE_|MAXPR01MB4360:EE_
x-ms-office365-filtering-correlation-id: ebf6be5a-6461-4215-c3bd-08db9e0b3fb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 DouoM7GJyz1UP4xQfPs6ih4BWUnsWWzUrydqwB+EHApe550laEeTGtE1LcF97qVDLMc7Vn0Axhp3rXhU7sxMjIJ4H4jiixIqdCv8E4a7/N346sLfvuj0n6b0mo4P8uMalzDyh0LLk5IA3qQCPoIrkjYFRywY+f7Eqf4ncZmcmB5LTAqKgeErVTfOQLPr/WzzNfjCmJ8B4+v+u5DgbFW+x1X1bCw9PVTknJ1ZqSv6zwb1J8qM3USsnw2pJrVNgKnQWjquIGRno6CFDvldR+AWpdTPqfY90/aAax5wpk4WpSM+U1Pnve06uNcVcsBsAMA37sFWR+3ji0o3QO2mo+lcggLBkoMhlAXodLxjjXZ9N5r+ivgkOph3EUd0wDGmvZPZ6VCGA72k3tjwqIKQFNJZL4nzMYGyXbeORGTneuDOa0mE7tO/m/SS50sXG+2fyDV7L/6D15i2mMdpCeL6phPw8wy+KXogV3j03wMYUeCLyWREmEFreyFX2RwSxhmJ12E8+Nt8imN3C2zzw3gM94NgarK0/apjwhUEep1HKDBa9yYCz+i5Vg/zTjRboZe32CE+uKppfzKUPScmITTRaugJ+teUI14/2Z2ljtd9zEIOwRROGz8Ui0hRrHBQOa/FmLsszpP3Bkk/9XLrnHOsJ89CtqHU8bOfIWA3dzN1KB+B+AY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB3501.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(396003)(39830400003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(966005)(26005)(110136005)(16350225007)(5660300002)(83380400001)(6636002)(52536014)(41300700001)(316002)(21615005)(44832011)(53546011)(8936002)(166002)(8676002)(122000001)(38100700002)(38070700005)(33656002)(86362001)(55016003)(26730200005)(19860200003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?5CeSN4DAOi87CA7YwQysC44tQJmA7G+wlIRArBw0Am7tSoEQBuD8KDlAGMPZ?=
 =?us-ascii?Q?iLatyE+EvlGW63ebyik0L3I3I2i70noCQW1jumSF7UsFQj5yBEd3S8aDRqGe?=
 =?us-ascii?Q?4ADA03eti57leokRAdet8QPFm7/ARsF9wwKgjpENTkicQ+88+yDxhR6T80or?=
 =?us-ascii?Q?gthERNRP+MBtczEm1sS7/FCnFKttkKBEJv9KmikniVeHeMwNuu5lAaCLw8Es?=
 =?us-ascii?Q?5S0JdFMk2W0J+CwYO/qDO+C+BeSSzm9MhPe1zESIXZ6FogZwg9e5E9dsnqQh?=
 =?us-ascii?Q?gKP+/I4aYpkReS7FpZJJU0c1M7wwBYF1dGUHlfHy4pc5r9JqEvq0c6ToMGcW?=
 =?us-ascii?Q?FI30gwzjEybEK8nql3ad+2+aPXfqYE1OltRTfcYxeGHTkLi8s4r1PTnqMovF?=
 =?us-ascii?Q?hLrPsVOGTK/JI873TJiDpgkj0topknOT/E8Wi0qzb0u6sYucyNV5dVNN34Nt?=
 =?us-ascii?Q?XvKznPjahWikSsMYbuxcBLWsGB3+hpLLNeBSR+Vn+iQfq8hN8wbwoWxVp1I2?=
 =?us-ascii?Q?cK7h1mFxdSXodm8uKTUYRa7vFPtQhXxkZCxmgEYnWEdQltjQAQt+Ih7+2Bp3?=
 =?us-ascii?Q?fS8h7WGSGmPXeLgZTN1XY8H5sUWots2xssYLzhX5m8wy8B/AcKH7w4VmRDRb?=
 =?us-ascii?Q?3eCZNxcWtrG27KJFFSDUeBLubbfvNiRCEP2HZCbL7slI6l3lGtVsEGfPOwrY?=
 =?us-ascii?Q?CAp0YiMu/SQimhG9v1OutnJxr/LeZm2rK1iabg8DI4dHk3LOO9IxJfiWY7Bv?=
 =?us-ascii?Q?WZsTSHUzCSsWhi3o+//AKkvK6kgKtSPoH86Yn9DFIhwF6BNgcmC6n9EyFUsG?=
 =?us-ascii?Q?NN9G5VpfMsGnAD7WIBHhA6eUSHlKvIAjTn9ajMTWnpvoLqPyT8fLFHJvC66F?=
 =?us-ascii?Q?PFjdf3eNca6EyPLeQitj05X6YU+0vKD7ZD2L9W40BmhhvrA5AJDhC/WlZ8Ct?=
 =?us-ascii?Q?sG6tjxyf+mz4iavKZoOl6w2KeGMx5gdaioTgn2yXZdxy13M8rakIpPccNDWn?=
 =?us-ascii?Q?iy1LSLBXJ6wPGTcLIk8mQFO9Q7+niXgdPVD9skxjUkAA240WRSBgTLXOrOQc?=
 =?us-ascii?Q?nq7Rhu34ILbtmYDCCqgBbUr2OOBhFtxmGAhV7I3BuOm9s8ynaaYNda/Er7X8?=
 =?us-ascii?Q?m+EOSHQiw1XILHfHBjHaQJUyC0QjIUariVKua7kCbFHo18wHy67zVXWU7Y5x?=
 =?us-ascii?Q?iNjCjfzKycFh1Pnlhw4ea3IuiMCWHxQ3vRTgzbMBa0ogAeSNE9CIezNBDlEB?=
 =?us-ascii?Q?YxwhHpoG+NEUmwvYNXciDq8dHVhoTbTVNfajS8d3i5JxZtQY0JyhIzlaEphY?=
 =?us-ascii?Q?I6n1OImSrE5RRTYxL/KFMrGUk6Gxg6+Qt7C0CLLqbhCuXq1bE+C7vHglzMSG?=
 =?us-ascii?Q?oRpAi8oqLwJ2BvhCwv8gKluUXLn/9WvB6kJm7XayWYVKB1FLUWPMrQSMJ3mz?=
 =?us-ascii?Q?Oj3TAzp6tL7Jpb+JH6csbtISccH0I1RehQbA6E8z3hvu+HdNrJmg3vxLqili?=
 =?us-ascii?Q?ChvC1KcYP//jc0iYI3c+d/joSu0rSx5zid5GYjY0moPr8eGud4H2c6P41ffA?=
 =?us-ascii?Q?QkZypzDCTkqj+sL5MY06TDe0NV/5W79o9MFwHPZJ9gXba4hb9aeKHLllIaDt?=
 =?us-ascii?Q?TKNoBXUqPDAYQSeulml/9Qs=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB350100A5BBBD4B0E8AE07E79D015AMAXPR01MB3501INDP_"
MIME-Version: 1.0
X-OriginatorOrg: securelayer7.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB3501.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ebf6be5a-6461-4215-c3bd-08db9e0b3fb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 03:45:35.3077
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d142c02a-825d-4227-a48c-ff458ec69808
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nfa8IUbz4rGA7w27HxKmwgv9AEDBWct+wb9klbR9i4eEGQUJpEQPc0La/lDaYd/Tw54+Z4uDjCppckNbNnD3q3T1YwPl9GiR+CkzU6OP1d0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB4360
Subject: [oss-security] Re: CVE-2023-37581: Apache Roller: XSS vulnerability for site with
 untrusted users

--_000_MAXPR01MB350100A5BBBD4B0E8AE07E79D015AMAXPR01MB3501INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Dave,

Can you please change the name Srivani Reddy to our company SecureLayer7 Te=
chnologies Pvt Ltd as we submitted the vulnerability?

Regards,
Srivani


________________________________
From: Dave <snoopdave@gmail.com>
Sent: Sunday, August 6, 2023 1:42:26 AM
To: Apache Security Team <security@apache.org>; oss-security@lists.openwall=
.com <oss-security@lists.openwall.com>; Srivani Reddy <srivani.reddy@secure=
layer7.net>; dev@roller.apache.org <dev@roller.apache.org>; Roller User <us=
er@roller.apache.org>
Subject: CVE-2023-37581: Apache Roller: XSS vulnerability for site with unt=
rusted users


The Apache Roller project would like to announce a vulnerability that may i=
mpact Roller installations that allow group blogging with untrusted users.

Severity:

Medium (only impacts group blogging sites with untrusted users)

Description:

Insufficient input validation and sanitation in Weblog Category name, Websi=
te About and File Upload features in all versions of Apache Roller on all p=
latforms allows an authenticated user to perform an XSS attack.

Mitigation:

If you are not running a group blog, then no mitigation is needed. If you a=
re running a group blog and you do not have Roller configured for untrusted=
 users, then you need to do nothing because you trust your users to author =
raw HTML and other web content.

But, if you are running a group blog and you do not trust your users to aut=
hor HTML, CSS and JavaScript then you should upgrade to Roller 6.1.2 and yo=
u should disable Roller's File Upload feature. Roller 6.1.2 is available fo=
r download here: https://roller.apache.org/downloads/downloads.html

Apache Roller would like to thank Srivani Reddy for reporting this vulnerab=
ility.


This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager. =
This message contains confidential information and is intended only for the=
 individual named. If you are not the named addressee you should not dissem=
inate, distribute or copy this e-mail. Please notify the sender immediately=
 by e-mail if you have received this e-mail by mistake and delete this e-ma=
il from your system. If you are not the intended recipient you are notified=
 that disclosing, copying, distributing or taking any action in reliance on=
 the contents of this information is strictly prohibited.

--_000_MAXPR01MB350100A5BBBD4B0E8AE07E79D015AMAXPR01MB3501INDP_--
