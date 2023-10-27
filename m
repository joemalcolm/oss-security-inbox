Received: (qmail 28427 invoked by uid 550); 27 Oct 2023 08:36:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1885 invoked from network); 27 Oct 2023 03:43:42 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cg7lzBACV88xX8bHNL3M+/vuL6CSsQwLDV0OZD8kme9vugMm/4vHccm3mjQFIIaCB3YL9+hfCL2Q8jTXKY1pZvzabrgCUkl44Kkrzyecn7uj7gWxDfgMRJ3vOek7W/GBJoXeds8TtQaD5WB1AYCSD1l1APBh2yMVfLYK7NzbkNexRw0OO8TbXSPRxqiaN7ofr9KV6g59IFOe6cDltRhKYlDUqcgaUXlg7sx/tNQDIoUnBUePvG4LNrKwXQg9D7N4Zv8pM59RxFlQI+VlqVcS8qHfpDmrTcmHdOr2JP0xPus+nLCzPo49blooziRGqjWyu/kYWkPwh41zTh3T1DCgLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+fn4fnOuz1s68OqnUNNdlQ8ac/1jHfAYf1gfNV84GIE=;
 b=eC0jMwmzxxuGdp20TZtR8e2MrZ5W07aXdeGMl7/XeTYj8QAJECendEEId4O9QTwItx4ZJpugRUY/SwgHQMdPc0yI4yymtRZqvu2r6GDcXSBSuTLqfxKLlgCGoCFrTJyqcOh6YxG/CKSRYDPRMlVEiM+3bThrx6qNBU04IldWKdFIPoqiJqEvNE/fWeiAnwRlcUoBZAyRG+DQIapRJ/4nDos7tPrxQBYNhMykXkMiG0XLiWt2uOCJ9NAagllzOI4KAwN7WG14SzqWb7ZxgxkNzMPydV/H2pMhWJ8kBBzm1xIdSK1GCQQ0QwWE+m7+PD3laOnSYTlUWAnS4FN2rjFlqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+fn4fnOuz1s68OqnUNNdlQ8ac/1jHfAYf1gfNV84GIE=;
 b=unoj32TNbDk3wd4NtbendBQ0TJ4f7lvbndyQNMscebp7ZC2jCBGeQiYfkX1teB8iGeyortYxYDdzzhNO7ACUDS30uNusVUr0eSitk/0bXUpkZAKe/IMbqlzAjBBh0eq7lUB8oIvtjKZoJyG2NucjehMv9+w/RwUGaZ/blgM8KC0=
From: VMware Security Response Center <security@vmware.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2023-34058 - SAML Token Signature Bypass in open-vm-tools
Thread-Index: AQHaBOY/E1oRlVRJTE2mKJ3UmujiEg==
Date: Fri, 27 Oct 2023 03:43:27 +0000
Message-ID: <82C70BE4-B22A-45C5-A80A-ECD7F934D93D@vmware.com>
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
x-ms-office365-filtering-correlation-id: fc071033-4940-4be6-978d-08dbd69ee14c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 FptOwXBNhVcT7bJg1EJ0rRtYfrgwXEo4hs/0YOQF1X2n6B1Mj58Wiu+Qe9ff8WYCxgnpPgl2rYYsWAhtGgUL82+2QbebYraYGo6wvih580mnCc6B/HJzrEKM8GdWJ2TFgnl8N0sN9ycGbcDNVyoFSco4/zsHPDt/ZXjgN+Vd9G7q2ysoPyY08czqqINk5R/Uh9Sk24eTSepgB/Af+lm8//4IVA/9HCTEazFlwINdC+RQcleIFy2XcHX5f9UIDDcddjcW4GZ1x+PArDXfWCDMZc46kW9KpLZIXK1NIm9bw6bMC9CpRVTQIFzGt9QrVe0HLWsLhlQCkmladSWN8d0qZwocXfEECPm4L0KIHDGMY6aduKR6iJmOJNISHJfBGeozVfkT+ish1XkeuK+mSiMeDJRi9+lyQicmRoEo/I3Y+mNKlFCnT4JnJdwdLRA7cI13eOdUgrpjxEiprUKUL/46y7hJ9aM4u+5gmcYlpi3VEFjhwtHXCe7Ss/B6cgKjj9hSpxtMpG+SRW/hrnhf3TKB8OsEx5DwsGQkf4fK4FKH2b/HGCWP33ZDJ3JPiJkr3s55OqTc+Zws8z8KUmzkIdy8pIW9Tn1Crnhn9OUmhlO7588yeHnlAvTsMfdPbAXMGR4YEQTnVaMRC5xbG2+dvTY0kYLTtWBHszl078DvM1J4gscQcPSG9huAb8ZtGzIt5z0mOH2/u6GY37gvB4abmC5L6MQy5L6NMsJ8ojy4VUOdQzA=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR05MB10203.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(39860400002)(366004)(396003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(2616005)(71200400001)(6506007)(6512007)(83380400001)(41300700001)(8676002)(8936002)(5660300002)(2906002)(1015004)(6486002)(478600001)(966005)(66946007)(6916009)(91956017)(76116006)(66556008)(66476007)(64756008)(66446008)(316002)(122000001)(86362001)(33656002)(166002)(38100700002)(36756003)(19627405001)(38070700009)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?kB5xZ5e6J5W5p5Orc7qq4Mmka5/B6q5XiPMUeA7PTPRW2Ds+0E4WfJheaS?=
 =?iso-8859-1?Q?YTIgcnLx9U/kCQgbnLnlsO1Arp5p6vFSmNK4OWuRADegDihj46p7JfYbR1?=
 =?iso-8859-1?Q?vlMl7VawH1rk8V+xZpPwhxntbdVugF9UqwDuhGbremONIriTL0wpfHdm6O?=
 =?iso-8859-1?Q?zrcILy92D2ZMSml731sCtTWPzoGTPUUVZoWBMMJMoRwUe4Z+DRo7HNptAc?=
 =?iso-8859-1?Q?HSHXlKsV2O5VfnvwUg3maaoKoTVWP4OHKiMOnr8frU5xxtrchtxVCI3hqA?=
 =?iso-8859-1?Q?b1hrW2xt1fID1R+VOOMunO07CNrOZLUbb8zn9iLj/7XnKgXMnn41cFw5GW?=
 =?iso-8859-1?Q?zFmJqZx+2oxR9KD/ZA1L+mi9JoRddi9b8Whwqm+5khHJriwH19VsaZrCrW?=
 =?iso-8859-1?Q?Qy4ydMJwORewa+sMZRcDG2yGsh9A8z9giSUJiYyR84EaHqJ2RLIajKrqR4?=
 =?iso-8859-1?Q?mlrawkDOJyXwyXQPo/gR6iDUryWIrdyNrWJbLbXXvuhtSVA94bhbrATalx?=
 =?iso-8859-1?Q?AB6xoSJsdTp9KMaX06VrCOwqny2HTGk65WTCPc61FV7lQQqLv/9LybAIow?=
 =?iso-8859-1?Q?CIApDQSTenmb+ozWEnfSPFuxtiCc2lu3wOS/VM/HYVCSOyrJuFwn5phF2K?=
 =?iso-8859-1?Q?Ea4rVBMqWHGHSkeBYZoucI8eeS1dAtFQo3EK9ZLZCb78ruAECTGsub7/0w?=
 =?iso-8859-1?Q?U/a3J+RjWfIqGUFSpSPRmozS5IGgrInW+f42dGnQRjTt8b2+FOPDVSlAq6?=
 =?iso-8859-1?Q?/NGA1SItZykK/jP/AhVDtIYEg7wziRZrqkbHsfxrG/SSxxjIhE+vZNAL9k?=
 =?iso-8859-1?Q?R2zTlfOx7VvAdP62P4QIK3C4ySf5H2EUkU+4GGaJGEkQTg8qgfd3fa9RAV?=
 =?iso-8859-1?Q?WK5GSXwNRJLA/JMIjU1FdodLAVk4TbGyUluhR+IeZ0NKTWqh0nVm1u9wJs?=
 =?iso-8859-1?Q?qSO+EkZFSk3llsQCYaCc0G6A9IdCq5Kxr9HFUo90oN85OE69iI+zAOuWge?=
 =?iso-8859-1?Q?2HebaD6yqRyF1sEYjsB4U0SWsScBFJXnQc9m51ebFHCpBXxSLsD/2YfEn3?=
 =?iso-8859-1?Q?UlTfvohodnOBF0zJkHFI/PyhZ/rL5hQeIWlEuKYucGQpc0ne5fNovsV4fB?=
 =?iso-8859-1?Q?YKnxdrGZeyPbFHZiKA0bku4hO5Svgn4hcUNE/yIrKSmK7ctTZ7H+3RJKPG?=
 =?iso-8859-1?Q?xOuIMMUP2wcwSRSZ8SjoAp2Qm0EC5ak6JzoWK03NrNevOx6vvFv6I4ww9y?=
 =?iso-8859-1?Q?YBfAx94qp/G15DZdlEo6VLvmMiprf/HTGcTZ/gJ5yUN21Yyc7qN/T2Dt/I?=
 =?iso-8859-1?Q?rX0RsmEqCbyr/JxOeLttLLpeBUdau37QUbtxhVemfWDTZ8/XGpzAjlJGiB?=
 =?iso-8859-1?Q?dAfPqZZQdXa7P8oY9VfMYeD65uuj3mWBUSlCmsO2xRdX868iP6NJZdUlv3?=
 =?iso-8859-1?Q?MCF4BTZfjRIynAKjW3Y+UOpIoUqmjeLD7FHauuVq4Sd3Hmkr1HXsLorwgh?=
 =?iso-8859-1?Q?t7qiXoZCt55OFkjJT/fO37JMou4TchoEVLBO3lkREBFxuAW4IGCgoFuiCr?=
 =?iso-8859-1?Q?5DrKC2c0/c1Y96g+4hJu8iePGxfLMXacX8+544X/09nHrR1fwSiFBwyFEf?=
 =?iso-8859-1?Q?NDpJOU6uljl87YgDTDc7AJBAqPO9U1asRTCt1tLi53FH57yKvTcHGOHrjp?=
 =?iso-8859-1?Q?VeKpxQjOFkk8Uyq+jAmhcJil17h07ZbtKeCPT1iE?=
Content-Type: multipart/alternative;
	boundary="_000_82C70BE4B22A45C5A80AECD7F934D93Dvmwarecom_"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR05MB10203.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc071033-4940-4be6-978d-08dbd69ee14c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 03:43:27.5749
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4efFFfqmdT8O/3BLDoCIw7cFu7b5oG1YL7cmVPlSXxqFESSuKfRNQtcYcDGL4ZBFjqZZEJxXXlk+G7CLcb8Kjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR05MB7880
Subject: [oss-security] CVE-2023-34058 - SAML Token Signature Bypass in open-vm-tools

--_000_82C70BE4B22A45C5A80AECD7F934D93Dvmwarecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Description

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

CVE-2023-34058: open-vm-tools contains a SAML token signature bypass vulner=
ability. VMware has evaluated the severity of this issue to be in the Impor=
tant severity range with a maximum CVSSv3 base score of 7.5 - CVSS:3.1/AV:A=
/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H



Known Attack Vectors

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A malicious actor that has been granted Guest Operation Privileges in a tar=
get virtual machine may be able to elevate their privileges if that target =
virtual machine has been assigned a more privileged Guest Alias.



Notes

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Please note that while the description and known attack vectors are very si=
milar to CVE-2023-20900, CVE-2023-34058 has a different root cause that mus=
t be addressed.



Remediation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The following patch is provided for all open-vm-tools releases 11.0.0 throu=
gh 12.3.0



https://github.com/vmware/open-vm-tools/blob/CVE-2023-34058.patch/CVE-2023-=
34058.patch


The patches have been tested against the above open-vm-tools releases.  Eac=
h applies cleanly with:



git am for a git repository.

patch -p2 in the top directory of an open-vm-tools source tree.



--------------

Edward Hawkins

Staff-2 Technical Program Manager

security@vmware.com<mailto:security@vmware.com>

--_000_82C70BE4B22A45C5A80AECD7F934D93Dvmwarecom_--
