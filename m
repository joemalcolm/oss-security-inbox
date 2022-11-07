Received: (qmail 28440 invoked by uid 550); 7 Nov 2022 15:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3782 invoked from network); 7 Nov 2022 14:57:01 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qtw6XlGYvu0CxCdyOsUqtVUP6so7sIDUa68uJkToy9byuBxZf/UiYBQLMp6PvKbhClCLQoFepd5gd3TBGzH6Fkwm0dW+33IFVIn6hHFVJEs0/bhnjCtGfZP0Ck4RuES/y4ilBzbc0mPw6UI7TnXNM7Nx+4esDxW6Ch+LUZR6l0Ia2Vp8I7VsZTurtZ4c6FSRShnO6+4awvloaqGVYdKF6aonBbjdETQUHvrHxYbX07Bg74hqXp7cyx2MKIv9SUaOSZ104dIScqum2lC3yxEhqkIp1BiKP+ol6rv2uPHeiQ4KAmwLid0YW8u3W9Tfxhce49WzoiF86sTBb4lE/GG2AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=88XVEoLnjm8AxC9IZ3HHC5i2eR9Kdoiw2hQh+QgyO3k=;
 b=V4qBCGm98V0m79VqoYKYva0uExFE/3Nt4OebHxe64pL2N8vO/qt3q8zMKO/at/e7+6Uhxel+Vw1ksPhsvdRrBYOCsCXmiV2JvXd7pSDWErUPtk11KBOvKH0+2hfEcYoS2jbfPhhGPntImVfXZzgVSdh80Mb8ji3ePDZ8cMXAqg7K3rkhP47ACd44gkWxLQ91u4BuGL2wIUTLYCY0DRXmphsEkAGv0hmWVnbn2y/pjFjUlumJFui4Qcm8qrqPP+1FBCKm4SN20BuR6sSSHEU/8GvBL3OT2zQMiSjRwqs7Urc7hleL+uMlqftmMJf0mk66R2eOYr3U/UkCJ1AJ9ee/DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88XVEoLnjm8AxC9IZ3HHC5i2eR9Kdoiw2hQh+QgyO3k=;
 b=EMqiIRS67tKEdtH7/5Is1lLELDkrTT/9uY3C1BSGwSTmKhJXvaNPm5qATtFyrw5PZVLPoyw822LADbNRrKfepJK/C5dTGE8gAwg5LMYuZtg1g5akpJsYSyhPi0FH9pTwNt+CYsYqnUaAdK7EtZQut5uBX+2K1GG7Y4A0QckEYwucwPmzDci/3HgvzsWmsigAzJ+qIsQzYa2nsLNvvYuKNHREAVE1Kpl1HgrtMbz3HoXfvAg5SMxJAyDSgBVStD6ciCySi5WYiMHKC4AbKXP4h4h3YnwpI28GApVg3tZP5zg4i6DH8BlgsCRcxKsmUxVQn2BcE6MUn+LfWFh4mQ8X9w==
From: John Smith <smitchj013@outlook.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF
Thread-Index: AQHY8rgdYdF6muZXS0iKG5DGTZltWw==
Date: Mon, 7 Nov 2022 14:56:48 +0000
Message-ID: 
 <AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9@AM8PR05MB8115.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [wc4kd4SJoKR+RlFzD5/gqufeZsdM0cnn]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR05MB8115:EE_|DBAPR05MB7526:EE_
x-ms-office365-filtering-correlation-id: 2bf2fd30-7fe7-44bd-e54c-08dac0d04c18
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lKwqYT3ly+birjUPC3zN8G1Ro1aMk02Y8ScXUx92DcH8r4wkhKu2pvV6uKaV4NgoxQbu11prXlGSkVEpfFUeWOGxETWxNLOaeK4csa5YOxUA6J35kl6MJTez7dLEF3i3v8JpKfv9attLpahMIgEcjKpLao8V3FWqFanafIGmiHcFuj0uNWVlKyBGyclNCetjoPrZp3mU42VNzJ2kk+5zFNaO4dR1kHNdznZx9fYGW3Li0iG2ZJfH+MAEN5OSL0Ot2LWYTHAOQCxSgmETMgLJPMv5ZCbixPGjKj31BrV/nWbzqTFbxFRsWT5AGyK9IYhH/E7NyYhLktzG966c0+G7mKl2BXHAFY5uA3xlxn22sIekLjTzbCok7xXO2aDde2ryR1JdkIA+gsjhhDKQarLLpYbIFy5LLum11ZzqSPBAem/5umMQusaQEgY39V6ZeazSc4+Didm02SfFoED6MWyo6s5I6I7apTMPYiWm4uLjDT6zwZmNMl07uQR4Mubi1sqea/vBnrJRL4bux8RE4zY7DSdcIu86mSpY9/w8V6efWFW5km8l1N0E8nX5ggP68EVS3PIYOkLDkLopkw8LO0jyw1Xh6TRNjgAYkhQqmFcxWrQ8uCKEZ7j2PBqmtJmlVLQ5Xht37zvW8FOw3lKKgi1WFpupl5xqASteiauRmEFsSxNSxNGWQMXBv2thFQCTHNTD
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?SdAyxyHiiBjABMKnahBFh9OB48hOBoPpJbC+FNU9ND3wldpjjUUU6uGxm6?=
 =?iso-8859-1?Q?NX4PUUkcBqxNqHw4kb6sN+kpb/WsNaPnl0g+oJc82/0H4zpKbXd3DC8oeH?=
 =?iso-8859-1?Q?gmyd7vXw8JhfY3XPvj3EeMNntBNs9lj9v0D9gQsKRKD353URZExTpplTbr?=
 =?iso-8859-1?Q?5gSpV4sK32nQ/1F/TM9Ooq1l0krQW01UheIH6MA0R5sHVX6ykDXR60g7Ms?=
 =?iso-8859-1?Q?Oq8QYl+0A2LaYLy8E1wsNnAzWvlV4mvoHrcCuqIY3AG2W+0VABW8CSG+so?=
 =?iso-8859-1?Q?ZV2aJJm82dCprZ7h9HwJOTeYgrfPhqxRc8T8jlCekFtL+Q6eG6GF9eplr0?=
 =?iso-8859-1?Q?dX0hZs8Rr2fU49BOfqTvqxfgUxEu5KSNrGM/hwNqnyUsB8nTWCvrKds43W?=
 =?iso-8859-1?Q?ivrfAy9D0/Nrq0YvYMUGn4lP4dtUrA54FI7ubVPIqTxmFpRO6qbsK9SVZk?=
 =?iso-8859-1?Q?5sLIlegweB50cteUapeV1+AU2x8prUobJP9qxy0PNM7/bUCeFMnO9Vbywp?=
 =?iso-8859-1?Q?9X9xr3FFmu8/J63hrObdBcZZrsBxnoyScRvWyF6dDyCBNsLo5ymw+dQ5XR?=
 =?iso-8859-1?Q?M3sINT8GWg2aIjUZ8SOZx3LubRc2q/6op3ZIrSm60yBGCkScQ5CmalM/Dr?=
 =?iso-8859-1?Q?tDjCVk9DVqDUwB5L6UKEOJEi8IhkmXm+g5yTQzTyhX2XWSjmbp6B9bGa9W?=
 =?iso-8859-1?Q?hP6p5fyiZYCSkcjXdaNlEe5wWirtGJZSPh/711gv6p4d6r92qckhSCvPhS?=
 =?iso-8859-1?Q?ajJMVcJ+lrGwKfL8oofXzcwxIjgJV/ShyXBAzuAm71CYJ33BSesZdaDGRr?=
 =?iso-8859-1?Q?Py1jup83OaFR1rt0ij+oalLZcDHKRyfGQ/nfgu3bMz2W2Zn1gorC7fP16s?=
 =?iso-8859-1?Q?L/zsvuvMVHfc4UvmLJ4JEP71FN2C793vaRRtty7rJdNXcR31P9gC83NYfQ?=
 =?iso-8859-1?Q?DSIGpsqjRQ1ZhOQxYzBp5WwAnfHJuUC5RzauF1ektXRxpQ7uK5lB7slYm5?=
 =?iso-8859-1?Q?M6dztZP5FJXs7T5yw5zpH8dxWlCgq0WKTAizXyaOmpr90KlBS6GWt3AcQy?=
 =?iso-8859-1?Q?S832DKrj60P7Y8v5rE2EGtP/vRpXWfJBrBvUJNaz6isrwwYASV8sMDM2M0?=
 =?iso-8859-1?Q?3dLDtd2yL4n337aWaYeLjNIRiR+Vh8ZG25nsXLpQk/RWBboIZ5Bm+d7Jjm?=
 =?iso-8859-1?Q?TkDjezLF2QBZHhbjs8U1BG8+C1YWEQGXfXkIK4cIfUPv0Fb8RkPkQGs00Y?=
 =?iso-8859-1?Q?81/XmgGip6kz3mac040XcLJBdctfj3x5B99A0cY1shWRVlam7VXhpHyUqc?=
 =?iso-8859-1?Q?Peqx1RNzWC1sA5qHFvj2fVJtWQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9AM8PR05MB8115eurp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB8115.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf2fd30-7fe7-44bd-e54c-08dac0d04c18
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 14:56:48.8620
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB7526
Subject: Re: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF

--_000_AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9AM8PR05MB8115eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

Do anyone try this PoC? On my side it's not working on 5.4, 5.10 and 5.15 w=
ith KASAN on. KASAN is quiet.  Any ideas?

27.10.2022, 21:05, "Thadeu Lima de Souza Cascardo" <cascardo@canonical.com>:
> On Tue, Oct 18, 2022 at 01:59:51PM -0300, Thadeu Lima de Souza Cascardo w=
rote:
>
>     Sorry about posting this late, but here it is.
>     poc.c
>     Cascardo.


--_000_AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9AM8PR05MB8115eurp_--
