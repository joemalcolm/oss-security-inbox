X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["893" "Tuesday" "25" "January" "2022" "14:27:02" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "21" "Re: [oss-security] CVE-2022-23944: Apache ShenYu 2.4.1 Improper access control" nil nil nil "1" nil nil (number mark "U       alan.coopers Jan 25   21/893   " thread-indent "\"Re: [oss-security] CVE-2022-23944: Apache ShenYu 2.4.1 Improper access control\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2022-23944: Apache ShenYu 2.4.1 Improper access control" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5655 invoked by uid 550); 25 Jan 2022 22:27:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5637 invoked from network); 25 Jan 2022 22:27:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=0chUdSzjsZ3a+qiKq8iz74dKKgNDuNtKN4F7yCcYVNs=;
 b=rJJp9VJZKLP6HAd4AOjQ8QkvKAaJ0kVgeVXJPcoDI/zty+mxICjNGlzZ6pFSEUeAafu1
 VWudr4fPUql6t39/duZYrP0imnNFNZoXk6ZOU3fgKM4D1oROGW+eoZpJfLfcrZz3coow
 TY6oQsIePDWVNuTwIVQPLTHBbMo54RB2NPRL0nYAQNuQ6onJCb55B0lPXy2JbTGwt8sH
 B3XtSv8A21nMh1gPQkR+kYRAjSflENd3N2uJfwf3hH1TQgE3s0AO3YcPxhnIZF29kY0R
 lCMYozG5KfE0GrIlqwTQU2crMG0hyvS7krTyxHR9R7uuKT1gosjdepd/13BDCI2iaxgW fw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnCROV6y1kwV3mt9f4IHakBYozEYSlJK8RNgbeVvkmIU84f3H03PyNsUQuDyuLqgsiaxCVgidkVUxx2utU/2A397yqeYscuFSfjZRCQm3TO3CQwywnKsIp1HwSGH0gMmhlFmTfLEc2h2RT+q6LM71moOlKSymXMNypzhYClGHYE5mPsw8yF0dvHRmPKUP833vadSTKkERbQVJvb5N9H3yaeXjlmNWt4lOJsNmjQEzcK9M8vUevdCRmpI9ctHuk20EgkhzP2bX1VlnvvGTJEoEhmEbV2d8neHJY7+4rWUDq7wSNKoX+EbOjDv/YJTvoFTqIR+jDRhMaCuXYDJQJUWUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0chUdSzjsZ3a+qiKq8iz74dKKgNDuNtKN4F7yCcYVNs=;
 b=F8XUjqN66Oc2HXl5s1k//Fl6jFaevFd/hnIYpdAswhCqU7GafJw4gSluUFGa0+ezo8gp5J3YbuwSHhitbgxT1REC294mGiOzsesLHpHTHTgW2o6HF9qxDs1+dzgKFRxZZm1MsX9GekGJKcYUYGhwUIs3QJWkYiC4QtzifzWq1RQWrd6M4i/5oF3xpCTV0yqiMhiO0Tl5JBMVpbVYupxez0WAtwYqWyjJxglNaKBcvP64W+F54+uFFXFyqTm8DGssc197DiOgBbwy3tyCCbMso1m5hhwK3Nq0gjynpNx7FE1/Aq4+6k3g8d7SnS89S2h5uhP6uqXIlRuZFE6lrpYK/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0chUdSzjsZ3a+qiKq8iz74dKKgNDuNtKN4F7yCcYVNs=;
 b=Mi7xPC8wmFGEozt61Qz/up6GOU7W5QCys3Lz0oCOZCMQQf/GXtgmHv6cXpx+CLEDZA49FhF+03id9WJxufm/XNln7zKYHNIA9tExVqj1vpHzqAwiWRc8yPELjOTK9lWW4gyXexrj31KbZ1PqrFdi7tuoaQULalsJPEen0KgH8S4=
Message-ID: <3fc65cdf-8155-cff7-015c-e4aa1ba37346@oracle.com>
Date: Tue, 25 Jan 2022 14:27:02 -0800
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: oss-security@lists.openwall.com, Zhang Yonglun <zhangyonglun@apache.org>,
        dev@shenyu.apache.org
References: <CA+ZBtZ4H7FSgb6_c8BXHUd=JesdUC914GvF0_2sUrHDsAdxVhg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
In-Reply-To: <CA+ZBtZ4H7FSgb6_c8BXHUd=JesdUC914GvF0_2sUrHDsAdxVhg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CY5PR13CA0036.namprd13.prod.outlook.com
 (2603:10b6:930:11::21) To SJ0PR10MB4464.namprd10.prod.outlook.com
 (2603:10b6:a03:2d0::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f0dd39b7-5bdb-4367-e324-08d9e051d0c0
X-MS-TrafficTypeDiagnostic: BYAPR10MB3703:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR10MB37036D4171A2FE3E72E1EB7CE05F9@BYAPR10MB3703.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NUsOIpywGgL+qZ+RCz6aKGr7I5++DvLRtk1i+469OCkraYVaPaUvv6Bxdrcf39y04OG6yVd54u2q5o4zk08YcLoeX4R+JcsEYoFlijRjMy5v9ZkDJFrMj10p1anMmvxPSYhUwEK5BsoTS1v9h+Mx6/nohmZlB8EjMlBtR9J3uRwkjd+B2v+gcJNnaCjpPGqHzjJtob17iQdvm9ACZD/jUdRNSVuby4vZ9TbU0LmkJK8HxYe31gC3PJGJ/4s/G81uDMYgmTxzTxUQCIx1tvP0w480TT1GqGNq5vZ7UqknvWlxLskHeO5q7u2KSbW7fGZPszg4p63TC9zuIsIgB5hmmWX20DdQfL1vnSrxwPoNLz6dc716ESOMqKcFNG/SRWb4Yd5JnuDn/Xg4TN1XV8gi9pkB3dugSu6UauIjI6ReEv4ZL8j7bvBgiSXIOInwVseUSJaKUPP80TL3mRNshZeX0Fy2WZNlP2fyodlb5cwgFZjUGKmLdx2WjNHwHHxsXs1g9Ni58C9eVbD+8Zsn5u3GoDuWPViztmdHjGVdEsSr+QMulb8M2yPjDZniyLwVjY8qFCBJ0ynWZOBr8myF0X9VHvw/PDlp/g8D9o0+48O7AenYBCrwq5Y8STEUVRIUm3GR0lmCarpOoSE/BUf+xSKLKliy7p7ytYp6+PVa7H3hmBHnYi8kIbmrBvw9kFsUMu1Sj6Je3ngFNx6xDTtN+Rmo3Olnc7REjl8kliKtDdRD5NrlqUgTMGATaW0SSm5jTqlyk7YCksieYKpQJ8w1NTJ1YZOxUh6eMiFVBzEstXI0DNyXmKqMWI4PNaFqCLXDe7MPFPenXuZNZQT8PEEzelzwjQyx/EHkcT1nXws/gcTr2mw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR10MB4464.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(4744005)(86362001)(31696002)(83380400001)(2616005)(508600001)(66476007)(6512007)(8676002)(44832011)(38100700002)(5660300002)(15650500001)(2906002)(8936002)(6666004)(6486002)(26005)(966005)(6506007)(53546011)(186003)(66946007)(66556008)(31686004)(36756003)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEVkSlRpTXdSYU8rdW55aGJBZXR1aER3bjhrQWxSZExiekNPQWNWZlBSc1p4?=
 =?utf-8?B?WUZBSHdMTGRhRXRmRGZKcVVEZzhVa1phbURKNFhMNmhxbVBxcS9xVlc2QWlk?=
 =?utf-8?B?Zm1rOThMSUVEYXQ5OUF4eFBIMlNxcnFBYmtxa3gvL0NEbXRjRzRlNm1SVk9X?=
 =?utf-8?B?c29DcEJOYUc0LzRsazNacVFPdkk5SUNScWJOMmhIclNVMW53aDQyc2lCYTVW?=
 =?utf-8?B?OVhpSXZEcHplczNwTTduNE5YUzN5TktsTW82WWFFRXpwRzFrNHNsNFpBOXhW?=
 =?utf-8?B?WVM4azhQbFJTQ1JCalh2b2Urb3N4OVZnNExSRWV2Z0s1WXluaXVLZXlNZ3Fx?=
 =?utf-8?B?OFRuRVdHVmdaN0xhb3h0TUFOeTUvTks0ZTA2Umh4YTZZNlBQYTdtWVcyMVRT?=
 =?utf-8?B?OXRxSUdvV3Y5TmJkM0hic0RIaUc4cmMvbTc1WFc0cmpWMUxxZklJUjlnRWZy?=
 =?utf-8?B?Y0YraDQyeUdTcE83OFJaZmFVb2x1QTArMHVGenk0UE9BU3BIZkRmSityVjk5?=
 =?utf-8?B?S3JHMFA1SnZXRENpVzlIRGZlT1FSTlBqc2k3cmZDUERTcjZRUEoyTjZMbytJ?=
 =?utf-8?B?eFpRdEllYzZqd1BmT1JRcS9DWTJJVjh5VzM1NmpLK1JNbEZNQmZ3dWNiRWpW?=
 =?utf-8?B?a2lwK0kvWkpQOUZFR0dzYzRQVTVrOGE0L1dEdCszdVIrd2RpMGxFL0lsa3Nm?=
 =?utf-8?B?eEF2ZCs5UjZHaUJaZ0VIbnBRRm9BT3Bza0F0Y1NYR0tWTStwRi9LKzF0dFdC?=
 =?utf-8?B?ajZIMUhBbDcrWUJWNUEyOGFjN3ltYVVFelowdHFOTEhyRXRHWEdHN2VoM3pY?=
 =?utf-8?B?ZlZ1Q1RnRGJkOWtoZXFLejBndTZlS2pjNDVHem16ZjFldEpkK2FET1pHOWRp?=
 =?utf-8?B?aVJFd1I4dllOaGdRUEpwRUR4bHFNT0JkM3I0USt1NGQrU2Q0TWVzVC9CNy91?=
 =?utf-8?B?Zy9kUGRQZ0xqbktST3ZHVGZYeThuREhjVzNOSFBsd3JjMVdpUmxRcmJjaEJZ?=
 =?utf-8?B?eFFkVmhPZldYQUhBRFZhYlhXWi8yZmRRSzcwUW9sa291TjZ4U2hBNWorUDdP?=
 =?utf-8?B?NWhuVWVML2lTelZSZG1kSTZIWjN2OC9kbFlXWDB6SDlrZEFnUVFnU3FhVElZ?=
 =?utf-8?B?dlE5QVFqSm9RTG9nQXJGZFZwRzBpTDhzM1owZVdtbUpQdFpIbjlRLzFSc0JF?=
 =?utf-8?B?Vi91dW9nUlBzTzVEcUUvS0Fpd2U2RWJqZWFZQnVyWjBMOGhIdUNDVDFnWUZU?=
 =?utf-8?B?RlFDMjV1TGN2amhPNTFTcDVoYUdwRDBYV0drRkRNMytTT05mQ24xNFQxZVZ6?=
 =?utf-8?B?QWs4UHd3dnF5L0NKcWtoaFBiNzQ2RlBJdUhLNzlvcGdJWnZVR3V5R0hOUWFP?=
 =?utf-8?B?cldXeWlBblBkbk11WGJoMWU2amh3VXBrTFJ5NFlVZWtENitoOW8rdVAzQkdy?=
 =?utf-8?B?WWozNmhwNGN6VEhNRit4eE1xd0k1QnRidituQ1hFdUJ2aFUxWXBMTFBxWElL?=
 =?utf-8?B?TmJmT1E1aW43dEFTUVRzaXhWdnV5ajNKc0hMK2NXRkdjM1pBRG1iNU5qNnZ3?=
 =?utf-8?B?bDhxdGNHRHY4VU9GaHJHWldTdzdiN2hVODhZQnpEenVUTEFJclB0SnhVeVl5?=
 =?utf-8?B?Q1pXU3hxU0hXN0NzbW50M3NmbkZMTWJyRi8yYlBGWUF0MTVkWWE0WGhjTFZ5?=
 =?utf-8?B?VUNPbFNRTTlVc2JsUEJUWm5PeTMrOGR1TkYyUGVCbEk4TzVjZkdGeTlwVnNk?=
 =?utf-8?B?UTVjMXRlQ0t3enZFWjBLQnhPZHdIeHB3OGo5aEl6bncxL1V3QjIxamxMeFgx?=
 =?utf-8?B?WUg3M1B2aVNKOHR3WjhiK0RZUFJrb0k2SmVockY3NS95eE1FZk8xN2hST3Bn?=
 =?utf-8?B?YjZvZTZhcVhoVnE3bFNuVUZGNlhmeG56M05oRUdMK0ZKL1lMaU5mL3pvaUJi?=
 =?utf-8?B?UUNqeUZwaGlWLzY0R1JEQytpdlJMa2krSU9MQ1ovODR0ZXpXV0ppRCswYXF0?=
 =?utf-8?B?bXRJSjRZeGF6RlRmMkwwR2ttWGk5ZldaSXlWdElzdGo4eDV0Z3FkalpXQXNu?=
 =?utf-8?B?K1dPM1J0T01pZzdPZUtXbHJscHpGWVdwbzJUdWFaUmgvZStYT0c3RVk5Z24r?=
 =?utf-8?B?K29UQVZWcDVFc3NmQm5WSVBzRFkrTXdxVjVsVmJiaHkvQmlkWGk2SW84WUFI?=
 =?utf-8?B?QlBpSHVLZUUrR2EwNXdnQXd6bzBCNWpPaDg0ZWc3bUtCdVd5RVNPclkrdjdY?=
 =?utf-8?Q?GWuIIH1lDr8DXT9p2knmPwlwsIXNuuY+Y/s6dBZoF4=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0dd39b7-5bdb-4367-e324-08d9e051d0c0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR10MB4464.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2022 22:27:05.1097
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t8enIh71xjqvUNwMAz8JUfRbYVBrt3hFIuwIl967Qks0VAO4T2aBbr2wN6bM6/qur1zTyDd4WF5hPYvwtRE9KTho3crR0W19zaLZUaqnnw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3703
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10238 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 adultscore=0 spamscore=0 bulkscore=0 mlxscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201250134
X-Proofpoint-GUID: Td4wllxeX4bV55WvH8AATG88hz5c7KRr
X-Proofpoint-ORIG-GUID: Td4wllxeX4bV55WvH8AATG88hz5c7KRr
Subject: Re: [oss-security] CVE-2022-23944: Apache ShenYu 2.4.1 Improper
 access control

On 1/25/22 03:39, Zhang Yonglun wrote:
> Description:
> 
> User can access /plugin api without authentication. This issue
> affected Apache ShenYu 2.4.0 and 2.4.1.

Thanks for informing oss-security of these issues, but good security
announcements have a little more detail, like what actions users or
distributors need to take (upgrade to a new version?  what version?)
and information on where to find more details, like a bug id in your
bug tracker.  If you look at the announcements from other Apache
projects, you'll see they often include those.

Some good examples:
https://www.openwall.com/lists/oss-security/2021/12/18/2
https://www.openwall.com/lists/oss-security/2022/01/05/4
https://www.openwall.com/lists/oss-security/2022/01/06/2

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
