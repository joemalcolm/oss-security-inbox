X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2156" "Tuesday" "24" "August" "2021" "15:46:28" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "40" "[oss-security] Oracle Solaris membership in the distros list" nil nil nil "8" nil nil (number mark "U       alan.coopers Aug 24   40/2156  " thread-indent "\"[oss-security] Oracle Solaris membership in the distros list\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Oracle Solaris membership in the distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12233 invoked by uid 550); 24 Aug 2021 22:46:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12194 invoked from network); 24 Aug 2021 22:46:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=to : from : subject :
 message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=M8FIgJ2EH9yx66dHCGP/9JGowKRnghTesErgQUEGTlo=;
 b=GFJDQjn4jPNz/M9cBmpFB01Jt0vRuJjb37bJblFuFZgm0kXv4RMp1GjSxvual+YmC1tp
 1JJPn+WTxNflhLSWQTAn/Sl+kMLCkE27FSoAp3FOti56jsRF+07zGi8S1dzFa1AYD9gX
 wjYiQqLiyrkDL5BJzVtt73CEZ40ZPdi1opIvulFIRObwS8NVwppEB5lcPDV9vMAwQRPV
 5OErrWo25bc6WxGpkveoR+tRilxU7kYnOjVzxEO9xUeDmhlGJScAjbUr4aJK4SI4Dc2u
 rFfe/8lZ5ciRNEgxSexZ+z0d3QshOHasOFeBPBtCdiOgEcLbOhPaVWfvCH8YMRAEby+S 3Q== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=to : from : subject :
 message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2020-01-29;
 bh=M8FIgJ2EH9yx66dHCGP/9JGowKRnghTesErgQUEGTlo=;
 b=Hii0Qk4Jw2pLOOlWrJoFODDPahAYDkiU3GGXLCgRcmtbKn43K1EFMbX1kYkkDEQMLjWx
 ydVAwtqIKNtMphVq4p3A4WHgAiM1zqPKjGQrLgSBC/s2SsXHreacyxZieOLKFqy897uA
 qyUO2e04NWna0cgFzFlZDSp38RO3u8JclXW1kBMRuqCOGRgPiNN8uD4gUMlde3DwK1qa
 kc+/4rBv/iFAx++lhBgSEE9vIrCDSGkeMMmpkMBlQ0+7gPLX6iFoqFqA3kmZL9GG0pU5
 slkbs/stP7ORIniWl1ds50Df+YEHLtYjYx4MivSTUPtmAoXbOk7WPWNWD0WZakHnLM4g MA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oRkj6JH43Or+J4bEzxTVHaVpG5nonM5s+tzp/eRkXUyXrtiPyOcnoX4ufVmJ9jFlL5Vl1auEC9aFHAVxPA0rFx+U6wBawKyh2dC57cs4D6knoKy29snUxFxzqR3RJzbXA0RM9ChWPwvibM5o77sxEE7ckxjBoMVPPvHUpW23ogngRzfebaaQSXZhPnOerP4YcMQjxagCU7xDvCzD+SxIOacG+ys+YrIl/+OpzFwq5ge01263d8jx/1nQaIPcfge0TNjHr5ZPXuJONyHg7Ee+FAtWxagxHNQLKGfA7LppkUxEXe/l/6kAtB7OLm2SlBmMB+RJ8MGWOsUnZ2ct9YopJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M8FIgJ2EH9yx66dHCGP/9JGowKRnghTesErgQUEGTlo=;
 b=fVHa1Y+0OBxX3sadlcBbarRA4e6GmLK6+Ps75FTbX9j12vRnfc3oLmZD3klKikXmjqvnspaZtkojTU4y4rIfLufD4UgPKG8LLNOrWOL0BPLU+eh478VdrfyNWCxNbCrxp5WxK4Rn6VhGt7gvysfcUskQdWkl07egFHECRdbPHYmGguY4+wekE1Tk4gpsdGo2VEOKKiJkx23NAWysDYYoCX7r+9wappufvUh7KI6SmMwfeRCZyAaXgTFscoK+4oyyHFc+S1rGsEU8f35/X0mTnaUr9XQgGwolU+TVwY/LWw8x3Tc+IOiOHDdwmP71apumhixVUW8TR1Ad2xjryddbRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M8FIgJ2EH9yx66dHCGP/9JGowKRnghTesErgQUEGTlo=;
 b=HQJQwYlELzdCtdbMC7E5styQLK++LaCaopJRRRE6x4FId+QwDxEFeFgCUBLj13jwhr3aJsaJsjXtxOOuf9ku1Ec1AatgPKDMVt2WpDg6NtiP7yAotxSjuiMk0qmQN/R6u+WEy82luBLEnJ3QLwbpXXroqtp/azE6C1Sud/Wj8vo=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <0135587d-2aa8-63ac-f6cb-320c98697d33@oracle.com>
Date: Tue, 24 Aug 2021 15:46:28 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN7PR04CA0114.namprd04.prod.outlook.com
 (2603:10b6:806:122::29) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d359c5fc-9743-4b32-2f93-08d967510466
X-MS-TrafficTypeDiagnostic: BYAPR10MB2917:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB291771943B00ABE4B1221258E0C59@BYAPR10MB2917.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YO0Ek9pwAdWyXi5E1lvCDqnvMMYuy2vJ8/Kn+Ts48mgG5q1slmO8y7NHJl9u1N9fDN6SueSyV6R3Tm7OQZengGbPHXhizWV5IbtymQJDLP38cu+WjVBlZRH6cT180s+N5wtb7/Ad1Ys9Cv9Wc1dmPYP6qnYlhATunqkuEIbtOxAMDS7wINeKr9KeHncD7lwh8mL5BbnmUmzL9kvRy2OnYSrSWgazuLQb0ONt8rYyh5h1f/5E8Yn0byhs0NwxxQNZLPhAczkdJ2WCDlx2n4sK1B8Nw5BwtwwFZgNWEalJVCQUw0r51ZvImTyVxFAliKs9nLox+jgacYBYaiLGECxb1imQEdmzBW7sj9QKATETKDvQWKHjLeo6LerbZT2nROvSJvsKPVsc6eUXWwOol7shBoxJDh2etG2GmcaZExzLrYKWp8Gmv/C5XhX6B9JJHpwaL5zb76zV6f+VCvJtxFgyb/JQafRFp+KnqOmeVN6gx1NKPCfhxVkLlfyoFS+CgXkPFRZ8jzy4MsefNyNTPVfQBhQfHBpiVle2VgDldX1jPe0jrqgdwXU/dfBaWFVmqLoQUcTrXh9N4HPw6V6iqy+ppELsNTEhFN4HVuz5Se3dDGANapueDxyvxH7LMidE/zaYR5u/PSZ/h2CdyJ6imPnAYLd2lrucllcWqhUQ2twEcJJgXeYXMgn2ihUZIFkzjppkq0ezg3lRAQoDiMIesN+N3/HwH+BShtEznrylR/vlCbp+o1lcSOhSU7FhVGBIG0SH8Z+0yvRJBFBRH72ilmmqT8OH9aA4plJR/UyZ4HhFDgC4rLjQWQqYhJyhu0KGi0ax
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(346002)(136003)(376002)(39860400002)(366004)(38100700002)(31696002)(478600001)(966005)(5660300002)(2906002)(44832011)(186003)(66556008)(31686004)(83380400001)(956004)(86362001)(16576012)(66946007)(316002)(8936002)(8676002)(6916009)(2616005)(36756003)(6486002)(6666004)(26005)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?enhnYlFHbnU0L3Y3M0F6U011QWVSYmsra3ZPV3R4a3NXM00vcWtyb2d6NHM2?=
 =?utf-8?B?SlVadWYrZHdMODNkU3pJUWVTMlNtZDBoWnVWdVQvWUp2VGpIZG0yWHlzUk9v?=
 =?utf-8?B?cXJRRlpsNVZkTHZldHBLWUhDeEhPRUZERW8xOWJKN2xub2E3eXFtRXpGNDcy?=
 =?utf-8?B?OFphMVdZaU1tKzlNTzNTRjVISzBWcDVUTlhxT0VJMnpDUzRNdWwxOHkySDJk?=
 =?utf-8?B?VUFqTTBRU0xoMUd4Y08zRjV0SDBZV0ZGR3ZuTUF0LzVSSVI5RXNuYmlCaWow?=
 =?utf-8?B?V3B1RTE0U0Rtc3U1aDR2cG11QUhZVjg3V0JtanNsTjhtazh4VWdXcUhIcDFv?=
 =?utf-8?B?Mnh2UDA5V0I5RXI3WjVQUjBDR0xDd2JvdmJwNFNDR2tEeFkvdENtdDlKc3RL?=
 =?utf-8?B?RE84MzdiVzhRMHRJcmp0TGY5YXozaWhTTzJkSHhTc3RIaVVMZWliUVlQTjFW?=
 =?utf-8?B?ZE10NTNUUnBrQkF0cW9DWnB4ejBaTXdNem5RVCswbEFFN1l0NWhTc3U2dDNm?=
 =?utf-8?B?NDBZVnlIeFJ4VTBvMEtpbnNXTlB0SU42NVlyRkFrTjM0QlNXZVlUY3hMRXBj?=
 =?utf-8?B?M2RWdVJid1A1SE5tbFF6WS9Cc3FUVm1OYTJ4QVJ5QWJKa0lmYjhOSVl5NFdR?=
 =?utf-8?B?VG9QOEd5UDdpYTUxdStEZzl5aDJwVTFQWjlmWWVma0l4dk5wQm9ZeFVZbHhu?=
 =?utf-8?B?d1IraE9iaFNUcjdCS1VPMkk3c0FPMGFmVmxOWEhPZzhydWcwcEYwYVplSXlj?=
 =?utf-8?B?U1hKQm1DaTJsV2dLWmxjNVVPaUhVcUc5UngwVjBiR0xQL2RiYy9MWGszTnRZ?=
 =?utf-8?B?SHFVVnZBTzdJRmhPZ0NyVk5xajQvZXBabEorM2pFZExaTStZcjUrTGU5N2NY?=
 =?utf-8?B?U0lTNXR1ejZVTyttV3JrbkZFcGk2bzlvL1hMU2xxMTlPM2tDNlNBckk3Ny91?=
 =?utf-8?B?RHdrSHVqWGY3OVVYNzR3c3dtR3N3bjEzVG5JUjRzU0NtcUU2cU03YkE4azFQ?=
 =?utf-8?B?ZjFON3RTZGUwYVRzd2RVWUtpakpMSnN2Sldjekt4Y084M2R5d1YvSndDYW1a?=
 =?utf-8?B?aTVDditmYWNGKzNwcytzZEc3bTNQQTcrRjhucHlqM2dKUm5BL2dWbHYzWW1q?=
 =?utf-8?B?YmlWdVpheUJmWmZvbGpvTUwxa25YZTVDR2FSZGVRa0xLcG44dm1NWnU1NnZy?=
 =?utf-8?B?RXFVSkZvaTVFS1pwSGpSdDBXNVFCRGdRVkNjZUpwRmZwYmhyS3pSZmUzekJR?=
 =?utf-8?B?RncrbWNFWkM2WlRncmtaTzBxcUxoVnFFdnZ6TjJpcjUvd3dINkpMUThhTEtv?=
 =?utf-8?B?K09IQ0w3cjJ0MG1JZ2cyQzBzSXFWajNMSWFDcGdYOHRSWDZ3NGR5ZHlaTFJ3?=
 =?utf-8?B?SWRnd3B3ZG95ekFkV0hYSEp5aEJCbkVrVjg1MjcvOVA3TEEyR2tTMDNjS2lx?=
 =?utf-8?B?V1pUWHE0WnNxS25MdHZWenNlNENQV3QrTlplb09pRWg5b3NmTkV2MWVpRFNk?=
 =?utf-8?B?L2JpaEpJRzJHV3gwMnZ6bWQ5elYzRVIxR1VqVEpjUTdubTJrRVR5ZVBiZjNa?=
 =?utf-8?B?TEVhVDRGdkFlUmpPLzFoOEFaMnAzOHltTHVZMXBTVktQZTY0STdJeWhLeWZv?=
 =?utf-8?B?aGo0eExOWnhiRnNyN0xYWE1pRWxBNXltYWZVU0drTWptanROL2JySEowY0d6?=
 =?utf-8?B?M21NeWk5ZDN2SVlZOWFLWFNrcEFxOEwxNVZJN05hTUd3WFFQUVQ5OWdwN01w?=
 =?utf-8?Q?chCaUrf/LGasw26i4hQ/0MMeDZMQdkCXD94+8FN?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d359c5fc-9743-4b32-2f93-08d967510466
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2021 22:46:31.4767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D5tytOyCSXidR5lrD4sqKXK1HKwTawi8PWTb+NqpdNooWzOOM3tETZBZf9eloyNzl0Gpefb5k+cK1TQDNtuv6kaScfCgJHW09I17nI8atcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2917
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10086 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108240141
X-Proofpoint-GUID: Mh0RldyxRd2QObwYgAye8hk9bzCJYMVx
X-Proofpoint-ORIG-GUID: Mh0RldyxRd2QObwYgAye8hk9bzCJYMVx
Subject: [oss-security] Oracle Solaris membership in the distros list

I've read through https://oss-security.openwall.org/wiki/mailing-lists/distros
but am not sure how best to proceed.

While "Oracle" is currently a member of the linux-distros list, the contacts
present there currently only represent Oracle Linux.  As they joined at a time
when Oracle Solaris was not eligible (before the membership criteria was
changed from "open source distro" to "distro with substantial use of Open
Source components"), they have been keeping the information they receive from
the list strictly compartmentalized from us in the Solaris organization, as
per list rules.

We could perhaps just expand the existing "Oracle" membership to include
Solaris, but I'm not sure if it's appropriate for Solaris to be a part of
linux-distros, instead of the distros list.  While we don't ship the Linux
kernel, we do ship some appropriately licensed code from it, mostly
dual-licensed drivers, and certainly have overlapping concerns in areas
such as providing OS-level mitigations for CPU speculative execution issues,
but the same is true for the BSDs on the distros list as well.

The members I would propose adding from the Solaris team are:
	 Alan Coopersmith <Alan.Coopersmith@Oracle.COM>
	 Casper Dik <Casper.Dik@Oracle.COM>
	 Pavel Heimlich <Pavel.Heimlich@Oracle.COM>
and existing members of the distros list from the Oracle Linux team have agreed
to vouch for us.  (Non-Oracle members of the distros list may also know me from
my years on the X.Org Foundation security response team and may know Casper
from his many years of broader community participation, and we've both been
participating in oss-security for quite a while.)

So should we just expand the existing Oracle membership to cover both teams
or do we need to apply separately as the Oracle Solaris team?

If we need to apply separately, how is the "giving back" criteria handled
for orgs who are only on distros and not linux-distros, and thus can't
perform most of the tasks given?  (I don't see the BSD's listed for any
of the tasks there.)

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
