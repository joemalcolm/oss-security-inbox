X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13163" "Tuesday" "25" "January" "2022" "17:57:48" "+0000" "Qualys Security Advisory" "qsa@qualys.com" nil "307" "[oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       qsa@qualys.c Jan 25  307/13163 " thread-indent "\"[oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3643 invoked by uid 550); 25 Jan 2022 17:58:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3625 invoked from network); 25 Jan 2022 17:58:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualys.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=qualyscom;
 bh=vBO4WwZqgWtmP3QGz4kKTiAR2Lu7fDRi4gkkhQ8rvIQ=;
 b=Xa2R3lAqsPkkhDBTZiPkV/jWx6M3Uk0NAik4EL2JIaBKEm3v7lEAMxoBIiCWvOmc1O6M
 U5g8VrHH8i2ytftYlP7WFs0jW1Nj/3GwG3qkK948JN4so6kllcX4JAvM2Wh0009wveJS
 uF4s2iGtfl33IStWSr2E8AEmKz7VRHmztseyO7Px7hiTWJdPfez35lXV6aK5VTyMqHfT
 Z+oFgO5l7b9oAimg6m79Ld+Ty3nWP1YxO1Lntcym1aGG+ytdJv0LEg3mfV9zmVmdzt6f
 6t8p9kF2RVSYlkhaj3+15MiqMmwFZi5bcTuKJvPl34xkpgSqrfyxVS5unXWfw2ig7acL IA== 
Authentication-Results: ppops.net;
	spf=pass smtp.mailfrom=qsa@qualys.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3UIzRSYvvZ+OwwitN9Z4I2L5NHhSCiDHvDWj56n5Wl5yKSknmB7aVbYy3Eixv+CQ3dfSfKkAIVxDq2fL8uSH/zNfdsZFzzON24/befEEtpVKHDbty1+9qWADd+c9GzUatU+Dld3HECs+sezKIO4N7YC/YFt38hKcGwfm1gVftTU8SjYts5X/Yki04BW61vp6eUF5WpRzlgaKTcuBu7YKYEOh7hjzo3w9JhwGOgLNWUSNpPIxZHi+a29DBcVLUZnZOw8n5E5dS3472F9kuQ3TKeeO536n82/1+i62OVZwEFaid9weL/girHhScUj+CLgmNTwQrgtJyJ+mDMgXtiGgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBO4WwZqgWtmP3QGz4kKTiAR2Lu7fDRi4gkkhQ8rvIQ=;
 b=l9BT3zJgOtfmv2tT9dRZRbwGDt3BglN+z742HfsbwSBqa96i3egcWp5waXtuKffpqGb2VFhTBBm9++uZN+z99FoAR0qjM9U45nxPPbZn5SmStA1eFJoHuUQ3cPjn5NJ7DfNWkWcqOZQsSGPPYS+HDxWWLpGD3U9hIBzbQfEc3aONZKeeDXWPiqEQdcegDTaCc3akCh+LDf3sAALQ0jZI61hwXoFe6KYqVvS67KXYHn3KOi7EmjP4DXcDZ2uohUwrFD9h11sBimelMT2+rWyGLABc4vTEV2sLxuKRgdAD+LLsYnqrr/JFlrFD82VNd3ZkjcX/YWpqaxoOMqSuIDfdKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualys.onmicrosoft.com; s=selector1-qualys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBO4WwZqgWtmP3QGz4kKTiAR2Lu7fDRi4gkkhQ8rvIQ=;
 b=QCAu1sTZH6Wyp1eHiNtI+nf2kt2bLzag7v/eiGTj8pDrlR+3XvTygeUaqHS9GIJyNLBDXpjYG+DZf6Io16zLf5i4ZCKQ/feZ3iot0QcIFFXhGlh8xPd1C1MF1RTMbUU4NU+rBEj/LtsCS1APjEpi0EhX52fzFHF3LGZQz4zIzD8TpjQV+lXQa/GJHXMp4dB0rpsGXGE9qjIzX13UyttnMsdxXbf6bGwj8NACct5vqCfsHpQCzca9Cd9d6yMeqr/UG6oGG9A9WmIFtDI80yZHGvKDE32M9HRckBW3NIo6wAUdTxiQb5NfFSMBx8TCY2+9TECGYVcZnavaywA2PbAmTg==
From: Qualys Security Advisory <qsa@qualys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: pwnkit: Local Privilege Escalation in polkit's pkexec
 (CVE-2021-4034)
Thread-Index: AQHYEhUQzDx2Htv9+0C8CRhUctNC/Q==
Date: Tue, 25 Jan 2022 17:57:48 +0000
Message-ID: <20220125175655.GA14958@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f527ba30-b7c5-4dae-b4b6-08d9e02c3321
x-ms-traffictypediagnostic: BN7PR06MB3938:EE_
x-microsoft-antispam-prvs: 
 <BN7PR06MB39381AC44FA5911D6EA656DDD55F9@BN7PR06MB3938.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tkqIAIrwnBl4ChG8vHVfkq8EzQgxA3Zg0wZunpaX9v9ct3rN9KRcqboBxMiBnQNRPikgS74Fev6rzj2TTvPTxRhyK6Ed/xuywcc9hbCFfnBN00+Vgvuoqd77fFqGTYMK3X5JaQ4fdwBy7bYisnn8F4AWixmbDBoGAThTfKznr0mPHC98uOk9gFKTd3Zi4o4j9t2iwZy+a1pBQpUncPAdrN5zICYyBMs2pWjlgJ71GN4Jd4Ob9hOjE1+fsDN6bXQKSDzXFw5uEW+RKgxdjNjKUAe1Zk7e9ivtF6PejerHmz/kSwVx6Oeg4Fxcgdp+Amf0Iv2JetH418yLkc3gzyWdTsAvOrgZTLryyeAdWjHItketSzrLbJgFCHnE2h8nabEjMuwGs5DKRfyAppDn3aX1DnCdMy0TylKMbOW2KRGq7pO3XCwzL8nlqiyvbUlN5TfQYns/7b+VVFJqzz+vsolxomWoJ44jvFxXUwHKDpIXV1/t8QMkUy7AcS8dTkHZMqRaLFZRFi1UgF2JogOmnObcYLYx0FioD/jrJdRCM4hkgYEiDc+1wQIU+8d3M1J0p7UDUFlJ+eefFuEY38WOeRCgBk3GSRFw/K0P+96yigvPMAvy6pn1YnKLQoXU3nYyM8XiVdh13SoPONoy2ZMPSlxrUHyYsJFnYe2mS+zIapxqNN3vheTjbAmUD8gE9R1p2/nwQhL2A69Md9pn61zwqxU+P6pcf0ngt42GFBZFNje0e5QhqAiGgZOjA0r5Coc4pkSjFse65LkOewFIWdMbtVQBYE0Uc77aMlAzX65ds4k+TYlNmQqwah220HOy86/zcEdkfQE951FkDPP/Ow9LLhJwHg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR06MB6910.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(966005)(1076003)(86362001)(316002)(6506007)(122000001)(38100700002)(508600001)(2906002)(8676002)(8936002)(33656002)(6512007)(9686003)(5660300002)(6486002)(83380400001)(66476007)(38070700005)(6916009)(64756008)(66446008)(76116006)(186003)(4001150100001)(30864003)(26005)(71200400001)(66556008)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Px2uuu3bdLJ1dOJl/ZVhdrMS23DgHFbnJaabcu++9U663l8XaQeWZKkOPRoJ?=
 =?us-ascii?Q?0jr0ICAaijJszetwWN+O0BlCzwZaRNfP7cOFL6RgpjGFWkObrE01R9i5d/YW?=
 =?us-ascii?Q?YYLN6ywtRzsJ/x+RdZ5cWpz0Zpy4GGJQHauq5KttkCBTiSVjL0uzny6TeKl4?=
 =?us-ascii?Q?z6WDfj3e3a7acEWArdlGy9C6fDX/dvSjYc09fBq6xi/TJBiUeYPGhzzR7Q+6?=
 =?us-ascii?Q?fB/p/iLhVPZCCD0EXhymNMcAFW1wcT7LNXgep3XzDpmEmEpSeTfMAKzgnG0C?=
 =?us-ascii?Q?pPf/K5fpJQ+AaR2HWolBG96NxibQXIxDf77txluWulNruggFfcJ959I4LUvj?=
 =?us-ascii?Q?Joc7Pw0y5kVU4t6X1gIIB93C3HZ3U/bkI3ywvSCqJIhoR6mGgnPzpSinnrGG?=
 =?us-ascii?Q?JLMQZ+AjMNEJ+I7XG3/MByqkb3ziIAPZjKQ9bS9HpelH+OMA4KQtOodRwel7?=
 =?us-ascii?Q?bu+YLksEnEqjisz4D/e7QM1Hj6EITERqdRj5zuTVSuJepegPZc3duJnluScv?=
 =?us-ascii?Q?4u2Au0UPZ9fyAlXGliK7feAPFNc9CU2Jq6KahasXf9zdTJ0+cd7hxVJNHhlB?=
 =?us-ascii?Q?3MKbnpy9pwOcuUmkd3DfyCDdtdccVmd9ilFiz9f1t8QexxqF4r4XHa6GqDfK?=
 =?us-ascii?Q?xBctHGweu3oo8t8hDrGzfRzy2VjU/7hVkCAZFjLRn5EXVNUqA1wtAb1mZEKd?=
 =?us-ascii?Q?eDQm5ERy9hxMb0tWi6X4d/RoDmeE0/QuvxEAqSQtJUuEfrLaQ1AoobVHAo8K?=
 =?us-ascii?Q?dgHXhh5aNwFtjVq3/1G2svXYJnJLkfHIjtzMJwRkG6WomJZazsUtFtHCu4Os?=
 =?us-ascii?Q?ChPYq5i398qQsqGaImVq7K/FY7FWSHq2f7QeKvZyipnlMV+L7FqOimN8qGa0?=
 =?us-ascii?Q?JB/5TUWU9vcxGVOPa7luMwr84kqwA5sAnZkyIoUIcun8Xew9VJFZdzu+mVPl?=
 =?us-ascii?Q?O2a0aRMBZvsdoyPUXzfNrKgz/LclSZi7ztH/A0oqIGhkM4oUXyzfHWscXIDf?=
 =?us-ascii?Q?3IlWwhkOfEjhZPXI2QhPhgXE7hFBtwyunrqD567MWbB6ptijwGSUBQyfZTut?=
 =?us-ascii?Q?qSIO8JaKL8eQnVwGU2kN0IAmTkycdjr/lQLEcb1peBeX+ZJMCKwUOVXavnXj?=
 =?us-ascii?Q?PzqrAzQ0XdYkdb9L6EPLPJFZE/C/emfv6zhKQ2In1qGkTpGe6ZzJlgQ8/ExZ?=
 =?us-ascii?Q?4jn6N9IHGvVMivMWCq4LuZ2kxXCrcX9pAqRDjUo+9fRbPD63LdXUirpeSfWO?=
 =?us-ascii?Q?gHrtBEvQXHQU4bwjyj5f5YWCmdrSMnmukAgF64jCWNb/ZCOVOlgN9gI9AESj?=
 =?us-ascii?Q?UrtkZRVSzz58wOp5QnIXwafH3czHEt5NNQDk4M0Nxtgoh/+RICimuC8H1UY2?=
 =?us-ascii?Q?mJHzto6lsRjnVNfhqiNeV5SR+UI2L2ZG9XgMgD7owCdlIQLo3NQGV28UyZmr?=
 =?us-ascii?Q?zwTAVvnzpN+BDb/Y0Nf4VU7W4pFVdG59zaQZ2Bo444g5iMUOiK1uf4rN8w7K?=
 =?us-ascii?Q?5OTj2K4R57KeAmZLktu4B+9A0KgvSS1ePZQ9A3NQntO4b+Vm5BVPRvDjG9tv?=
 =?us-ascii?Q?NVmMQFOtorka3rf8fGWNy/U1n0mehLcq4rkLPkCoFxZ8Q7XVlYvc17ORY5Ps?=
 =?us-ascii?Q?WzJjy4mdGoqVNLO2ynn5NUwXEoKbtMbw2fA070YRuDkG6UZPhPbcisPi2fEO?=
 =?us-ascii?Q?NDhh15htuxT59DJdCH2xgmltVfQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EC076DA0DB943043B5F8FAE5FBC793A8@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: qualys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB6910.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f527ba30-b7c5-4dae-b4b6-08d9e02c3321
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 17:57:48.9728
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 81a9ef9a-9a98-4b00-886a-895a603bc029
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZZ5hRL8ZfUBqX3Wu+JFYP+BTx7KbvtQG67jLIvMUb6LNFr4hPtgjOk2aLa2k9rO/Bih2t0U31ymsmsxvvIu+/Jq1ijOn2qPOimwqmtUhdw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR06MB3938
X-Proofpoint-ORIG-GUID: FWEUBvrlH0K0fxil9X3ta05SzJbGCQuX
X-Proofpoint-GUID: FWEUBvrlH0K0fxil9X3ta05SzJbGCQuX
X-Proofpoint-SPF-Result: pass
X-Proofpoint-SPF-Record: v=spf1 include:_spf.qualys.com include:spf.protection.outlook.com
 include:spf-001ca501.pphosted.com include:stspg-customer.com
 include:_spf.salesforce.com include:mktomail.com
 include:emailus.freshservice.com a:sendgrid.avolio.tech ~all
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-25_03,2022-01-25_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 malwarescore=0 clxscore=1034 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 bulkscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201250110
Subject: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)


Qualys Security Advisory

pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Contents
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Summary
Analysis
Exploitation
Acknowledgments
Timeline


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We discovered a Local Privilege Escalation (from any user to root) in
polkit's pkexec, a SUID-root program that is installed by default on
every major Linux distribution:

"Polkit (formerly PolicyKit) is a component for controlling system-wide
privileges in Unix-like operating systems. It provides an organized way
for non-privileged processes to communicate with privileged ones. [...]
It is also possible to use polkit to execute commands with elevated
privileges using the command pkexec followed by the command intended to
be executed (with root permission)." (Wikipedia)

This vulnerability is an attacker's dream come true:

- pkexec is installed by default on all major Linux distributions (we
  exploited Ubuntu, Debian, Fedora, CentOS, and other distributions are
  probably also exploitable);

- pkexec is vulnerable since its creation, in May 2009 (commit c8c3d83,
  "Add a pkexec(1) command");

- any unprivileged local user can exploit this vulnerability to obtain
  full root privileges;

- although this vulnerability is technically a memory corruption, it is
  exploitable instantly, reliably, in an architecture-independent way;

- and it is exploitable even if the polkit daemon itself is not running.

We will not publish our exploit immediately; however, please note that
this vulnerability is trivially exploitable, and other researchers might
publish their exploits shortly after the patches are available. If no
patches are available for your operating system, you can remove the
SUID-bit from pkexec as a temporary mitigation; for example:

# chmod 0755 /usr/bin/pkexec

This vulnerability is one of our most beautiful discoveries; to honor
its memory, we recommend listening to DJ Pone's "Falken's Maze" (double
pun intended) while reading this advisory. Thank you very much!


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Analysis
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

pkexec is a sudo-like, SUID-root program, described as follows by its
man page:

------------------------------------------------------------------------
NAME
       pkexec - Execute a command as another user

SYNOPSIS
       pkexec [--version] [--disable-internal-agent] [--help]

       pkexec [--user username] PROGRAM [ARGUMENTS...]

DESCRIPTION
       pkexec allows an authorized user to execute PROGRAM as another
       user. If PROGRAM is not specified, the default shell will be run.
       If username is not specified, then the program will be executed
       as the administrative super user, root.
------------------------------------------------------------------------

The beginning of pkexec's main() function processes the command-line
arguments (lines 534-568), and searches for the program to be executed
(if its path is not absolute) in the directories of the PATH environment
variable (lines 610-640):

------------------------------------------------------------------------
 435 main (int argc, char *argv[])
 436 {
 ...
 534   for (n =3D 1; n < (guint) argc; n++)
 535     {
 ...
 568     }
 ...
 610   path =3D g_strdup (argv[n]);
 ...
 629   if (path[0] !=3D '/')
 630     {
 ...
 632       s =3D g_find_program_in_path (path);
 ...
 639       argv[n] =3D path =3D s;
 640     }
------------------------------------------------------------------------

Unfortunately, if the number of command-line arguments argc is 0 (if the
argument list argv that we pass to execve() is empty, i.e. {NULL}), then
argv[0] is NULL (the argument list's terminator) and:

- at line 534, the integer n is permanently set to 1;

- at line 610, the pointer path is read out-of-bounds from argv[1];

- at line 639, the pointer s is written out-of-bounds to argv[1].

But what exactly is read from and written to this out-of-bounds argv[1]?
To answer this question, we must digress briefly. When we execve() a new
program, the kernel copies our argument and environment strings and
pointers (argv and envp) to the end of the new program's stack; for
example:

|---------+---------+-----+------------|---------+---------+-----+---------=
---|
| argv[0] | argv[1] | ... | argv[argc] | envp[0] | envp[1] | ... | envp[env=
c] |
|----|----+----|----+-----+-----|------|----|----+----|----+-----+-----|---=
---|
     V         V                V           V         V                V
 "program" "-option"           NULL      "value" "PATH=3Dname"          NULL

Clearly (because the argv and envp pointers are contiguous in memory),
if argc is 0, then the out-of-bounds argv[1] is actually envp[0], the
pointer to our first environment variable, "value". Consequently:

- at line 610, the path of the program to be executed is read
  out-of-bounds from argv[1] (i.e. envp[0]), and points to "value";

- at line 632, this path "value" is passed to g_find_program_in_path()
  (because "value" does not start with a slash, at line 629);

- g_find_program_in_path() searches for an executable file named "value"
  in the directories of our PATH environment variable;

- if such an executable file is found, its full path is returned to
  pkexec's main() function (at line 632);

- and at line 639, this full path is written out-of-bounds to argv[1]
  (i.e. envp[0]), thus overwriting our first environment variable.

More precisely:

- if our PATH environment variable is "PATH=3Dname", and if the directory
  "name" exists (in the current working directory) and contains an
  executable file named "value", then a pointer to the string
  "name/value" is written out-of-bounds to envp[0];

- or, if our PATH is "PATH=3Dname=3D.", and if the directory "name=3D." exi=
sts
  and contains an executable file named "value", then a pointer to the
  string "name=3D./value" is written out-of-bounds to envp[0].

In other words, this out-of-bounds write allows us to re-introduce an
"unsecure" environment variable (for example, LD_PRELOAD) into pkexec's
environment; these "unsecure" variables are normally removed (by ld.so)
from the environment of SUID programs before the main() function is
called. We will exploit this powerful primitive in the following
section.

Last-minute note: polkit also supports non-Linux operating systems such
as Solaris and *BSD, but we have not investigated their exploitability;
however, we note that OpenBSD is not exploitable, because its kernel
refuses to execve() a program if argc is 0.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exploitation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Our question is: to successfully exploit this vulnerability, which
"unsecure" variable should we re-introduce into pkexec's environment?
Our options are limited, because shortly after the out-of-bounds write
(at line 639), pkexec completely clears its environment (at line 702):

------------------------------------------------------------------------
 639       argv[n] =3D path =3D s;
 ...
 657   for (n =3D 0; environment_variables_to_save[n] !=3D NULL; n++)
 658     {
 659       const gchar *key =3D environment_variables_to_save[n];
 ...
 662       value =3D g_getenv (key);
 ...
 670       if (!validate_environment_variable (key, value))
 ...
 675     }
 ...
 702   if (clearenv () !=3D 0)
------------------------------------------------------------------------

The answer to our question comes from pkexec's complexity: to print an
error message to stderr, pkexec calls the GLib's function g_printerr()
(note: the GLib is a GNOME library, not the GNU C Library, aka glibc);
for example, the functions validate_environment_variable() and
log_message() call g_printerr() (at lines 126 and 408-409):

------------------------------------------------------------------------
  88 log_message (gint     level,
  89              gboolean print_to_stderr,
  90              const    gchar *format,
  91              ...)
  92 {
 ...
 125   if (print_to_stderr)
 126     g_printerr ("%s\n", s);
------------------------------------------------------------------------
 383 validate_environment_variable (const gchar *key,
 384                                const gchar *value)
 385 {
 ...
 406           log_message (LOG_CRIT, TRUE,
 407                        "The value for the SHELL variable was not found=
 the /etc/shells file");
 408           g_printerr ("\n"
 409                       "This incident has been reported.\n");
------------------------------------------------------------------------

g_printerr() normally prints UTF-8 error messages, but it can print
messages in another charset if the environment variable CHARSET is not
UTF-8 (note: CHARSET is not security sensitive, it is not an "unsecure"
environment variable). To convert messages from UTF-8 to another
charset, g_printerr() calls the glibc's function iconv_open().

To convert messages from one charset to another, iconv_open() executes
small shared libraries; normally, these triplets ("from" charset, "to"
charset, and library name) are read from a default configuration file,
/usr/lib/gconv/gconv-modules. Alternatively, the environment variable
GCONV_PATH can force iconv_open() to read another configuration file;
naturally, GCONV_PATH is one of the "unsecure" environment variables
(because it leads to the execution of arbitrary libraries), and is
therefore removed by ld.so from the environment of SUID programs.

Unfortunately, CVE-2021-4034 allows us to re-introduce GCONV_PATH into
pkexec's environment, and to execute our own shared library, as root.

Important: this exploitation technique leaves traces in the logs (either
"The value for the SHELL variable was not found the /etc/shells file" or
"The value for environment variable [...] contains suscipious content").
However, please note that this vulnerability is also exploitable without
leaving any traces in the logs, but this is left as an exercise for the
interested reader.

For further discussions about pkexec, GLib, and GCONV_PATH, please refer
to the following posts by Tavis Ormandy, Jakub Wilk, and Yuki Koike:

https://www.openwall.com/lists/oss-security/2014/07/14/1
https://www.openwall.com/lists/oss-security/2017/06/23/8
https://hugeh0ge.github.io/2019/11/04/Getting-Arbitrary-Code-Execution-from=
-fopen-s-2nd-Argument/


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We thank polkit's authors, Red Hat Product Security, and the members of
distros@openwall for their invaluable help with the disclosure of this
vulnerability. We also thank Birdy Nam Nam for their inspiring work.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2021-11-18: Advisory sent to secalert@redhat.

2022-01-11: Advisory and patch sent to distros@openwall.

2022-01-25: Coordinated Release Date (5:00 PM UTC).
