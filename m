X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1370" "Monday" "4" "October" "2021" "08:48:50" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "25" "Re: [oss-security] 3 new CVE's in vim" nil nil nil "10" nil nil (number mark "U       alan.coopers Oct  4   25/1370  " thread-indent "\"Re: [oss-security] 3 new CVE's in vim\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] 3 new CVE's in vim" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32557 invoked by uid 550); 4 Oct 2021 15:49:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32535 invoked from network); 4 Oct 2021 15:49:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=IUmEsaNRVXqvWmbwXhdbk7B3fK9s+vc2x7bARZtYI60=;
 b=uJ98n85pfqgDeIYjItRYw/kHO3fkxdk8zgARr7rIg+AGuXcby6fNC8wAN4TnAfdQKR3s
 DCyMkCw068TTrlwubzmKhzzRLGCgciXCLWcP9z7DsEGHs+BhR1go8VTN6NMuPHcPKp3E
 hA6HZ9oF4TKWlKEloYYO/FDDKqijTcXAs9y6XmO7onhsSsTdaxgUXfJpK9Pec4Kt0JGW
 33wJ79ORqVx2ljxXWpsvdb/7l8rDBJKZ1Np9jpVZ4p5eCvaElVDT8XgJuTJZVekt28TX
 Igxqtnim+yoSQzy9hguv8D5O2zWCx/Ec7Q1oQcF5b00joHTA9GQvWkfoMN0sarZvz8// sA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl+4G+53ZEOSvRCd06KfsG29NHEYRLekSFrW3noAjQjtbq+U/1X1n+w0qjYjH/XzGMJU9UrahTk3q/+4UGX7yDcjwEVyp0AWqfGWc6uWYKP/fvHQku6EuC/9ATtH/NIawHBmWtUhv59aIMmzKRvU2OLzU9c4Mt2jX/4/bDPqoRLpDUEd7SXPWlCMEBqDEl/qhBRm/dYeDWz1Ht5hNhuIEpR0/cj7NOU2FP3F7pKT6hNBQ8LDsCU4oCV5GdeISoVu8Ho3Ns3+eYLUMlcqSlTuuqXS7Hk0jSyBKzV0hY0IbqXfsBOOjFEtXQ+2YsL4NmQGLb7pzeUtwnQnn2MuHMwevQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUmEsaNRVXqvWmbwXhdbk7B3fK9s+vc2x7bARZtYI60=;
 b=i12aEcEMc4FSz6wYT3DLab8hHbTmxSIwbsucBwOVmClXbnsrzK5Q+S6eqR3VKOrR4qFrMrJXmvMbrdSHmjknK0B5CVioSQIyUqsxExxmlKqUxTcvudMx5LMpG5W7c+iFyP4Rbttvanxwa8RY4aJLjnWzkPtIvyQ5Vclp2sXeYEq2MGVZRkUZvHLbJDrD8NAWLM5F0jZ6iXe/5fJCylOiMIe4AdhzJjqdD1A1s1uW5GE1Q6S4D9rL0xqQPVp1Q3569Qkuec8naFNylsUNBbINiGuWwlqyXITnP+akbgTIXl1RJs5IHH8pExdT04HHsbORPlKvM7S6s9KcbdZXymTmJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IUmEsaNRVXqvWmbwXhdbk7B3fK9s+vc2x7bARZtYI60=;
 b=S6MFIZH8DZpMjTOadBGS6NQ49a4RUmCjoAvafU1+DcASVc0NDNWEYyqHBzGw4+6HZ2rsx/irVMe0ooC3yNufq7ZGg6zhGfYVhvZCJ4ZE7iJcdN5s5Mc5xrp6l0A02dI0Of4YeGkXGOb7EqayA5anfyoJNSnkbQZ1U0s08Ix3XqQ=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
References: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
Date: Mon, 4 Oct 2021 08:48:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0103.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::44) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fceb2fc7-20f1-4a62-a6eb-08d9874e76a6
X-MS-TrafficTypeDiagnostic: BYAPR10MB3464:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB3464C673C43F7431308090A5E0AE9@BYAPR10MB3464.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fpew0dYab9xEJbGxoQi8XFm3xGjZLW5hG1PjnqbS0FXNGyBFPNUTNVSyX5E6EXaf8sVCetbVI6pK7t+D4XvQb/E8NNFA8EofpdXNfBKzCxG5bsbiuitExHmIfHt25tpchnPCpbqmiypsqOGk5d9oMl3QoDv6Xn9wG6lYXGkvtpGLS6ecB5mkAn5PIDFMfLE6wKkQ3QPr5PruTCMBjeAvvC2cyFj3uW2XMmv3AIvJpncEUtfN31xC/VOnFskTlbAXwpLTXNZKJx7g6Km/i0hXPiz0I2surA5JniV8thtnEjmF/XiQdRl69ncq/ueZD5G7GnjamUES4PDNFt3c2nJ2qZXev/Jp/U+TH23Hmo5ZB7+OEbfFzR1nj4s/2ggyeamol7wDBN96du3Z0Lb0xDfbxdJfSkIvKwuarVRLSunWE5LxbSOI34ldAsdtn6dyTLnWSl6oXkVTJV2xjnTZRNn0PNNhTmx1jFcOJ9YVksJ2ltCgdZHgb6om5gfvyiO5sHOBgZGqeNaZEKO74+RythdExyvv+gBB9ejJ12LQlFf4w6qUv0Ns23bIceqPC9BK8G/eCvdvsK+2jhxMhh8hYIcBOoKGA8iM9k8CArDo63NTFOZleuQrkB3CzMa0efaFxOvijEzCw52ReDipZGNkJoaFG5yg/ONbkwY5kLHKkZXmJ75bpsS/oNvCvnpvRPMtrnpxukfk/sv7XEGnM4psmqJNg9eCgBydvr8Ob8d/MbjgV6+g5EishElSsRbv8/tI9r54+Xz4e7tBbWJteHQ6ob1KiuWclxP2eXRMi0R3GO5oYPObZ+IdNCkhlJYt1MXlbkH6pedPQkAzEbGiwSlkXZ/ZaS9ZqL/uq0rdBeM9cgBCb6s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(31696002)(38100700002)(5660300002)(2616005)(956004)(86362001)(8676002)(16576012)(66946007)(26005)(36756003)(66556008)(8936002)(15650500001)(186003)(31686004)(2906002)(6916009)(6486002)(316002)(66476007)(83380400001)(508600001)(53546011)(966005)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V1JrUXpyUXhORk9vRDZYbXcxWmxQeUt5Ui9Za0lwTmwvNzZsanFuN1V6aHVx?=
 =?utf-8?B?T3d4Ukk5WEZYaVB5WUgvbVJFZzNlSHhybE5aRVRaUFg3Z1E1VGxvaFk0MVQr?=
 =?utf-8?B?ZFR2NTkrTXdLYmk1V0FMS0VqUG9LenZNY0tvQlFwemlrS0J3NmV0WUpFbmVn?=
 =?utf-8?B?ZGh4MjI4b1F5c0pFU3V6KzZKUzlxZGsrQUJSTTg4clZNSklOSy9yWDhST09D?=
 =?utf-8?B?YXhKdUxHTVZoa2Z2RDRNQUUrSDQ1OHZTcGdCTllYVHluM0FjYU1PZG5lTFBP?=
 =?utf-8?B?QkE0L2NUS2FCd3FWZW5BWm02dmMzVGY2Tk5KZWx6UXE1ajZROVFUazhkSkVX?=
 =?utf-8?B?OE1TZTVSZ2EwZGxCOHlEQmR5aXQ0L3Zwd2Q0NkZFbmd6L1pkZGZZak1ZMWlp?=
 =?utf-8?B?cjJ6UFBpYWtBdU1nODJEYlVYTm9nQ2VPdUw5aG1NSmtNRGd5Z2JrNHZVWVhV?=
 =?utf-8?B?Z1BaVzUreEl5UnUwZk0yeERwRVVDVElHc1M5NVlzVUJQUStWWlRhSnJnWjlP?=
 =?utf-8?B?WG51b3M0b3IyekNCd1ovQTUxbWlNRCtnMkdySThzQ1lMWTY5VWU2aEhSKys2?=
 =?utf-8?B?Q3htYkpIRm1Eb3RMNitIRUNRV040Sm9zb3hOQ2ZnbDMwMDNieUZNUjVWQkFi?=
 =?utf-8?B?MHcrNmlCYVVTOUtNWkRzZE5WQ09vb2VPbkxEa0JWWUxKOWJuVFVXcURZR2FW?=
 =?utf-8?B?WUNwVDZ2VWZLUnI2RlBRVnBkQzNpUWNuWVZwT1o1Z01GMkgrcXF6KzBvMEZa?=
 =?utf-8?B?QkJDVWRHNFdsNW94UnA2SlVyYkFSOEpDMDBwZjZhNDNYQWZUR2ZMZTh2Mmhr?=
 =?utf-8?B?NWplZTlYWGM1MkhxWTZaRTRMN3l2NDR1WkkwU3E4MENsTXo3cmhXRHIwTW5j?=
 =?utf-8?B?dW9SVmZUWFBJR0tpTnZHL3dhTjNDV3prWEVwL25xOHBQd1A4Qk1ueDJ5bWpI?=
 =?utf-8?B?T3FhVWVzRmFFZ0hlN2hjbkdrTXpzajVtVXBHZnhodnd6ZE55TjhITzVmcjNK?=
 =?utf-8?B?MVc2QkgxVHB3TGs5dlZTaFlQRFZMcGUrNUN3dGVwMUJuTXAxQVVMNXlnMDNI?=
 =?utf-8?B?dWNvanRSbnVnNXl2YkxSVzFDVUQyTXcySDMraXBGRTRXWEFUTlpheEsya3hC?=
 =?utf-8?B?Z3F0cDQrL1JibkRHbTBLOEVFai92dnM4UC9BL3FlSDhEKzJHWFhTOVYzM3hp?=
 =?utf-8?B?TEpDTjlVVTVITGR2aUdPeXdHM2Z5V09SSllPT0M4VmdHc0tWbVZCOG1xUUxs?=
 =?utf-8?B?OTR0U3B5V0txMzF2NFlueU1wQTFXcG9udHExb3ZpeXpKb3lqUFNJMzMrODhM?=
 =?utf-8?B?ellzeHN3dzgwTzR4Z21RUU9JNHZORmMzcVJEY3czSGwrK0hpN1lwUzl1dzc2?=
 =?utf-8?B?UDExVXNOczNZUFBQUWhCSFpld25GTDRsYk1QQWpEVXVhQkdaZllMM3pQbml5?=
 =?utf-8?B?Mmx5cS91L2xtUXluMHVLbVJhWFZPU1lUbjVtclZXWE5xK1k0cENkdHp2Nm5K?=
 =?utf-8?B?VVpmNUx1U01lTDgwd05acmN1OTlPMFU1cERFNjdJdnlheFk1alZldSt2SnB4?=
 =?utf-8?B?VzdyNVo4d2RHdFBPZHJaOGlzTDFNKytEZGR6V0dVZUhWbStwVnZYTlZDK29h?=
 =?utf-8?B?VDR3ZHFMNUJUZG5YdGZIK294MWh5eVNHQWNVS2QwYmpLYXQwcjQyWlpyaFJu?=
 =?utf-8?B?RFU4NmJUZFNaaDBsRHJvNjNpQXJ6SDVQQ1FNcWhBTUFlaEhDWjRtWGVjWCtB?=
 =?utf-8?Q?Y4KyEe/hChkFCEbJ/cYd8uGYPEcD8vm13OZKWqb?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fceb2fc7-20f1-4a62-a6eb-08d9874e76a6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2021 15:48:51.8742
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFWmdkAatLNRBCmGr2MzlM4tx/xxjf0zJS2Dq+koafBaQStrjIx1WWP5fFwushqBIChNtD5Gw1qWwnV2f+O6IMWjqCWpgj/xj/GIUQFZksk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3464
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10127 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110040108
X-Proofpoint-GUID: J5cvKUL4T7LbVT-3T_GplexT0aAPTiNj
X-Proofpoint-ORIG-GUID: J5cvKUL4T7LbVT-3T_GplexT0aAPTiNj
Subject: Re: [oss-security] 3 new CVE's in vim

On 9/30/2021 7:39 PM, Alan Coopersmith wrote:
> I haven't seen these make it to the list yet, but three CVE's were
> recently assigned for bugs in vim.  [I personally don't see how
> there's a security boundary crossed in normal vim usage here, but
> could see issues if someone had configured vim to run with raised
> privileges for editing system/application configuration files or
> similar.]

I do note all three of these were submitted via huntr.dev, which offers
bounties for both reporting & fixing security bugs.  As a maintainer of
an upstream open source project which is struggling with finding people
to fix reported security bugs [1], I do appreciate the additional
incentive to provide fixes here.  But as a maintainer of a distro, I see
a mismatch with the incentives here, as you get bounties for accepting
everything as a security bug and not pushing back, and flooding the
distros with CVE's - even if your distro policy isn't to handle every
CVE that applies, security auditors will often make your users query
about every CVE that they think applies, costing your time to respond.

[1] https://indico.freedesktop.org/event/1/contributions/28/
https://www.youtube.com/watch?v=IU3NeVvDSp0

-- 
       -Alan Coopersmith-               alan.coopersmith@oracle.com
        Oracle Solaris Engineering - https://blogs.oracle.com/alanc
