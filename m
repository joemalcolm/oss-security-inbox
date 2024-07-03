Received: (qmail 19678 invoked by uid 550); 3 Jul 2024 10:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19645 invoked from network); 3 Jul 2024 10:57:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:in-reply-to:message-id:mime-version:references:subject:to; s=
	qualyscom; bh=Jt6ZrV+LvuDp6oM438JmWMy66kveop+Sj9b2xr8cJIY=; b=0s
	70YXsGwB7TOb6RP+q4zLLksFljGMy6rJzKPW0XjesW7VcrxhcxswLIO0F0Smv6gt
	9AvJCtxKXa0vmv46skSTM08b4nsEBgTmdpS/2um4VlbjmoFKky8BasG98TGGCZOa
	o88A6lc+SD0GtePqD7rGevibZ6bAds4wH7FAZQob4ny1CFXV4UKzZxuw1vkEiJSc
	9xb3AtYFbpL5ZIR6y+qtkVZrjmvFD5BFHPzT8c+RzewfjDo2Rs4heN5jLl7msYtq
	igMjByXfnUELWLm7DgV46loFhX+kuyhQk4KeO1DcIijZ6py77cqDFoYnhYBae4o7
	Ilxxgf/NFhViPqgQvmCg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRk8MwwJbJkyEClalepQfJ2oZ0ZR4qoHL2GFsNRLo0iCzb5FLTdLPPKuhT4Dv3pXo2NjaLnEV1p6NkH9tbHZde1KPV28YFcnqGxgiyZJkrQdCh4qvwWlJj36maMAizHZANTILVbPe0bIuxb2eC5MOWyU1XisdhKsTsHrmH13zQatmwalTxH9LGLXK0pFX901rNhldSrkdcfJifVEo2tIHS5HwblOGOqzHSCTZ3LqfJ6ufFUkaSJFLlaNCSsseFg+f8d7yDAqht/iJJURID3R/wjquOz4hvIn08FOzLzl4ZzoYSQ/009qVPOqYq5IKhX04J+MjFLqgCZEt5mkdJaCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jt6ZrV+LvuDp6oM438JmWMy66kveop+Sj9b2xr8cJIY=;
 b=MQ2geQ79zUJA1VTBxOeB2zr7J/YLTsMWgSWn15oIhss5t5EqMuNeNqOcFkKgVMZK8bt/j+nlNYt5aSPHv4/IMscATojbPkyQ+TaCI29vqyh1jhcGuPIsnWtS5L5DqBcGYXnrFoQCFR3WbTiCufdesVdVd3hBhleT4piiHKlacosHCoxxtsx2Gk8ULJXB16nOYHz/WQp6C5aM/HB6I5f7CaXOtRH166M6iOdu9OhXVBuc4nOmJXjXogn4690hSIfZ9uop0OSIY9h6KfHSDS03ix7C+yx0WtfHgiUyy8GW7b4QQq1Q1G9/tdi9Z8O8spP2XefQMJQJW0HrnSvw4oejkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qualys.com; dmarc=pass action=none header.from=qualys.com;
 dkim=pass header.d=qualys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jt6ZrV+LvuDp6oM438JmWMy66kveop+Sj9b2xr8cJIY=;
 b=mKXAoL1kCAU70vZ0x/wSwlLZVzSBS6NfxxBlQv8tuo5GPBlR8PRoA9ZRsJCh0/meNS5r0iIdlKmkPFd5Tck6rTmgozGGCxbNKnCY6OaildA7V3nl4FbvpJizGFnQKF21cfNU/C6iOdeeTo+McKWNdFSuQNr9ysMbBgcXbfyKNdzpgCJ3FZbv/6AAIavWcKswfHKwHZnl89y5RGyeJwF1VLO8ZdLdocpIxr0UlyOZ0K28XBYDa20b96xn9ZzT+PxAWXE33VaspoU1ALHzj+6OEYNxnGkgI1cdpJO8l5mmMGOIvkJHm6A2khnRx21EcqjC67fh0jTM+5WfpljmbQeOiQ==
From: Qualys Security Advisory <qsa@qualys.com>
To: Jacob Bachmeyer <jcb62281@gmail.com>
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems
Thread-Index: AQHay5JGa9eb3rAM4U2ijmTpt4nx0LHkQsgAgACVHQA=
Date: Wed, 3 Jul 2024 10:56:59 +0000
Message-ID: <20240703105530.GA5821@localhost.localdomain>
References: <20240701083838.GA12787@localhost.localdomain>
 <6684B10C.3070904@gmail.com>
In-Reply-To: <6684B10C.3070904@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR06MB6910:EE_|CH3PR06MB9510:EE_
x-ms-office365-filtering-correlation-id: e1b3bd46-d1b8-4d1f-bcd9-08dc9b4edccb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?knQhI6J6XOZno+BwsDjMf95kVpkECBnkrQMA9GZri53rEXW1gf/Gf4mPVT+r?=
 =?us-ascii?Q?C5RH82zVAzjZIajBkFFEnMDNlrJIOUd1tUg39/t/L15uD0lpPunvcwwBy4pA?=
 =?us-ascii?Q?Fg01kzXp5PEnFI8kMzE3nu+s8nwFDdpGAfO4NpBlJT8OWLD/0My5avg9vJSi?=
 =?us-ascii?Q?FQwjRnQfT5SlxaEkH95ucXAk7XMGwpepvSIhoM8UkaQKDmdKqJWPYs7hPNph?=
 =?us-ascii?Q?bqm589izmu2S/1pJgrphGMcJwBXpv8tSHnlxQ0Z+Ng92TA7nk8s/QEGqGlwr?=
 =?us-ascii?Q?g6U5w0ST7cvHNNnHJa9QUm8oatwQqopQCnFkpraLmCJbnpsj7c0VbywJQY0D?=
 =?us-ascii?Q?+Y5jhdgSqUx30k8k0gsO2RbQw/6wF8+/toPzoGM3KKuHw1/VCWKAdasxUAwK?=
 =?us-ascii?Q?WoTGrmha5Qr080PqXWFlic8uha3hRjnVyX/1Kk3CpUCd1G96cixgTxcQIrgL?=
 =?us-ascii?Q?y053MLsR6KFeW9vuWDqN5fmBLAO3u6eYcXcL1p+VdJZFVJsARZya3ac05v6S?=
 =?us-ascii?Q?feN11nvqigJmUtl5j0Kl3XT5tRu0fmsKmL2LBYByDavLm8Y8+yfCShMhiOF9?=
 =?us-ascii?Q?Do7I4eAKdguWvgy0h1YkN3PnzxiHebcTG6Vbq1Lra4z6X88d7i8Nr4Yqz2gc?=
 =?us-ascii?Q?00dubCnDrAFjZtccQrad5zaDuGLP0/LepL/xZQy6RPOEd7X/PTy60uJUCr9J?=
 =?us-ascii?Q?VnFuwoHUDLvIexFzLUvwfkPZvM0MxubdbmfaXfkPqcs3juImSaaLEl1SZCdM?=
 =?us-ascii?Q?wywp3zoOYwYcMlie2lnigP65P0gb6Xw8cEFVbhli3Fyqv1ADp+ZL89ZQHBnJ?=
 =?us-ascii?Q?/4OIvfPjsvLSm0TRawmuhE3xqPb9gzoDEZamdvOkcFq4c8o7PXlt3eUiS6Zt?=
 =?us-ascii?Q?XLBHfPIMcT7l+1UBmRzy6urQ7YA7S1ljy0kNHtV88DZedB3NiV1wM1d9RZlu?=
 =?us-ascii?Q?BzPLr7kgkOw5mpcQTeUZ6//vcKznMAg3vA9VHC0cZJV/kC0HWpHU+VJaZulD?=
 =?us-ascii?Q?wUeqWaJLKrddqzNAx8Zto6KH8GitT5d1o10R0fhM5v5tk88l0KjSsreluOtC?=
 =?us-ascii?Q?pmtxa/8kbdz8nQtmrkOwIMDBQiebUgF56vFFLp6bVDXSXibwklKW+nU1uXiG?=
 =?us-ascii?Q?DwANuZKAqaMS7qEF7vYRwwwKx3BNlRgrA/A+P5snrZ/ePNeFMIHpNVlYjts9?=
 =?us-ascii?Q?JiBRvwQu3LBHBh9ZSTDg6UW7nIVy2F9R1qhERNQyvwS2r3N/a1537+4TqgUf?=
 =?us-ascii?Q?jibHQrW7Ybl3MC0yoTsauZqk0RCjjVCgbki+fqYnMqq287ZpdrWFQ8ngXKtG?=
 =?us-ascii?Q?RQDgF2VMBSxIQ1pS1yrjpTm6VvoqFVO2J6lu/P5YVFfmFo7/oCKCi2xWXFeS?=
 =?us-ascii?Q?ZeycA/OOVogf0Bc0QiqjnmkwCbHE7s9ZIWQbQatYPfWubj7dcw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JYDVoHmQ3PJC4z2M+2tOG9htbanajMg9RtT9uzVr5K6SpQaR+KRosJwM7j7H?=
 =?us-ascii?Q?IX2nTfhcx1L2AUnIhzpj2OOx34aBYuJB68zO74weWcV3Pd6FpYULkjoTL+DE?=
 =?us-ascii?Q?tiseLxgABMiilZwMoIhQMm+n6+n1GxIEBEp6jIv2Y1EmHDjKhRozcCMwpTmA?=
 =?us-ascii?Q?DTGVBaeQSyQQpxK1m9w2nBXbp++RmfImJW6IXMCgRjUEM6VTyfgxqFIECZJo?=
 =?us-ascii?Q?qkvxLRhXDNVOm/6R5p1gCoyS+dfGiEIgu1MbskXaHNUVo6X6c8m7ozDOlSNy?=
 =?us-ascii?Q?VL6m5ghabqYHUcCBmSV9t+Ce7uiyhK9B5qfyfVK9vqGVrBbpFkRaphwfObdm?=
 =?us-ascii?Q?xLqS6dQSAkMBU2Naz0YgYVubx3u1cwS+ePAAyWuKxwul4CxlU9jrZ+MxFZE/?=
 =?us-ascii?Q?Z8bK8dEq8G9nL3jATVVzhNbYcYM0MUaJpFTC/o6WAc5E+ht28LTtmihunpZZ?=
 =?us-ascii?Q?3QQE2wmXWQ6qUf+gWe2a74WzEfhnt7ypl6SRcMg3dMJe+gTRAsPdEDFTZ5ei?=
 =?us-ascii?Q?N/qObiSY5IqKGUcDyk9cZRJjZ21eCP2VZXKEzMZh31qqmMEgWJNxfPgieF0j?=
 =?us-ascii?Q?PCopEQ+KMObNUuzAfifyxUAEHYmGvUPL3iCtBi4Pjxe9UOwN7WxvSj96rQcj?=
 =?us-ascii?Q?T0W7Q/JMso3C06yPjbS8Nw2KuPxN7f22Mn2RHK7CcD6i8rGHr2m+AshOLpzx?=
 =?us-ascii?Q?0p81jCoXyHTdgSn0vrv5EYZaGbDzHc/lLgJiKKcU+R76w0QyX1A8Dn8KC1+6?=
 =?us-ascii?Q?cRw8yQvyVDn1MTKh6DAq883hJpQqgG4Rd8OJ3Fwb+sD8Olnj6hzRA85sw4Qm?=
 =?us-ascii?Q?m8whCqqBdBVZmow/ngaYsD6Hj8RRsA/Fl87F76v+gNmNdMjPnE3p3IyV4RpY?=
 =?us-ascii?Q?TMx+v3wo91wBt0tBEnqNCk0v2yZddJKobHacD2IdRpiHBkMeQz2we9wVHAKe?=
 =?us-ascii?Q?fI6sEXo9NHpRMz7llNj1hyuY1Hdnvstse37h/1urbQ+nlfb6jrRp8Jj94Fls?=
 =?us-ascii?Q?zB79zeOvsyzfeD8mxeTiOpNE3fA6BLRl8iFOIJ8WHvJLY2ztUjBHur2q3nOE?=
 =?us-ascii?Q?JjQ7GdQI0X2uWr8jRkhZmdyC/VThNhIUPijHevOuiSa1hSLLOwiaUxnSRdFY?=
 =?us-ascii?Q?OnF+OEWpvdAT3gDz+IYgnNxEpI9Qn3+p6s6olpFpzXqYAAy57TusuODSeyxw?=
 =?us-ascii?Q?2OrZnkslxxZmwXJkIhoDE058u7mbnDEFtZFBHjCgnWeMpmsvz4Hrv106EwM8?=
 =?us-ascii?Q?wffK6vyhQdAa+CQl04NR7/J4cr+e38XSQ66QuV+xpKSH+8mzCdl+qxGkFxBU?=
 =?us-ascii?Q?H7ez62xgnLUvXJM9FhcwXQ6iNdWhNmTMtQ2qw4G71Cwf9p6jecBLV60TRYpr?=
 =?us-ascii?Q?YPs4lqB/0quUxVbRxI0U/4/+GsVxvX2leiPVGrkTBgFVXlvdFMURWqVIdmjc?=
 =?us-ascii?Q?tLN9aAvinByLYOsDnN+8ozz5s6cTkNjr4GZ91/OumbBwvyw9jKWxkdc9JDYx?=
 =?us-ascii?Q?ftvGi0Uynl87m0RwcSi6J/ShYpEiwnLTWEj9X1gL90E+lF/a19rEILq9tpc/?=
 =?us-ascii?Q?k1pHGji8pyS44eVSCgfuw0GH7Ek3vpoYr/ozMaSs7zjytZTefczMX1QqGMdX?=
 =?us-ascii?Q?qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <21F6DCCFCFCCB1438EFBF9DBE3E77665@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b3bd46-d1b8-4d1f-bcd9-08dc9b4edccb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 10:56:59.3347
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJJ9ygNR4heDIGfCUTHd1FZRleVk5c+LswIg45I/Pf8dCbP/sPnIYkUs1qQMd2U6VMl+mdvS8+TjVug3VrDhyoh0ANbWwRh8n9BUFzr9rDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR06MB9510
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-03_06,2024-07-03_01,2024-05-17_01
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

Hi Jacob, all,

On Tue, Jul 02, 2024 at 09:01:48PM -0500, Jacob Bachmeyer wrote:
> A thought occurred to me late last night:  this exploit required the use =
of
> a very long fake user name (~128KB).

A side note, just in case: only our exploit against Ubuntu 6.06.1 uses a
very long user name; our exploits against Debian 3.0r6 and Debian 12.5.0
simply use "nobody" (but it could be any existing user name).

> If there currently really is no limit at all, outrageously long fake
> usernames (limited only by bandwidth and LoginGraceTime?)

There are various already-existing limits along the way, but the first
one is PACKET_MAX_SIZE, which limits the size of a packet (and hence the
strings it contains) to 256KB (and this is pre-authentication, so no
compression tricks are possible, here).

Thank you very much! With best regards,

--=20
the Qualys Security Advisory team=
