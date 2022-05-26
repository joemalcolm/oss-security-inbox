Received: (qmail 5494 invoked by uid 550); 26 May 2022 10:07:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8139 invoked from network); 26 May 2022 08:48:45 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFjeoFlua7UR9+uBgkN/QECFgic78kWV7HdzuhYunhywSKcWEovNtgR1SCXH+DBZYXYSkaEtpXzcp+OhNsmTrLoQxRSr3zD+4CHHqhy21yE4FJeJrWsvZz8hn++LhH7pWfgj7iBXlCCKooId+R+LY52JR60DOeWsdqx8eJjyclQ5BSNyr+mcPdTQVqbtM7dK7DtKotVt9Q+uMyHNBpDXRNHA3V5veqLDfrr5GGHwOEmEDXM1ETdya7TIVS19WeFjhnajCIiPoA4ie9suqvOQfdKN+niLX+c7DXm2Xp9Pt8RV7H2dkKEA3xKINYCLm8NmL4Qs2MzWvwnBB2HFsUAwuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRc57wx7Uu8ZI7sL7XUTRexXXXRG0D8Pjj33wVzU6DY=;
 b=c13Cb68OZOKM6Au1LjssDfMQFtQDxQJVDXL8Qtp786xtr2o8eEcqH1wSHDPcaC7BXtDjxdRJTgju2NpmOHa1vk97c30qbzCgmIePh76y0cmrcY3Rn+uvjTa1vp/HiqC9Ct/Rlge9re6R5diA7fNcrQR0QIx8hXVyEw78aXDZ5Vy3XShIEwK6GzbzBbczSuAJ0c6AepiLEfx96y1cTuIiDiKDRRcIRN8K3G55c+dJz0rA+HKnXYP+ZfZolB/O5mBecpiRKvwsBDRoY5zhbtrf/0U2gYukd/wEcuhM3QDl55DMN67g4lWTTh/2cwXeCcVvUm3SoiqFMmudpULzOQ/5Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuxera.com; dmarc=pass action=none header.from=tuxera.com;
 dkim=pass header.d=tuxera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tuxera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRc57wx7Uu8ZI7sL7XUTRexXXXRG0D8Pjj33wVzU6DY=;
 b=lQShwxncFnhbiRDYairP4UIRIqI4vAvkgY7NmXNYMGdgQcBNWf5M52wnxoK3ZMtqnHdw4vYhdFkueimK3ykgYcTfKYXyGAf6VbXVM2uwJiLm2Oio5Ni0TUb1ZkIINTBPX59TWlyIz60QYBtgt3B0fdXTKv9JtX9uziYujHDxke1C3ieBvJgOs9Wrhs7Nc9N/UFL89eWyglAgknMMfOMMcc9LA7oG2FLPd87PFwV9p9oR7vvF0zSlRQFXm7pprL3jH6Z2wCTGdi67wKtniFSoixjIyknbHMnGZY6d+Pfdr1/qu79ym7GO10Rv6e97KV751Zbdc3pR+B+uV0i5xUW4MQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuxera.com;
Message-ID: <18eb75a2-51f3-6e22-af4d-6b85e02ed6b7@tuxera.com>
Date: Thu, 26 May 2022 11:48:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: Roman Fiedler <roman.fiedler.at@gmail.com>,
 =?UTF-8?Q?Jean-Pierre_Andr=c3=a9?= <jean-pierre.andre@wanadoo.fr>
From: Jussi Hietanen <jussi.hietanen@tuxera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: HE1PR0102CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:14::41) To AM0PR06MB6097.eurprd06.prod.outlook.com
 (2603:10a6:208:16e::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21622104-7426-4afa-41c8-08da3ef483f5
X-MS-TrafficTypeDiagnostic: PR3PR06MB6762:EE_
X-LD-Processed: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84,ExtAddr
X-Microsoft-Antispam-PRVS: 
	<PR3PR06MB67623A8CBFD9F1203C99A5BFF6D99@PR3PR06MB6762.eurprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yIkaF+DYanXntiDH3p1jjeLikeDAUlS4ArjFcyhHz4qki/Gsb0qYChJ6uXw39C3rowBCpctOpBtBECOabwOzi52TmWrTvqRE52mHoSsHwYxB4mroVXExF+cVtQetotfZG4MZfY9CuWB9MTH8+pSE19zcUIJZZ7XCzCt74rqtFXu/5kPtpEitYoCEr8f6DMdf9g8IdVWUezHne9K51XueM32OTHky6nWXIHbzXjXZGj58mWsL+5K+mpoeEN+03L+oGU7a0IrSiw4HqEOYZ4a4DNMflJqlhxB55y3IljRINBZCqldnBA4QbBe6N19QfWQdmOEtzDX9eRW29u03cEQr5R0qr2Pw9gRmGcORmpKwZv+S7gAYwMrLVSCckBew+m7BJViE3g9IEGoj47aUnXcF7q/dMRmb8qXL7hpEx/wlUpAPEMNGRGR83bh5BtRRkXb0LoCAsKkmKbJFWkAGYNLZ2Q8d0hLe80VFwBjy+kRAM5a/gWQx+ES30JEhHMy46f4kWcxzx4fa0o2a0mkeWr7DBlBf4ZZVDB5yrFwlshp5jW5e4RI99tQUIeloPjrIzKQWi1ubMOk5PAUbjEr8De9Qn+yV6rvco25+QwtknLMwGvt/4yvLKDyVrzRo0dEZW6aJW7jxQJg7KMQxBU+ZArpn70sQ/TRvC+x7934aaXZoyUVYctK48BA8hrK+cla9LSXmZIXmYXvh/9tdNEtie7KXBgXUTGz7tMtgW0oA2SmMA3Bhp+c8zenGxCPXJN4OimiWpadPHx5NGXsqXsgwlw9oiRmYcBXjeBLidTzjuBSQAcXm1RMFXoUdKc6g+cbRfZLqEci986PkvLz9HI2aEpAK7A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB6097.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(376002)(396003)(366004)(39840400004)(2906002)(5660300002)(316002)(508600001)(15650500001)(54906003)(6916009)(31696002)(8936002)(86362001)(44832011)(38100700002)(6486002)(966005)(26005)(2616005)(31686004)(41300700001)(4326008)(6512007)(66946007)(36756003)(186003)(66476007)(83380400001)(66556008)(6506007)(8676002)(32563001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MFlLTStYVm9FOVNnbGJKa2FHVFY1ZlpHTTRLeHN4Y1dHYVdVVVZMMlZTQ3VE?=
 =?utf-8?B?cGxyV3BXRS81WDEvai9sQjFwekMvbVVBMGVBUUlVTEtlMTNtbENxaTBGMGNh?=
 =?utf-8?B?VGNxVVUxUHk4blpJZGhSL1hTVGx5SHlCbFE3eWJaNkR6ejNUbDdSQkNFUFdX?=
 =?utf-8?B?SHdYQXBSVW9oWjdRRHVZMm5BWmNPOTZZdUI4a0tKeWNleXYvbTFxS1Z2NVNC?=
 =?utf-8?B?NGd1bHdSV1JXekJvK1V4TzRCWDhJZ0dCNFN0MGpNQ2wvQW9NSWxjL3M1eUVL?=
 =?utf-8?B?L2JjRHdGeFBleXdxdjVqbVVhUW5tQ1E5RG10bU94b3E0eVlGSk9Ld0RmOUFC?=
 =?utf-8?B?RzJwK3l0SktkQTBFdTI5V1dxSHpGN0tUdGYxQnY5Z2F4c1p1Qi9LT1M0alND?=
 =?utf-8?B?Rm9PaXNEaHFkdTJrS1drcEdqbGUvK1FLN2JRZE1nVktmKzJ5K2pSUjJ6dVhP?=
 =?utf-8?B?eG5RN2FyWHd5cy9uZktUTmlFMEt3bHpFTFdTU1JMT1FDT0g0UDVhR3k2YWlD?=
 =?utf-8?B?NC9yNmJlTVQ3SVZNanNwQjdEaC9qL29xREtLUy9EZUdwL2NJWWNKRit3OGdr?=
 =?utf-8?B?WjB6UU5IdmpreHBsZEZOWlNDaW5ESnoxNWtvUEQ1eVM4R0NPYXcvdGZHUXpo?=
 =?utf-8?B?YTM1dVFNaHFMVFdMMDIvVDF2RXpnMkNiZ2tyNjk4K00xeW5nSndaUkdwajNy?=
 =?utf-8?B?UHNONVRndzVDdHhKcXplekRteE8xV0NEWElBZUNaZXBZeUtFdFhTM1pKVnJ5?=
 =?utf-8?B?dm5qbWhGRVBjQThhZlZsRjFkRFhJaUJNZzUxRXFIMmZITU00UkZlZXM2ZkJP?=
 =?utf-8?B?c2NEaEUwZ3ordnlMYzRDL2ZYdGxtbFdzbVhPZ3RPdXp6OGxiWWEzcXdIcEVl?=
 =?utf-8?B?bWw0eGxkRjczbVQ0TjMwS2U4N2FTckw5a3hnUG1Ic2dZUzVPQXhMVXBUT2Vm?=
 =?utf-8?B?Z0tlRE9YRTVNZHJtcTY1aWVXVFBmODRYUThIaE9wbXJHd3dlZ1FDYzMwR2J3?=
 =?utf-8?B?RVRydC9SU042UER0eExEMnhZZlRiS1U3d2pndkxBeGZvU3NHSHF2WjBUU01U?=
 =?utf-8?B?WnFEakk4YWxYVk5oWWhHTEh1OUdKcnZkNU8vVjdFY3QxVjltT0RYMHBqd3F1?=
 =?utf-8?B?ZXY2amMzYWdjNmNkbnJkVXJBbFNQWFJQRmszOENWcUJkZHFYMUdRY1pGNXhV?=
 =?utf-8?B?UjVVRERISVIzTkhZRlBVRXpsL2w1QjZYbmVhbnFCSmxvMEVyWDFranJET2t6?=
 =?utf-8?B?TDlSSWJabWZ3OXlleStNOWJtN3Y1bWsydXBxSk5hcncxcndGS0VRTE9ESGpr?=
 =?utf-8?B?NTdDSnlZS2hJRFc3ak9EaEh2TDRETlZ0cFhDbTVhaHRxMW1sSEVVcUpOLytC?=
 =?utf-8?B?QWdCSzlTVkJmb1J5OXhOY2ZBbllwaWVwbWUrYXVBZ3NuZHZ3WXlCb2dkM2Jj?=
 =?utf-8?B?dDhGL3pwYzlXRTV5blA5VmxMaFNIREhGSkpXVlZkQVlwZHZ6Nzc4NXF0aDJw?=
 =?utf-8?B?UVVXRWhiMVR5WXdCZGR2cW1XL3FGRUlmaVpNRitmTXpZaVpzdXpFQXdqYkF2?=
 =?utf-8?B?N2pKc3FXZGdpajFDK2JGOTNHa2JSZ3ZrYmpwck4wNmUwUHNwYk1qRUpNNnRQ?=
 =?utf-8?B?NnZLaWNGSERlbmNMK005d2k2a0JTNkFpMUlyQzV1cFpnOWI4akl6bGxRWVBO?=
 =?utf-8?B?QW5uZTVCODFJOEJqQzQ4YjZFOTZrQWRmWHU1b3NIOEhzN0Y4U2hzKzVBUktW?=
 =?utf-8?B?TUh6K1RTQTI1aSt6eTFUc21ob3lRMkc4eHBTMUgzWTZQYjVsSTJRWi9adVlQ?=
 =?utf-8?B?UnJwWXFmclhneEllRTNINDVJMUhHS2htVnVPV0hYbTJSMjhKQ0VNQlNacGNM?=
 =?utf-8?B?d1JIWmN5dlAxZE5TYmtjVTU2R1UvaWRwM0QvTDE3ZUFab3k2d1VQbDFWZmxh?=
 =?utf-8?B?S0pOVEZ4UjJoTFM0SHNaRUZBSXRUQkJpU3VtRVpLZjBGbjNoSC9QMC9IZFJa?=
 =?utf-8?B?ZnJiM0ZRamZ6TVpwVVJheGVpRlVTYVUxTG9RcWRsd1JoQVFzM3JSUkxSMDBP?=
 =?utf-8?B?KzRoRkxjTWhBYy9HVkMzVWFJVFFKak9KS0Fybk11QTBnRUEzVTFIV1ZMMDBM?=
 =?utf-8?B?dVl6dUJ5NUpibk5XN0kxdHdLK1N4VnZYaHRZODRIZS8vT0Z1QndFbHJ0dWtv?=
 =?utf-8?B?MnBkNUVmQXQySnI0RkRSTGZvSWNnRFlwZlkwb3pyOUZ1a0k1MkN5S2J4VDlY?=
 =?utf-8?B?VzlXK0Exb0hyRm1BWmRUYlAyMW4xQzRiaTIyclF3aERHWmpjNitKbU85SW4z?=
 =?utf-8?B?eERkT0x3SUFTanpPMk1uSk1kYU5TbFB6QzhOMlBHWFFpZGdlMnhvU0QzQzlQ?=
 =?utf-8?Q?CvwyOFCIJxs2H5tQ=3D?=
X-OriginatorOrg: tuxera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21622104-7426-4afa-41c8-08da3ef483f5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB6097.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2022 08:48:33.4114
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e7fd1de3-6111-47e9-bf5d-4c1ca2ed0b84
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C8+YqYws0Ok9/5fzurJf3AJFjhX4z4hZ6MQJVQWexRmeLuVzrENSU3Mw59hyf0o/U1AAz6/6VcIf7xKOG48LlAWloZJrhOhlzanuMDRAxVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB6762
Subject: [oss-security] OPEN SOURCE NTFS-3G SECURITY ADVISORY NTFS3G-SA-2022-0002

Security vulnerabilities were identified in the open source NTFS-3G 
built with internal libfuse (known as libfuse-lite) or libfuse2. These 
vulnerabilities were confirmed and resolved. A proof-of-concept exploit 
against a specific NTFS-3G build exists.

These vulnerabilities allow an attacker to execute arbitrary privileged 
code, if the attacker has local access and the ntfs-3g binary is setuid 
root.

We recommend installing and applying the update with the security fixes, 
and advise to follow security guidance and frameworks such as NIST for 
assessing and improving an organization’s abilities to prevent, detect, 
and respond to security threats and cyber attacks.

AFFECTED PRODUCTS: All previous versions of open source NTFS-3G compiled 
with internal libfuse (known as libfuse-lite) or libfuse2.

WORKAROUND: None

SOLUTION: Upgrade to 2022.5.17

PROJECT URL: https://github.com/tuxera/ntfs-3g

ADVISORY ID: NTFS3G-SA-2022-0002

ISSUE DATE: 2022-05-26

SEVERITY: High

CVEs: CVE-2022-30783, CVE-2022-30785, CVE-2022-30787

CVSS SCORE: 7.5

ACKNOWLEDGMENT: Thanks to Roman Fiedler for reporting the 
vulnerabilities and supplying a PoC.
