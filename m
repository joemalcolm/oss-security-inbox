X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Thursday" "21" "October" "2021" "12:04:47" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "59" "[oss-security] Mailman 2.1.35 security release" nil nil nil "10" nil nil (number mark "U       alan.coopers Oct 21   59/2359  " thread-indent "\"[oss-security] Mailman 2.1.35 security release\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Mailman 2.1.35 security release" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22304 invoked by uid 550); 21 Oct 2021 19:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22273 invoked from network); 21 Oct 2021 19:05:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to : from :
 message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=r94WfLW4xovP6szLIVxY9M8Zoda1/hvmuzBNAjnttUA=;
 b=MDVp0vb36iLUi1NDk9cGUgnJhKJDNbgPWwwXVrD9CoGQRhbC2US8/E1VZguaF8hdF7bx
 2mCLXvVZO85ljHOLMEB79Lf441BFSMu2G9FA6ieaCq/v/5/vSbjvHJuo5R60clqYzcmb
 Jh5iGP+A7h8NEqfkZmxSCM1ym2PanCsB5oFQy+vXTQ8Ga4kVK2a+O8dYU4AxvmpM/ybL
 eOGSBn1vd8pX9+u1M3jy5n3sFBEIxnLXFOnlxACKpdEHe6oOErGleFeI3cGz9nCNOdhS
 OsgF1yUCfPblHX89lPKtsR0xZqY54BbND74CWYBAs8WnMx2CPtETTXLNpDtBI+RalgY3 nQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S22cmAzI9kIe+1MZzQ4zpLzTpiDM/cAgUL2lm0t6rVSdCCHiZ7kT/qfri0ASBSxYszOsg7fWBkuDNDlJr2nd2nPZWu2y1ees8zvccINL5CC6evpv5rru/Qu5dVsUXQW7OuuRqHF+LB+tI0Iqh4948HTrUj5b0KzwJAdxPbKCuk//ShVfVuF7RHBCGOItNmO6vcOWQp2LcE6Xigzq0a77N89Rw+jP0jyTYnEEoDRkFCc6Nh9lvw0/pbJC47DySKDKGir47Yjb2EiZjbeF8NkZ+1cjVKvWX2jKl32Rix7sC+R/mui5+cSZCEo9xbX/O/j1aDFGth24wYO4x+R+VBOZ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r94WfLW4xovP6szLIVxY9M8Zoda1/hvmuzBNAjnttUA=;
 b=AqPWlG+bDFWr9zup5ep8VYy3jH7JhhKoPB6RS+P22AQ2hewR0UYvFHe6oqopfqbnq/R2bUmcSg/LNj07uSVi3VO3vmKzxI6A9APwzL3/5AofDMTs2e9WQcKTrjY7b/BKAvSr5obBCqanXJIJJkl83kLBFFHNE0BiM+kUjfVuSk+eChNT8TSboT0EarxfbNvcgbw84bUtvCHj02ZXpbsf7ql/92AhZYviP5DE8RkZjwy0+MMysl7bQ7XbitzmYTnvPA7OzTeez/j1ULFA33ApWtolGAV2WFDXxwsVdMXEvYLm/ZpkHE+mO++50cRqRV3Vb2NZ9BiHEpf+KrPsMlViXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r94WfLW4xovP6szLIVxY9M8Zoda1/hvmuzBNAjnttUA=;
 b=oiREQiLHUWfUFOAymI9kV5jftdGtuqS1wu5bkl/ugCNoF1A/aFQVk9NnYl3Z9tndOt1nFuTYpI/uw8E+EUEA8Uf74DirrRT/xxoKnNmjKbntHEKkU9o14Kd7iMGqX9NlI9DewxruTqT7JO3+g/JPu+8KGRKmqjtUvEPkRq8bEmI=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <a27e3c69-2e14-929c-0a57-42427760b778@oracle.com>
Date: Thu, 21 Oct 2021 12:04:47 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0174.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::29) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 535151cd-fc4c-428c-da03-08d994c5a7ea
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5835:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR10MB5835F9B8EFBC5C35A6FD1202E0BF9@SJ0PR10MB5835.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5NjlEmPAnrme2Nt6kr/BaGhjw4iiCY1/aH3JVtbGVy783C7JR2Ty4RUiq+JrPbOPkYeN1GtEsj8ofk9Sx6wM9yVPZ7/Qr5GQku+fL8pOwNUvpM4rSgv60q5Xd5c32OoNssaFpg26++KkFj6xBle3+imVUtEnhm0FdAz4Li7BnrwWmxdN1TPoFtDOdil7pB2ddSE6XD8lx2Pomub8rBjQpbjcpNExTeX00503tFJ/Gv9tZxlRsVIIkTr02jUGNq5ogFbWsHS7F3/7x9ZSo4rdhVqr+MGRXcqujm9dNel+ogM/dFAI7RGvPURYwkrC08vhZ2kMPnai5o/5DNnKomAtOLyK/OXSsRT8cdis/lewGdHHOoZmtnZFQpWRWkMqCk5sTkhJ1cnuB8mQo1exBy8c/Hkp65ksvxaX9LM/hDpj1tMqyDbylFiJYPH5YcMXa25AYgSr9Aq83W78f4JX0M1SrOOPsE9IdB9veO7PHHTB5YESXxRvMs8KYcKUbt1g0tfNxb+ctjvoROo2ZTKySCRjWb8zmitlH6/14nBS61pW/VjFd5mww7Egn0QKK0pNeXCCGZ+A4FqlHkRHk1AVqI0eSU8+d4FxJCwPU9B+J0CUxeGZyW4FnWxzO+zj1v62CNYMmm2o+OJLnTo124ITx+Amo6+kzrx1eCQ+rEcoCxcmJ2+IhwrQXNQd2juDOEXfNU87Q8ltJsmuFA1lUSE+OxQsCkmHvrE8LJlDKbLb7k1DjY1v8MLFPaLT+WyFkgp7dXv12fK5yYsJmhyjmM8RCVDqnA4BRGptx4rDfecLUnsFfP7ExFn1jbPQWs0b9Qmhrw+CdvMizGhntaVNaVTKOORFT3b5m3u5nuG0TKiKx0ygYkW47CAHgKV2fhwrK8Gv48EN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(2906002)(7116003)(66476007)(8936002)(5660300002)(31686004)(26005)(36756003)(316002)(66556008)(186003)(8676002)(44832011)(83380400001)(66946007)(508600001)(6916009)(15650500001)(86362001)(16576012)(956004)(31696002)(2616005)(38100700002)(6486002)(966005)(2004002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q21yQ3hVbG9tMm94ODRaREJObkZPWHBBa1ZlM2FmNmZTY0lEV1ZYb0xqVGcv?=
 =?utf-8?B?MTBsdy94NEpFYUtGL2VOTDJEclRsZmNHVjRiOUpUZ3BpYnFxOWFyV0dKc29F?=
 =?utf-8?B?ZXNQVXRNV2YyZjBRZC92RVIyVHczOWZYdEEwOVpQMTMvQlRENzlKSkorMWZr?=
 =?utf-8?B?bXI0SUovWXI4ZnJwL3dEU2dka1l2TFNVcVl0VG0xZ2VZSUdrS3NnSU1XRjd5?=
 =?utf-8?B?ZThma2h6OERobkpQN0l1R3dVMVl0N1FJcENJaVM2cVZEcFZsMnJCbjJReWZH?=
 =?utf-8?B?QWFlZ0FvcFpjZzNjZy9TQzdEclFMQUJydVIycHBBRU13U0NleTRMTFFJdW9P?=
 =?utf-8?B?V3lKeU8xNHdwOCt3WDVnTWZ3TEFtcFlxMXpwSEZkeEJ2NVcwZmZVQXJQSU9H?=
 =?utf-8?B?Yk84YlFESFl2ZmxTNS92VkZLcEdkWUhjY1dvTEkwQi92UWFpUVo2Z0dkOStC?=
 =?utf-8?B?RUpjdlNwLy9LRXVBenYzQUpFWHNtaUdYMDEvektIcGRzZUpjcHVIbmNMVWIy?=
 =?utf-8?B?WlZ6dzF6YUgwcEZQSXdPNVRjZ3d2cy9RNEpFblJxaFlGVTBycHBxLzZmR20w?=
 =?utf-8?B?eExXZXNWYlhNVTNRSmxFSzNGUDhDK1BGRW91eDYxWG52OXBPcGdxaDV5Q21i?=
 =?utf-8?B?elBhcjlmY0VrQVFwakVtdjhWaFJ0aXRlOXU5eDR6S3YwaGs0Vmo3djMrYmF6?=
 =?utf-8?B?VGwwTmsvblhaclVNY3Q5WUF2bFdyeVNpRG9XKy9NWFJic08vUDFDU1BHeDB1?=
 =?utf-8?B?UGZQK2NCSVdxdVVkbWtISmFIT3BpT0drN0dCMnJ3NFFIWWw2dm9uSldxTmhY?=
 =?utf-8?B?OXhKN2ViZmtNb2JkendLUUhqZzhneTB4VVBRbFNCUHFTd0gzL0QxNE5ZSnVJ?=
 =?utf-8?B?MzhwYVgrVytlM3pZRi9mT2o1THc5V0JycXRHS0VnM1BwTUVMVWthWVFQNzhK?=
 =?utf-8?B?dnNqUG1uWWlSWTlBL3RndFFzU0wyczlrdGNzcVF5NDFncXpsV09XeVFyNzFj?=
 =?utf-8?B?bEkyMS8xTGx3aXBoa2Jyek5zbThWUGdsMThlcmVnRUJLUkdBbWJpVFBua25m?=
 =?utf-8?B?eVNobW9lWnQzODJlZ2tjaXY4ZVoydXZ4bjlldkdwOURqTlAzdjMzaW5xUXhO?=
 =?utf-8?B?Z3FVRVZaRnBTVk5tdkVPVnBySGQzc2pQcSsrc3ppQjQ1UGxtcHpDTEM0N1N3?=
 =?utf-8?B?QUcyVFhCak5XUlFmcDB2dEM5eUJ5aTFsV1g0dVhVUm9ZdzJFZHVadWlqTHhm?=
 =?utf-8?B?ODdkN2dxMStsS0d2NFBlL3VLa3pUTzdoaDdyMzBXNjl1TzBpTE14Ym42azdW?=
 =?utf-8?B?RHpWd0lEUjZMMVJpVzQycEE1Nm55WTZ3TEtwUlJMYVVzVDluN05KWnBkVVJP?=
 =?utf-8?B?bXIrL0Z0bk5vWUVBSDlmNXE3RWRYeEJKT2FzWFZEYURlUzZ1eDZnOTRGeGNj?=
 =?utf-8?B?VG9hVnVNZm56NWxQeHArRDFMTG5pamozYnZEYVBWNnRVcG8yNFc5NHlJTWQx?=
 =?utf-8?B?WmhPdk9NZ3FpenMyVUQ0YmpwRXB5eG9BRytmWDRISGhrMlBZZlh4QjlmNkc0?=
 =?utf-8?B?ZDdmWnJrbytHSzNscHFPbFcwYWJqUllNUG5qNStJQW4rQjJ6aDVLaWQ2QXJC?=
 =?utf-8?B?QlliVnNtR1JPcGYvMzJ1OHh5bG56M2hvVlVjejljNkRHbVREQTZLWFhmQ0l2?=
 =?utf-8?B?dXVuclhjTk1sMzY2dDFxYVVGYlNhcGpIS2oyN2NmWU1QRGlzLzI1TTVpejlJ?=
 =?utf-8?Q?TGWZmB0u9aZzOLG6NnjmzhS+rmMIKLoY0/4kCek?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535151cd-fc4c-428c-da03-08d994c5a7ea
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2021 19:04:49.6808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: alan.coopersmith@oracle.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5835
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10144 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=921 suspectscore=0
 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110210096
X-Proofpoint-ORIG-GUID: zRydfpsr3-KihYMcVHFd-e0-2xotVPCk
X-Proofpoint-GUID: zRydfpsr3-KihYMcVHFd-e0-2xotVPCk
Subject: [oss-security] Mailman 2.1.35 security release

Quoting from Mark Sapiro's emails at:
https://mail.python.org/archives/list/mailman-announce@python.org/thread/IKCO6JU755AP5G5TKMBJL6IEZQTTNPDQ/

> A couple of vulnerabilities have recently been reported. Thanks to Andre 
> Protas, Richard Cloke and Andy Nuttall of Apple for reporting these and 
> helping with the development of a fix.
> 
> CVE-2021-42096 could allow a list member to discover the list admin 
> password.
> 
> CVE-2021-42097 could allow a list member to create a successful CSRF 
> attack against another list member enabling takeover of the members account.
> 
> These attacks can't be carried out by non-members so may not be of 
> concern for sites with only trusted list members.


> I am pleased to announce the release of Mailman 2.1.35.
> 
> This is a security and minor bug fix release. See the attached 
> README.txt for details. For those who just want a patch for the security 
> issues, see 
> https://bazaar.launchpad.net/~mailman-coders/mailman/2.1/revision/1873.
> The patch is also attached to the bug reports at 
> https://bugs.launchpad.net/mailman/+bug/1947639 and 
> https://bugs.launchpad.net/mailman/+bug/1947640. The patch is the same 
> on both and fixes both issues.
> 
> As noted Mailman 2.1.30 was the last feature release of the Mailman 2.1
> branch from the GNU Mailman project. There has been some discussion as
> to what this means. It means there will be no more releases from the GNU
> Mailman project containing any new features. There may be future patch
> releases to address the following:
> 
> i18n updates.
> security issues.
> bugs affecting operation for which no satisfactory workaround exists.
> 
> Mailman 2.1.35 is the fifth such patch release.
> 
> Mailman is free software for managing email mailing lists and
> e-newsletters. Mailman is used for all the python.org and
> SourceForge.net mailing lists, as well as at hundreds of other sites.
> 
> For more information, please see our web site at one of:
> 
> http://www.list.org
> https://www.gnu.org/software/mailman
> http://mailman.sourceforge.net/
> 
> Mailman 2.1.35 can be downloaded from
> 
> https://launchpad.net/mailman/2.1/
> https://ftp.gnu.org/gnu/mailman/
> https://sourceforge.net/projects/mailman/

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
