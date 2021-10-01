X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2174" "Thursday" "30" "September" "2021" "19:39:07" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "47" "[oss-security] 3 new CVE's in vim" nil nil nil "9" nil nil (number mark "U       alan.coopers Sep 30   47/2174  " thread-indent "\"[oss-security] 3 new CVE's in vim\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] 3 new CVE's in vim" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32496 invoked by uid 550); 1 Oct 2021 02:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32454 invoked from network); 1 Oct 2021 02:39:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=to : from : subject :
 message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2021-07-09;
 bh=TdLq56KVYDKs/ESIQUDtznZtsVjab+oBzBa7XQ8N4Kk=;
 b=P89Uv4uD8GIN6k2Lld28FJmlBxXUptDRvmBKXxrjD5bXcbimVbULvHIM2FrtulpZyNp2
 kqUEC1AhDT1rAnnhwEGNWHAMOo27XVCVe1Jw9qb2nnSRfJ6rYIiBRPipwG3yVK839hFZ
 DEm3JSsUrofzNqw+rWGmUfcMD+KyM37cmXtBFxD2fyjUuFMXTZfw75Coww2yAgxMT5lp
 p1DB+1jyUtOs6nQklhLH4GSFTJbIkMjlu3VTMKxWUHykr1/BJFR4ObBuS9ntVRxpaCvA
 3QOY84WrDHt3GLSTqXSEwEoeVaZLuvEt4VUL7iGtRG9FR3o9JwzYrA5mH5ueXH2xEm7M ZQ== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hW1qnLWsIKMvmrca09UiehgJTrtHzAWOLy6DL/Lb+pyp6GYNKOZnJGSml4s2AFLYz1BX2hkyXXQtgX2oxLwOZ3B1YlU3mIOjmTSM7/0FhVbBlNXYL2MfySaffeKr5JDIrQRZ64mSdw3sArxFXUkF5RdUN6yXD3klXZrJp1t2wJJBPdVaBjKeef6xDoVoFj6qPB6MRH+2kMV6LbpJe+UBtWC3I8zBjNO9cRXzfDc0PdY85gUld+gJaH2T9NYhITgNlFe1Sxmo0srXUrAxR7TghhVmaMqYjx5eN/e3zGbdD2/kn2jHG08O2LbM3BLzKPUEEvDVPSmmheeqBi4pux3IuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdLq56KVYDKs/ESIQUDtznZtsVjab+oBzBa7XQ8N4Kk=;
 b=eObYxQsdxDqr35kVMKRv+y5ZsQqKxGAUnsJsFvBH+DId/KSr711oMnoBxUUSw7nBTnZ1XniZd6u58uKov1viVYdI6ZSxAwG7GzW9eyU2mjFFQ5AGshb08DYguWOcn4de7rz9BLRyZLhEyUXLTzRs8/kvCAs4obYIfU99RXzfFVSWvBAeM+XhOdYqOrusGsKUw1pmDZAPYzZlBYTnT2OlynEI5AP3P1T1GKwt5e8+AkW4J6MIJYgi5XqiNNQZvoeYyUWyS1wjuQR6iI8G2Q6GmobSlhLe+00VWfWWPBKVn8ZNLJ6m4+xHTaDroa/KzFM/uEMMQmB0YESYk5UikUavlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TdLq56KVYDKs/ESIQUDtznZtsVjab+oBzBa7XQ8N4Kk=;
 b=hKbOSUF25xzoqXhwMi0BQN+uq2+kZw+CvSa1UPEGj76VMT+Q0Awe1RZYZP7GxBq49zE9belUzbELRgouTs8hizv6GRpcStksZpu9R3E0Zns4Dug5w3HDjX5ByojsnT94RAwgc9uk4D1G9tJ8/C0FLLOeyC0kNkh236srW56RJ7M=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=oracle.com;
To: oss-security@lists.openwall.com
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Message-ID: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com>
Date: Thu, 30 Sep 2021 19:39:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN7PR04CA0202.namprd04.prod.outlook.com
 (2603:10b6:806:126::27) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76703e7f-447e-4a63-e529-08d98484a57b
X-MS-TrafficTypeDiagnostic: BYAPR10MB3221:
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB3221A7D01B3B2F67C6A670F0E0AB9@BYAPR10MB3221.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:121;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cTmfaj1mIyYmrsJ19GnIBqJSl7hexICuCscy6BEWP70LK1VVQXYvI/nza9IMnJkd9kO8Cng87Tb5dXqBBiB+Q05pMPsSdzrvoq98smTKZStte+VSXWffs0ABSCJQqBqTnoYysStYA6kKflZtuge7W5H2exoTtcqhNp7W3j0y2/1r+pkGM/HSPKilNYP8Q5Sek8TDLIpk0kh29OsI9BdtJ1bUzbcjaP4yiCg8fLNPjzEWJg9hlt3P9eIyPJ4mbTeeAWxKLfPPZ1qJyBClk4ie0M13evGD06ymTW3fCyNTW+Uu3TSI1UlXlIfhm/sxA8eRezGuM3hCVZc/QR0tLTngrqeONZq4Q6FaoHjvszPBnU5fmVj3AlyG/DoWtXeEP4TrG5suYqO8T7kmJQ8OetaruAiI+Pwa9v1qaE8C807whb9eFt5aDvgKlmkBJz++VZ19NjId9nIf1jfR4XGsq3+Dls/ywFUDW+QeUCpJpvUXXUHBFSWlAP0siA8mx+N2ovjn3+62fjBtKPw4XDUmVHZn3qGRbZ80akMerRoc7EOIOGiMScnU8WD0k/OGWUZcb0PZeqGckO+ly13vniF8TNMJuxqu45e0+JzemU7IIim0rTK2zW5rl3kD2LRRMqNHyU9rVJ+5EgnyQ4fGQVgYWuxos3MjPSdaUIxZ3VKaRXtejwFwqytO7DkrewvP76UYh9bQtVfE5rtcfx7JttWsv7wUOhOHCxiy97DZFvMILvNC9C2lZroWxjVKwAEPAWSomlrXd0mCTGpKNXhqar/Vt/CDCumapZCiSf1+Et9KKIZ0W1aJdxGPrNO4ccNCE16NEbVHr6BN69BNpqPXz1WM2DD42oTojP+Gb1gw4mTw5MRYAQhukzf/IteGFgegGlFRlRAl
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6916009)(66476007)(6486002)(316002)(31686004)(2906002)(86362001)(8936002)(66946007)(2616005)(8676002)(966005)(44832011)(36756003)(83380400001)(66556008)(186003)(508600001)(38100700002)(5660300002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d3pKb0lCeGhCaHpUcmU2MWU0UEdKVkY2ZHN0ZVQzUFUzeTB5R0VHbm5EeEts?=
 =?utf-8?B?R0s5eXRUTEczaTJ4bUVlSSszMmQxdUx5T00wNnpLbysxbEtkbUxJc2F1R3pJ?=
 =?utf-8?B?dUczQjdSREk2Z3lueDhVRStGYW1qZDlhcEVVRkFnODZkVmNNUk9TUStFOHpm?=
 =?utf-8?B?UHpWYmZ3bVU0Vk1QMElaT1ZpSm4zaWtyalU3Nm5uVGNEajlXVXlnNzhtdk1Y?=
 =?utf-8?B?cWFhTU5wS1ZyWTRIZGFBUDloN1JNbjF1UW1mSGlWYTRRakN0M1dZUUhUUjJV?=
 =?utf-8?B?M1MzQ1R4RzdKMmQvcU1KTzVWMzVTSmtoamNUNDViTXVXU1JzZkNJS2R1SWEz?=
 =?utf-8?B?MDB1eHJMZjJSeXdXcFdqcWd3RCtYaWVUQ1BPOFdnM01vRS9xcnpWRUt5WTZ2?=
 =?utf-8?B?ZTlMUzl3eUJ4dVRGNkFpV0VmUEM4UXYyeUNxRmxsaEwvMUJqUTJFc1AxYmxa?=
 =?utf-8?B?d0hheFQrK3lBL0hkZGIrVHh3bHVaTGJOWFFkVDdxSTZZUC8zbVNjNlBOOEJZ?=
 =?utf-8?B?U1BlTFRpLzFmSXdndXk0QldjWjFJQkNLVUQrREFORkVEd2NnaW1oay8yaDJL?=
 =?utf-8?B?ZDYyWUFtUTRHQmdtRXY5dU9WU3ErcUFWZG9DYXJIR2FwVk94dkVvTlhNV2xh?=
 =?utf-8?B?aGt2bVZ1elBudXRXL0dQNmI0STArZlFjazlJQ3hUdjhISTgyZndjbW5vOWVB?=
 =?utf-8?B?azVId1p0aE1BdFhyejVRM25scmd4WGt3R3dNRXRhNjJNNElQZWJvU3N2NWVW?=
 =?utf-8?B?SHRGVG5pNkVEZDFPbEpaZlJoRzk3QlFDcmFIRUNFdGgvcnIzV2FhSUQ5ZDJi?=
 =?utf-8?B?aSs2bG9zTithbUZlZnhLNytIQ3hWR3p5R3ZVQXl3c2I3QnMxcGVuMCtjZ0JC?=
 =?utf-8?B?TS9ydkpHWFdsQmluTFZDeU93RnpTNGZ5Vm9TWnFMckNzVXBKcXpaRzRmQzRi?=
 =?utf-8?B?bnV2K3lzNTVHdVgwcCtaVS9SaEJXWWt5ckxpRGNlZkpEdk1FTGNhTnBEWExr?=
 =?utf-8?B?SnZDSDU2R1NvVVpmcDBVd242eTBCVGRYdGE1WmRkbmdFejQwbXRVZmF0RHRz?=
 =?utf-8?B?Z0d6R1AxRDJVdVVWd0R2QmtvMmF0UGZRdlFPQTJrM1VuSHN5UzJnd1UxVldS?=
 =?utf-8?B?SFlaZkxYYjNVRlhGSHNDRUNLd3EvcXFJOW95SVVlL0ZpTDgySHdWT0FvdVMv?=
 =?utf-8?B?YU5ia0RxVGVORWFxbEZHaWZVVENKWU5WTldFMkZpUC9ZeDhTVzkzTG9RTGZE?=
 =?utf-8?B?TGUyNzdvOUt6VG5EcWJjUDlwOG0vZUM5emFRMjNCZUZ6anMyaXFyLzVLa2lM?=
 =?utf-8?B?WGF0UGp3ZzduOUk2OVNBQjJzYTdYSHJHWWpyTGlDR25uY0Z1Y2ZFNEFoTEJz?=
 =?utf-8?B?WHZPWVpweEYxR1Z5NUdRb28wN1EzR2NwbFliaXROMW1nQ0dSM1pRaUI3ZDFK?=
 =?utf-8?B?M2VjSVVxOXgxWUYvSVgvelRXM09wYXNMam0zdnVUWlZBK24yQ0JhazM1ekZT?=
 =?utf-8?B?THJqTUc2L3F3U1VZWmpjQWx0c3pPR0pKNHQvblpOT3hEMkdzV1Zoc2dWbk84?=
 =?utf-8?B?YlprODBYYTQzNHJnRUFuQ2hIMGw0ckdhOHFsQU9tN1grZFRvY1FnelVlTXZT?=
 =?utf-8?B?R0taYW1QaUdGT3lOcHViUWpnTm1zWFN0dzVlVnQ1dHRyQVVxdGN2S1czZGFi?=
 =?utf-8?B?bXFsOWZ1MFBMVXBkWSsrczlOOS8wQjBSb0FPVTQ1cE9YbXNDbmJNZkxYbEJD?=
 =?utf-8?B?UTZQdVZYWm1rMDhCclNCc0dpdnkxNWZWb2x5a1p1ckljWURZSGtXYUhTbHJp?=
 =?utf-8?Q?bO/aielHnFLQpE9UgKhGiiMhgUYoCZr2wNa0I=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76703e7f-447e-4a63-e529-08d98484a57b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2021 02:39:09.7820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zQajFnSnHnppykyZxG6aPnGSqSY4y/cfYX9AW10C1DnPltK2qs+btgDY9jc0ghjFCjGX0MhN1oetLOAw3m/pEgCuIDjXyZ5JKYK1b/RSYDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3221
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10123 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 mlxscore=0 malwarescore=0 mlxlogscore=912
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110010011
X-Proofpoint-GUID: qzw4QrLiKT1ap-C_SUhyhUJcw3OeJPEe
X-Proofpoint-ORIG-GUID: qzw4QrLiKT1ap-C_SUhyhUJcw3OeJPEe
Subject: [oss-security] 3 new CVE's in vim

I haven't seen these make it to the list yet, but three CVE's were
recently assigned for bugs in vim.  [I personally don't see how
there's a security boundary crossed in normal vim usage here, but
could see issues if someone had configured vim to run with raised
privileges for editing system/application configuration files or
similar.]

     -Alan Coopersmith-               alan.coopersmith@oracle.com
      Oracle Solaris Engineering - https://blogs.oracle.com/alanc

CVE-2021-3770: vim: Heap-based Buffer Overflow in ex_retab()
Report: https://huntr.dev/bounties/016ad2f2-07c1-4d14-a8ce-6eed10729365/
Fix: patch 8.2.3402: invalid memory access when using :retab with large value
https://github.com/vim/vim/commit/b7081e135a16091c93f6f5f7525a5c58fb7ca9f9

When vim 8.1 or 8.2 is built with --with-features=huge --enable-gui=none
and address sanitizer, a heap-buffer overflow occurs when running:

echo "bGMKc2YICnJldDgwMDAwMDAwMDAwMDAwMDAwMDAw" | base64 -d \
   > fuzz448.txt
vim -u NONE -X -Z -e -s -S fuzz448.txt -c :qa!

-----------------------------------------------------------------------
CVE-2021-3778: vim: Heap-based Buffer Overflow in utf_ptr2char()
Report: https://huntr.dev/bounties/d9c17308-2c99-4f9f-a706-f7f72c24c273/
Fix: patch 8.2.3409: reading beyond end of line with invalid utf-8 character
https://github.com/vim/vim/commit/65b605665997fad54ef39a93199e305af2fe4d7f

When vim 8.2 is built with --with-features=huge --enable-gui=none
and address sanitizer, a heap-buffer overflow occurs when running:

echo "Ywp2XTCqCi4KeQpAMA==" | base64 -d > fuzz000.txt
vim -u NONE -X -Z -e -s -S fuzz000.txt -c :qa!

-----------------------------------------------------------------------

CVE-2021-3796: vim: Use After Free in nv_replace()
Report: https://huntr.dev/bounties/ab60b7f3-6fb1-4ac2-a4fa-4d592e08008d/
Fix: patch 8.2.3428: using freed memory when replacing
https://github.com/vim/vim/commit/35a9a00afcb20897d462a766793ff45534810dc3

When vim 8.2 is built with --with-features=huge --enable-gui=none
and address sanitizer, a use-after-free occurs when running:

LC_ALL=C vim -U NONE -X -Z -e -s -S poc -c :qa!

with the poc file provided in the report.
