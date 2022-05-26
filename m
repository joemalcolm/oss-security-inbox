Received: (qmail 5200 invoked by uid 550); 26 May 2022 10:07:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7291 invoked from network); 26 May 2022 08:47:10 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DqSzL1S3ReJ+MmPVkFuqx+pVLWuqX2vFo3Ua7YHFRFfdI5Q8eM6X1xJTcyFOrRyOG+UrZQFlHCeed19gAaBJXf/KM5tgH54OJ+iogB5NdT3Jl7s3ZCCCj7Ez5LBQIJ0ThocsfDRSIGsDlYho9Kfwa+/fPFCQdcOF4ltDYL4A9mWcMnqqy53f4iBgE7youCrmf15Vb90xnnwX/bHGwgM+Yj0TJ4etOY1cNvuD7qovrKOg4HmAnfDLjOJx67y4De1VnbiRcwjJ9IoYGldlmGoP/NIhHL9abD44wVYA2HZ2JKEMitay+/jN2dm1D8cGncZe5s1hCdgV0nmtOZzMbEoocA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzH1X2nJgwuCAxrBbMIUkZTUWOZhCu2E8oROQYcvflw=;
 b=DEOMlu9ifeOKitHiCacdNMAuQi/C+KOpuICp918ansCDglbJG1ZPk3wnzgUaSCDqjDgb+lwC8v7gb7zN91O8h2XQhUbt2SllDXVuExe8clbHt5I2pO/GnlsR2MNB0A28ZucaRHzfDZ4d3m5kvxCFFs2x6Zt7xT4VMH+D8GpHLQg3sLsawEJOSzweiWkbAU0tIBKTqtRhk6PTg0ODfMf1YF7XBIiDsHJzfSmVLGqB3V9w10X1P9SI+lKSdeGpwptXddDRmaBntxDup3WSYEmkNIfqfazxCOUTOknXF3MdzOXpMVGVSDBnYnzB4htem+y3UW17Keo3uSWdsTJ2pAoBUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GzH1X2nJgwuCAxrBbMIUkZTUWOZhCu2E8oROQYcvflw=;
 b=ZvY3JJrOUkTB0hduQu4Cf1HbNsCBBlTthN4+J1d8TiXVzEV/NACDKtFcJlLjDyGJtLRrr0zB7yAPZXJDkBTpGs/NJ/7X0XsTgA7bOmEWlG9BG8ey7KFE1Ip1cGTzbqPWMa/djt5Y1TAl6hKgQ+oXx/iW1p2ZTHtYxtCDTuImcZ+8dE35zda4zPj32vktgQ5atKv8jwpNblSjUPQGrFi1AHbJ7N1OBqz+YqRwHl/GelYcVlVmEnKE8MqAArC9llLoAdYh9cqkV/zVYsGiK4m1xHWrj1TBLPjzbNIJtIVAgOZrlCxWHcCwk3VgxpjNpin1vMS9nFg9iw7I9kMdPmI/yg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
Message-ID: <970c7f80-293e-2fa2-69de-20553b314871@tuxera.com>
Date: Thu, 26 May 2022 11:46:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: =?UTF-8?Q?Jean-Pierre_Andr=c3=a9?= <jean-pierre.andre@wanadoo.fr>
From: Jussi Hietanen <jussi.hietanen@tuxera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: HE1PR0102CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:14::35) To AM0PR06MB6097.eurprd06.prod.outlook.com
 (2603:10a6:208:16e::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac89704f-ddb3-46e1-0791-08da3ef44b54
X-MS-TrafficTypeDiagnostic: PR3PR06MB6762:EE_
X-LD-Processed: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84,ExtAddr
X-Microsoft-Antispam-PRVS: 
	<PR3PR06MB6762C489E2F778274120954BF6D99@PR3PR06MB6762.eurprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1SblgYNqKCxTElrILJBj7WK2bXpVDNikMBoRca1g3EKOTEEc9OQIpNiq/VKCjuhbQkuvGxrfWAvAsR2Whn0syGD5Nml05mz/9lwPQuJn9SRmavBPaQhFRbUK/+4lsDKufJ9O0UZi2+mlh0gPlHYa9mrpUNHpCZ+kN4ZCehZ/VBGtXJ3Enx8yf+7dk2UqS2Nfb88jPkKD1gVbjW4AhfgqpxqP/Fo/v6RLzDKuGgcGCTUWRV4WUM4oDl5lFt0zyRJxdWR+EwagpX9nirOZj6WAvZXFuk8Mhj/nwH1RLh+r2mwEJ9brB0NISn27X3N7RCql60yUqOirTos19CTYNk2vSms1xw0298i2Gu4O1QI2kXBXErOeh5As8D5RZOMUOsc6dJsqirLVYZt1lBww5ImC5zgel0kR3QKhUf6W9ZSHbdGqD/hxzW1g9gLuk9/z/rCgGCgTIZ5a/oWkQhQybKYJ90IU26QXS1FId8n0jeOi3Bv3Lg1KLvx8IgHTeE6Kq1xhmNnLIb/oTyv9E5F7MBOG/YRcQ3mX5eT/X18N4zRm2p/6DLp4PKgm5nVpU12xUIc6lqZ/bQaD1oQN7g3ZAnHIVxkDnHL87rwwkerUhW9mjGt1+0Ctm/xOPsFXZsYFbso353CXYflJj8DtsmGS5KMUybHDgdLekMroj6llhdZ1tzQZEgc56hwBECbsIs/aFLXSKAR0HghuUYLCWpA90WQyfjRn8ILFUumaLn86u6ifRB6wKgYuh9KrW4eDh4XXbjGdeQKkijD0pTapCz4P73bQYVmEBROdi/HI3oTnX+mVhzF2bLK7DvEjplAKM4Fy5UiLrZdLXDzGb4HYQA3VshhzBw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB6097.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(376002)(396003)(366004)(39840400004)(2906002)(5660300002)(316002)(508600001)(15650500001)(6916009)(31696002)(8936002)(86362001)(44832011)(38100700002)(6486002)(966005)(26005)(2616005)(31686004)(41300700001)(4326008)(6512007)(66946007)(36756003)(186003)(66476007)(83380400001)(66556008)(6506007)(8676002)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RDFucHFwdnc5dWd4eTYrWXN1UEx0TXNseGYvMGswOHgzUVJRVzVpVXRHbmE4?=
 =?utf-8?B?alhJTEwxOTJ4R2pMRU1WZEVYTmhleWpkV25JL043MXZWZWgzUCtSTERaYnBh?=
 =?utf-8?B?UEZrMlA2Rys1NTczVUdUZzJscjlIMkJ2RFU1dktDSFpQYUNGWmJIUjhMaUJ1?=
 =?utf-8?B?c2U5UmdrVkxUQmRoVkx5L0p2c2ljcEpGUjBQZi9BZXNxenVQVFppNHJpOWpt?=
 =?utf-8?B?M3FaSjlDZHcxc2U3YjVlOHptK0Jhdmp5UWlVTG0rTld0UkZQblZNN0JSRGYw?=
 =?utf-8?B?V1h4aGJhWFI5TFhOY01mWUdJakg5WkhpZFcyMEpDcHVtQWVXMmNEeVVQUVZ0?=
 =?utf-8?B?VU1ZaWVCbDluQWluZGNyVno1T2xFVnY5TG1xSC9IT2dkbEt0by9PakorNXpF?=
 =?utf-8?B?QXVZVnBldHFDQi80WmdEOHJ5cGV3d2dVMWdPaVkzc1B2QTkrT25abnBkOW5Y?=
 =?utf-8?B?WFBYeWFXVUxBU0N4OTZBVUtyMDlSUEduODhLT1BRR3B6Lzd2V3J5d2FLUEtP?=
 =?utf-8?B?Y0h6V2dsVFBQdCtLdXphaGwvMDJ4aXJ4Z25FKytGY3pvaTBEUlN5RWpJMmtp?=
 =?utf-8?B?dTBBbDlkeVFiYVd1aG5aaUl0bE4ySXBEZWRmbU4rSktYMFhsMzNONVhQa0Zj?=
 =?utf-8?B?Vy9IZlJnd1F2RldoM2U5SXQ2SG5pWVpWekN6S3kzTjRVb0RQWENZWndxaXV5?=
 =?utf-8?B?bHNWRDQxbERZeXhocERaRGlsTjBjMzI4V01DeCtUdWM5c1EzL2FyNUxaK0JB?=
 =?utf-8?B?ZHoyYVBYd1lyZk5zdHE2R2V3N1VCQ0phYVpadTRrTVBuYnFXa1NBaHlNa1Fs?=
 =?utf-8?B?d2pVVWR3NFpuSFFUcG1vYVlxQ0NYcWV0QUlzRXdGMDNkOWxGL0xQbVlSSWZN?=
 =?utf-8?B?WWY5QkU4WmpITncwWTdvOXpYdzhuTXdDZklPNnZVeXYwSThvTkhBR0trM3N4?=
 =?utf-8?B?em5VcEp0c01XNEsyYUhLdzFuam5qUGQ3Wk8vVGpBdXNDVVp4MUhremhiLzBn?=
 =?utf-8?B?bmZuTkVMZ3NQQ3NWWkdqQldTa3padXpjM25ydm10am9obEYvdjBOY0s0TTIw?=
 =?utf-8?B?emYybkxGYWRYTjFBSTAvazNBSXpiZ0hzemhmKzNQdDFUU2RoQXdMRSs0azN5?=
 =?utf-8?B?cHdzQnlDNHVZdWRMR1hNQTNyVkxZYWNLZEdieWJ3RU9KaVZFaVlObVFxNU52?=
 =?utf-8?B?aHlRYzlLWVVDV3lSNWhzNHpJVkRydWk3Z3dWSWRpUGZveWhrOGdEYmtQempt?=
 =?utf-8?B?SWwwYTRRL04wb3hrS3JURUpwdjZZOWZZNGJMTTNXNENuZ05YZzZycDg2dlJW?=
 =?utf-8?B?UEIvQzZEa1FRYURhcmRNTEtHV1BmSU03a2Z3OW5MZ3ZLcTc5d01vcTQxdXZM?=
 =?utf-8?B?VW0zNDV3SFc3VGduN1VUM1ZXVVR3THZxUE1MbGZlQzRSRU9aODYxZnV1KzE1?=
 =?utf-8?B?YTJNUlFKT0NrNEZBcy9iUXMyWldZeDVkRWpWOU5oSzlYT05DSHo4bytiTDB4?=
 =?utf-8?B?d1ZFSlkyYjNJelBYNFczbHQ3cnJnc2NIaS9QeDdRZGNlSmxBOFB0ZGFYSHlK?=
 =?utf-8?B?YzhzZGRBNUlmNnpPd09xd2NJdC9ENDdJcUZyT09YNzFvZkdpeWpyM2tZOFRR?=
 =?utf-8?B?Vjh6ZWRFOTAxRDgzdGljdmVzc2ZGaUwwdGxlNVE1UmNwQXQ2RUJJR2lVaTVs?=
 =?utf-8?B?RzhrSGRCS1ByYXNXNkNDQTJQMDgyWExZcDJ3Y1dUUkR1QjJRL2JVMDFuUWtI?=
 =?utf-8?B?VlI3elBMMzkwNVg1Nk5SelNvalF0NnZPMXRSQWhnQkY0SWNXbGlkVHg3eW1z?=
 =?utf-8?B?NGRzZmtnR0Q3UjRJNERPL2IwNlRuem0rZnFqTTlzMFhRK1VydkxvRm92aWVt?=
 =?utf-8?B?ZzJkcEhjbjg2THpzblVuaEl4bW15ZmxtR2JTSVBxeVpKQmZxVFpKc2QvZnZx?=
 =?utf-8?B?WUQ0dzJTbEN6cWt0SXFJYzlUdkVpcHJwSWZ5SnA5SGJsYUJGZnF4dGlrdWZB?=
 =?utf-8?B?WmpoOTRxZTdZSStsbFJsUEdZOEFEeHQrSWJ6VXE0VmtmdHNvRjZVOUFsaW1W?=
 =?utf-8?B?WEVYYVlrQTFIR01zek52aWk0WVdFSDFpWTEyR2lmT3ZVZjZFWUp0eTU4cUlj?=
 =?utf-8?B?Q0tJWU5NM3NpQ295N0FZWEk0emhTMWFCaGRpUWQzU3NWVEpxM0NYckxyNUd0?=
 =?utf-8?B?MHo5UnpZTnVac1liSS83VGdaV1hvOGdpaEZ1b3dnR2Y3anp2eEptWGZVMk1t?=
 =?utf-8?B?VzRTd3AzTGN4L0thWHk1MmR2YW9ONFNTTkFGazRNZlloRmppdjd3dTRhSnNU?=
 =?utf-8?B?VW85Z3UvS2lJMzA1ZTg4R1BtZWVpalU2Zi8zcEthTnVNa1lIdHY4QkdvRGlE?=
 =?utf-8?Q?1SAftnA7F5rsNlrA=3D?=
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac89704f-ddb3-46e1-0791-08da3ef44b54
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB6097.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2022 08:46:58.4180
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: itUv1mdmvHRgnHUBOBgo9knw62UMPNVs2Og9ld825hJtbqIdXGpUS7mYqrSmiqeudQyNJ0XVBfhA9Awlcojm8w1qGM6Gu7srYFTFSHzAuZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB6762
Subject: [oss-security] OPEN SOURCE NTFS-3G SECURITY ADVISORY NTFS3G-SA-2022-0001

Security vulnerabilities were identified in the open source NTFS-3G and 
NTFSPROGS software. These vulnerabilities were confirmed and resolved. 
To our knowledge, these vulnerabilities have not been exploited.

These vulnerabilities may allow an attacker using a maliciously crafted 
NTFS-formatted image file or external storage to potentially execute 
arbitrary privileged code, if the attacker has either local access and 
the ntfs-3g binary is setuid root, or if the attacker has physical 
access to an external port to a computer which is configured to run the 
ntfs-3g binary or one of the ntfsprogs tools when the external storage 
is plugged into the computer. These vulnerabilities result from 
incorrect validation of some of the NTFS metadata that could potentially 
cause buffer overflows, which could be exploited by an attacker. Common 
ways for attackers to gain physical access to a machine is through 
social engineering or an evil maid attack on an unattended computer.

We recommend installing and applying the update with the security fixes, 
and advise to follow security guidance and frameworks such as NIST for 
assessing and improving an organization’s abilities to prevent, detect, 
and respond to security threats and cyber attacks.

AFFECTED PRODUCTS: All previous versions of open source NTFS-3G and 
NTFSPROGS.

WORKAROUND: None

SOLUTION: Upgrade to 2022.5.17

PROJECT URL: https://github.com/tuxera/ntfs-3g

ADVISORY ID: NTFS3G-SA-2022-0001

ISSUE DATE: 2022-05-26

SEVERITY: Moderate

CVEs: CVE-2021-46790, CVE-2022-30784, CVE-2022-30786, CVE-2022-30788, 
CVE-2022-30789

CVSS SCORE: 5.0-6.7
