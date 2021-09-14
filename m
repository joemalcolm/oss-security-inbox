X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8355" "Tuesday" "14" "September" "2021" "15:36:21" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "166" "Re: [oss-security] Oracle Solaris membership in the distros list" nil nil nil "9" nil nil (number mark "U       alan.coopers Sep 14  166/8355  " thread-indent "\"Re: [oss-security] Oracle Solaris membership in the distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Oracle Solaris membership in the distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29848 invoked by uid 550); 14 Sep 2021 22:36:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29809 invoked from network); 14 Sep 2021 22:36:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=LtUZ3RNUVmzyD0ozu+b+AY+xpQKWZC9OvxQ27lnqUpA=;
 b=OdInr61iSwciPWS4BKvxExGcnDyi6gELQ2xNYGXc4eq+jMszONTgdPt4dczSZabrVWG+
 tFHx2/XW25lcYF3ApSysthBxyFh6MAHbyCDVvEQ41JyVLEG52ifwhqXj0xwzah3W0giW
 K0Ck0MUbHlui76Q1/5aEhaBneg5dcOsIylZk9A0QYCijmHwyvQL1gCSbwqKZbG/2KCQD
 aY9+Dxyxlbt9MjvRF7N5Ciu+3MUQURlXgu1hE9oVMs0MTXPABnUF+fADSS0hIGwj2ZBQ
 dLjWh+rg3NyCZlk/rLNwCdsfpnmDz/Mdjjig3Zr/c88WwJ3mBcvVOH2ae8PozV5U85ww 7w== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=LtUZ3RNUVmzyD0ozu+b+AY+xpQKWZC9OvxQ27lnqUpA=;
 b=f8NotG+9M0jGngvVv7zsbJQmGSfuYaKlpdACcH/y0sfnHWLoBui2t4ev5XzlYviQuPxG
 n3/T4KDEHDlyFXDvY0sYukvb/SMxhTylbKa1RNn741CiHgyOPvwk7hm01dUwxZGsgdta
 WELhUJByPetmrTqMaSnWPAzx3w6w1d+LrMLdw9qVd7C2gprQn8hlgV36NmaJIpJOKL+j
 6vhubiVzFWb90aHhKx0VQ7RFRbNmFqo8gxSABVW+8RSXWb/yFjJsorOoUBDDa+gAjKdX
 JUOSeQ8wRplXqgldYvAqm3vjjwhubitNaFz16Madr95EiWl/M52kRC+9nxWZopvEHMoV 3A== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYRjeo5r34cK2v5D3VA3DHDA5BPDyQZD404tBFI9CBP3KyTnlcEYOsGThANq/wtUX4WA7f+TvH2l5yuGzVesA6Z5Kuk3qTtvlgscRgDmE/VckdJeSK6rmdUCVsczwuy3Bbb0bujPox1GTzTIBVBQSgdWDnDlKIk4MtT41ImhpdLmGTA7jmxjYJ5zTD/etsFspJU+2dfz6ry4zlwmz9SOCuOZuM9W61o5oMCSupXm5kjah5uY9yUr51WOdV6Z3WfEJOG5eWy0R7Zw9tB4kJGYrlcuRNuQzpAnjPMRWLIQ6Jml5GbCZRzkicy/E0Kb0H8pGO4WSywefcK6kk9949I72g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=LtUZ3RNUVmzyD0ozu+b+AY+xpQKWZC9OvxQ27lnqUpA=;
 b=jF6NRT02QVTRVCsgFZSv185fsaFwnVrQkI75CPkkp6/Hxs1sQqGSbuyXfBwr1jwMjqF+lw7sjA+NFXWlXzTVEDvyRJsBYylQpwbbSCq/BEOLH2KMpLA2qBKsy6a4P0up5hOqAQk+vVvtyEsRz4UeUhyYgWFDdaayn8SuSR+2Wmdw4rL7p2CnZxLS37UdDwsGSXBOvQ3AKZphqyyEe7CRciZdhuBr4sVYtzSlms1rf9PSx04FGIkh0F0mS6PLMvth/swIOdvkfqnvGUBleCTgLc4Wgnl+6QxVlMD77Ilt4Enb2LD7ZrrLDMyqgD46OaufNZeePgJqe0bJkI7wWgVlHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LtUZ3RNUVmzyD0ozu+b+AY+xpQKWZC9OvxQ27lnqUpA=;
 b=tFCbgeZgWDYQA0UIJLPOUkhfw720mXkGNgBgLpQ4t6xN2Rg9Caw8zU0vH/k9tqORbS/Yp/iysHyNuJdJjwfDFa/TJCf8oPJxIs8egzYq52PSlx6dAxTPEW/FKKQZNwo8t8h5sShE9cQx1gPLciwS3tWouP4gDuxSc2Uo1oH5ClA=
Authentication-Results: openwall.com; dkim=none (message not signed)
 header.d=none;openwall.com; dmarc=none action=none header.from=oracle.com;
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <0135587d-2aa8-63ac-f6cb-320c98697d33@oracle.com>
 <20210906183539.GA18828@openwall.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <9b3e0209-5792-d614-6258-92a54cd2e3c2@oracle.com>
Date: Tue, 14 Sep 2021 15:36:21 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210906183539.GA18828@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN4PR0501CA0141.namprd05.prod.outlook.com
 (2603:10b6:803:2c::19) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a238fa8c-8f80-4201-fcb7-08d977d01563
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5566:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR10MB5566B8B6354D53328198E4D7E0DA9@SJ0PR10MB5566.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	X5HdWpm8WOiDXZThrn0sQBTh6gd+OHkhxHGjOdT94eyeb7FtkmYq+NXwq8udc4CaILCHoF1s+/5GiwvA3CxDC9lz0uApLEQB2tuGkb+FFiSym+yjZiKPumFIJ2bYH1XgRf8ekd9ZvKjK5fmqqmxmgYzFkEqKWI9NllKPC7sw0BColVWVxcBrHl/aqbsXWOFFfVk1DpOm3TSIwRElErbpD9O3FDbscdheGzLMoRCRLevuy9w0PWaolcjCKHqcsbMldzg+i+4ZcRruKCdAFTrvZyPXxhsX3mNKRCRLLyPomwjJ9TK7YzEfDKLKNJEDv+Kn6qT3Wmh3YyJC15R6Nb8Y8CO9bhz84fl9qZaDgJ3q0nSJG8kz2gmC4jRkgFkVVJQii3DYfFXtr9eAjhhjceNJajkB9uzbcOklGnth/QMq2Jzba7pC6EIl7R2jYEBvtGeifkip0ue8extwfRj/KN8uRWetIFysKbfGarLY0QqC8pltHTDUe6sJor5RjlfKCsU/SZIieTfW3cWJ06OF4ygb1kSJKPDNIIYLU+BuVIgHo9F1FCYgaqFwjLr6/JXZ0iTT3mNTUdTr8yz/LYhApUovKB5HKuOnV5GC83Z955HlBdC9RrcuL7XCdP0ITGkkzjVG/dfs0GOR13CnutcOEhzUTI1sfv00CdCflz0cLfzW4R9OZysmWRB6CW7LvoNVf2VX6kLlH3rbke49F8y22MLpW86ABalRLEHuQ1UWBQZ47RIZFJI7/afp2ggWpzr55XOMYpwkYfgc/C6h1knLQE42XkJ1E/NUzC88AN1cKYl3mQONydDyDWUIky/sKuZ2YHSRXbMXrQNc2eTUvtxYWLPqbZm7PGS3qRe18Z3SSsJsFnk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(83380400001)(2906002)(15650500001)(2616005)(86362001)(6486002)(956004)(508600001)(44832011)(6666004)(8936002)(36756003)(31696002)(316002)(66476007)(66946007)(31686004)(966005)(66556008)(26005)(186003)(8676002)(38100700002)(16576012)(53546011)(5660300002)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUcrcDRxRGVSaHdoaWFPYy9SSW05Yk4wRk5kQklVWkJGUWE5Ry9VUDBiUVZn?=
 =?utf-8?B?eENPTHlYZnV1M25IRHMrZjJ2OVBTM0twM1ZTZVF5THA5ZkI0Z0tSZit0WFh1?=
 =?utf-8?B?UTNBeTlQUlJRMzY0a1ovSWJYSUlZeUIyTVhZaEljLyt1WkdzTFlhdmdhcGk3?=
 =?utf-8?B?Yk5Pa052Uy9Xem1ZZG4vRjNJNS9oYkRBVjVNK0p3YURtVkttMDlxOG4xQTBy?=
 =?utf-8?B?T3BnUDl6OUU3aXZOZXhWekdIYVZDcE14RGNncy9NREhyVGplNjdGSTRvdDFv?=
 =?utf-8?B?WWMrNzAxREVEM1FCT3RwV0Y4M0JodnNBZTl1bmdPdzZDK0VsdXZKMDhXN290?=
 =?utf-8?B?Rms3NkQ4Qm00Q1VYZEhUNmpqRVNQckNqZ0NmWWdCbkZwNXhYQzh2M3paL0FL?=
 =?utf-8?B?MXhaZld5QlpTTk85Ykg4WTBDTnhPc2oxTEdwVmlsYWxDcXhsSUNFbHIvQUdk?=
 =?utf-8?B?S09FQWxGOFVGS1VkMlZGdUF5SXdtdzgvUDlHemNpcUZFODhRTkdicjdFcWtL?=
 =?utf-8?B?ZUJiMVFWSHpMQ0hwRkhwQkw2a1F2N1BySXIzUjEwbzRpb1Y3cytIZElEUnJp?=
 =?utf-8?B?T3U0MC94ZWZxYmZFYmU5ZVc5MDRQUUNFYmc5ZkFCRnZQbkR3UmlQdURnV1N6?=
 =?utf-8?B?R0V2SVJBNWx5VjJiMi9pWlhxUFpUT3dGZ29PM25ESHJUSVY2R1dLbkl0ejFE?=
 =?utf-8?B?SVJxazN2VURCalEyaXFMWVFOVXhwaWhlYUs1WHhoL1MwcnVmb0lyREhLS1Qx?=
 =?utf-8?B?c0tNNW5zejU1Z0loQkMyRDFHTThqMFJBR1h1ZWJGNzFHMVpjbVk4cTNmTHUw?=
 =?utf-8?B?UVp3MzR2OXdINkJPTGlNQjZWQ05qWnB1OVRaRy9EcDhwRGZFazdkdDNwWlpk?=
 =?utf-8?B?SGxWWVNrNUE1Z1hLK1hPQ2dLSHFGd2ZTSExLTktta3ZpZ3hJOVJDNzZubTA1?=
 =?utf-8?B?TU42WmVsYXVMWkZUMkkrS1RuSGFkanlTVWFERnByMW80dUpGZS9Nanl6Qm5G?=
 =?utf-8?B?UWozKzVZWGxTRXRXVWVXY0pJRW9xZCs5a3AxTzVVN2t1L1RtWDc1Y0tEaUpW?=
 =?utf-8?B?RDB6c29ub012a2lmd2FTUE5BNk1Eb2RMc2pYZDUwK2ZWVzhISlRLWU5HOTZ1?=
 =?utf-8?B?Mk51bTdmcjJWUWRRSXNZVzlHVHpnMFUxRzBVV2c5YVIyWTlHQTdGVzlFNTRx?=
 =?utf-8?B?VjE2bUNtMGRreEljVG01L0FrRnNvblhuMlZFOE5OZzkxdkcwcDQ4d2RSK3Vy?=
 =?utf-8?B?UU1JY3RBdjRpc1lVUjlUZ2FBd05aVDFPSCtBQTVRZkNBbVVvdUdOOExmWVZW?=
 =?utf-8?B?RnFDZXZGazJrenhEODJHS29pejg3ZW9zR01WbS84aS9uc1BXMlpvNm5Gck9X?=
 =?utf-8?B?ZGJWS2JvMGRVUTZiUmROOVhTWnZMZkREVVJqUnE0cUZiUndIN0VZNm81TUpi?=
 =?utf-8?B?NnByb3Noc2tXMy9ScWh5ZWs3VVRsZExkSnlFU29DTUJ3SWtOWGQwc2p1dXNS?=
 =?utf-8?B?ZjJwanZKb3NDb1Z1akZLY3JsMGtzTEFZc3l3bGlOUWVQSkgydWxCajBETU5P?=
 =?utf-8?B?cmlMR2ZMUUdmT0NEMVRWL29laHZpSDdhVWM2ZzJtNm1rS0RsNDNJY1FNcWx6?=
 =?utf-8?B?blVzQ3hJWEgxWW12bm5HaXlDS2IrMGZ6OEIvUk0rVVFiL2dLSU05VVoyRHV4?=
 =?utf-8?B?dGJBeGIwc3ZQWTJDblJpZ3U2czIzNXh6MThjTkJXOUw3emQwL3E5V0RaRHdz?=
 =?utf-8?Q?hCCsKufYn8jFSq8MwbWwqpsVwGrcXhrh6B9zUs7?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a238fa8c-8f80-4201-fcb7-08d977d01563
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 22:36:24.6996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Pzim1wPMuIHHYzqt70PE3v6prTAvM0wUYfCyy6qsFfM/kniIuFrz0zftB9gjPUQr/gIUjDeOfWZGPcyBecAM1bnxDhWAUHIy6tPV/vmc20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5566
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10107 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109140129
X-Proofpoint-ORIG-GUID: UbMEf8NuPz2fm28hJe7QMBEj6vTlTya6
X-Proofpoint-GUID: UbMEf8NuPz2fm28hJe7QMBEj6vTlTya6
Subject: Re: [oss-security] Oracle Solaris membership in the distros list

On 9/6/21 11:35 AM, Solar Designer wrote:
> Hi Alan,
> 
> I'm sorry for the delayed response.

No worries - I figured it was that time of year, and this isn't something
that has to be resolved immediately.

> I'm happy to vouch for you and Casper, and you can then vouch for Pavel.

Thanks.

>> So should we just expand the existing Oracle membership to cover both teams
>> or do we need to apply separately as the Oracle Solaris team?
> 
> I think it's best to separately add Oracle Solaris to the distros list.

Okay - a more typical application form follows.

>> If we need to apply separately, how is the "giving back" criteria handled
>> for orgs who are only on distros and not linux-distros, and thus can't
>> perform most of the tasks given?  (I don't see the BSD's listed for any
>> of the tasks there.)
> 
> There has been no such precedent so far (the two *BSDs were subscribed
> before the "contributing back" tasks were introduced).  The below task
> looks suitable (and I'd appreciate help on it):
> 
>   Administrative tasks mostly unrelated to (linux-)distros lists (but
> relevant to the wider community)
> 
>      Help ensure that each message posted to oss-security contains the
> most essential information (e.g., vulnerability detail and/or exploit)
> directly in the message itself (and in plain text) rather than only by
> reference to an external resource, and add the missing information
> (e.g., in your own words, by quoting with proper attribution, and/or by
> creating and attaching a properly attributed text/plain export of a
> previously referenced web page) and remind the original sender of this
> requirement (for further occasions) in a "reply" posting when necessary

That seems like something we could help with.  I also note that there are
many vulnerabilities we discover in the FOSS packages we ship that never
make it to this list - when the researchers or project maintainers don't
send notices to oss-security, should folks like us at least give a heads
up here?

One obvious one in the last week was the highly publicized Ghostscript
"0 day" - aka CVE-2021-3781, for which the upstream bug report is at
https://bugs.ghostscript.com/show_bug.cgi?id=704342 and media report at
https://therecord.media/ghostscript-zero-day-allows-full-server-compromises
(and yes, as noted in the above quote, an actual report to the list
  needs more details than just these url's).

Of course, we ship a smaller subset of FOSS than most Linux distros do,
so we won't spot everything, but can help contribute to a larger effort.

	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc

For the eligibility criteria:

> 1. Be an actively maintained Unix-like operating system distro with
>    substantial use of Open Source components

Oracle Solaris 11.4 is the latest version of an unbroken chain going back
over 35 years through Oracle & Sun Solaris releases, and SunOS before that.
Updates are posted monthly to our support repositories, as reported in our
public blog at https://blogs.oracle.com/solaris/ and interim relief is
provided to support customers between those releases.

While our kernel and many core OS components are closed source, the majority
of packages in our package repository are external Open Source.  A list of
the over 1000 open source components shipped in the Solaris 11.4 release in
August 2018 is at:
https://docs.oracle.com/cd/E37838_01/html/E61065/osplg-tparty.html

Current build recipes for most of the FOSS packages we ship in current updates
can be found at https://github.com/oracle/solaris-userland/ or in the FOSS
source release archives at:
https://objectstorage.us-phoenix-1.oraclecloud.com/n/solarisx86/b/opensource/o/sol-11_4_37_101_1-opensource_1.zip
https://objectstorage.us-phoenix-1.oraclecloud.com/n/solarisx86/b/opensource/o/sol-11_4_37_101_1-opensource_2.zip
https://objectstorage.us-phoenix-1.oraclecloud.com/n/solarisx86/b/opensource/o/sol-11_4_37_101_1-opensource_3.zip
https://objectstorage.us-phoenix-1.oraclecloud.com/n/solarisx86/b/opensource/o/sol-11_4_37_101_1-opensource_4.zip
https://objectstorage.us-phoenix-1.oraclecloud.com/n/solarisx86/b/opensource/o/sol-11_4_37_101_1-opensource.digest.txt
(Those zip files primarily bundle in the external source archives that are
  just referenced in the github repo, providing a permanent copy of the code
  should the upstream download URL's stop working at some point.)

> 2. Have a userbase not limited to your own organization

Oracle Solaris is used by over 10,000 organizations worldwide.

> 3. Have a publicly verifiable track record, dating back at least 1 year and
>    continuing to present day, of fixing security issues (including some that
>    had been handled on (linux-)distros, meaning that membership would have
>    been relevant to you) and releasing the fixes within 10 days (and
>    preferably much less than that) of the issues being made public (if it
>    takes you ages to fix an issue, your users wouldn't substantially benefit
>    from the additional time, often around 7 days and sometimes up to 14 days,
>    that list membership could give you)

The Solaris organization has a track record going back decades for fixing
security issues, as seen on:
https://www.oracle.com/security-alerts/sunalertslisting.html
https://www.oracle.com/security-alerts/#SolarisThirdPartyBulletin

As for timeliness:

We learned about CVE-2021-3156 in sudo from the oss-security posting on
January 26, 2021 and made interim relief available to customers on January 28.

We learned about CVE-2020-1971 in OpenSSL from the public disclosure on
December 8, 2020, and made interim relief available to customers on December 16.

We learned about CVE-2019-14287 in sudo from the oss-security posting on
October 14, 2019, and made interim relief available to customers on October 22.

> 4. Not be (only) downstream or a rebuild of another distro (or else we need
>    convincing additional justification of how the list membership would
>    enable you to release fixes sooner, presumably not relying on the upstream
>    distro having released their fixes first?)

Solaris is different enough that we can't rely on another distro and must
maintain our own package sets.  There are Oracle products downstream of us
who would be releasing fixes for their product using our work - these include
the ZFS Storage Appliance, SPARC SuperCluster, and MiniCluster.

> 5. Be a participant and preferably an active contributor in relevant public
>    communities (most notably, if you're not watching for issues being made
>    public on oss-security, which are a superset of those that had been
>    handled on (linux-)distros, then there's no valid reason for you to be on
>    (linux-)distros)

I have been a member of oss-security since at least 2013, acting as both a
distro maintainer and as a representative of the X.Org upstream security team:
https://marc.info/?l=oss-security&w=4&r=1&s=Coopersmith&q=b

Casper has similarly been participating in oss-security for years, and earlier
lists such as bugtraq for decades, while Pavel has been monitoring oss-security
for issues we need to address in our packages.

> 6. Accept the list policy (see above)

We accept the policies as currently stated on
https://oss-security.openwall.org/wiki/mailing-lists/distros .

> 7. Be able and willing to contribute back (see above), preferably in
>    specific ways announced in advance (so that you're responsible for a
>    specific area and so that we know what to expect from which member),
>    and demonstrate actual contributions once you've been a member for a while

See previous discussion.

> 8. Be able and willing to handle PGP-encrypted e-mail

We are, and will provide PGP keys.

> 9. Have someone already on the private list, or at least someone else who
>    has been active on oss-security for years but is not affiliated with your
>    distro nor your organization, vouch for at least one of the people
>    requesting membership on behalf of your distro (then that one vouched-for
>    person will be able to vouch for others on your team, in case you'd like
>    multiple people subscribed)

See previous discussion.  As well, in preparing this, John Haxby agreed to
vouch for Casper & I, and Ritwik Ghoshal agreed to vouch for all three of us.
