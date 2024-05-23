Received: (qmail 20274 invoked by uid 550); 23 May 2024 22:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20226 invoked from network); 23 May 2024 22:13:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 from : to : subject : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=lbgemKlePYkH5bN+kBsoMM2CHkktUgC/8N/O+qMXLoA=;
 b=TJw3lx14cs1jGq2Yx3dACYKYrbPwu+USTml7Zu6PuYzRoJYGLkMcyDtMtigN95eDCGjn
 RTl5Z8ulAOUdYmhqZaxspDWvcl+yLwgWDtSJi81ZKo3HrYL/JaUukjM2ahnjj0GETEOu
 v01hhjTjZxfJlJNDHQRSZtHFm9mtcst3oSvQfDknp+8PW8lWA2Fg01Zd3lT3fDVI/OJw
 Ah8/UUE1fmemJ72myOQXt7zZ0rcheCD+4r5/88d+U29ndkiT6cbx2t6UZ3Yhj187NzxY
 dPv7wDvmqCf8gVSy2cN88ITi3tqydV1jpMOpwIUaDpko5sr8qSB7inqGFhKHzlW0nopm 4Q== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bkIsxyId7lUZyt3zXbwDvey9M4hBvLyLvgUZ9BKmtH6viJVoSDuKB6TU+wJsAL3uEK4B/SSaHpgb+Y8PEphtTs7s0rA4eZ4ZFQo72XNhfKsun5G9RznGfma/O1woJMHFQPSidVp77INrxHKA0nPgu9yKOSfXYL9i/D+FHx2t5JLP4nupdyUjlYPFjRkZ68uG+EIoWbSpQM1UZp2biC4YxxOhxaq9CDzNkyPgBEqOHWtPviOOWxspn4qzyRTjOExfxUhmPL1H9u/dzQ1ik9BKp+WOqHTkCboOA7f7CUU4Kv1o8B1ypg/8dsGHRZmw2dDt4grbzrjcXrDc0RS+MOWGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbgemKlePYkH5bN+kBsoMM2CHkktUgC/8N/O+qMXLoA=;
 b=bxQRd62G6e9P5z46/Zqws3gV5UrgPkiMJ4+XUnrPIcq6sqObZfzRxCLvICslOfEUdKqUJv9gmtHCKPRcTUZSCuqAm9g3KScsRubbbF2ItnnoJwVQlX4ptddcCLAZo5INQjFNFAihJbQHgIiZNYc6XBQJ1RCMe++TqLMqgKo4JsxRDq2bAcD6jfdLxU+75sdFCkJ77l9h5cWfGgedsQK4FXu60alWCZ15PUNzFnlUjziQbcYSBU19LoNNwZZ8oFN1Tdjpe9eLTMNSDFThK6o0OyRL0h7SQ9d1Eb5zvlkKwh6nE+tq1xQNMrUWnz1hvI+YXiVfMxss8AqCY/oNdd/M8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbgemKlePYkH5bN+kBsoMM2CHkktUgC/8N/O+qMXLoA=;
 b=UYe1LH0q/pA2bzikm9EMs8kfksgMmPM6ZjoieUzoQ+Q98k6PDllroBaMG3+B+hPM5w0gmSKuvTeT+PqhxY5k9skqzS1DLIi2w/9fJFEoaQivrJ4TLSy6XEJZjDqzBpDtcnlKzilzX5P9yHRTEKHCFSnDFi3wdGmSARF0VW7m+Gs=
Message-ID: <dd4683b9-7759-4214-905e-652147116f30@oracle.com>
Date: Thu, 23 May 2024 15:13:37 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0247.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::12) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CY8PR10MB7290:EE_
X-MS-Office365-Filtering-Correlation-Id: e6ace5da-5963-4e0a-6c47-08dc7b759a02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cUY2OURuVWc4bHNUckFGSGo2ejVnTXE3Z2hWUGlBeGkxbnVHWVZWUkVXYlE5?=
 =?utf-8?B?dkFicmpmZXlXSjNpbE93WHgvdkFXZUF0NU50S3I3ZDBuK2ZTNC8xQXE1YmdT?=
 =?utf-8?B?eXpiM3FHKy90N0Roa0Y3d1ZCODJBNi9VbzRadjZpaWNjdTBRZUdKQ21IdmFv?=
 =?utf-8?B?aXBCWXhOYUxBUTFQbHpEN3RZeFp2T1M0VUdzREpNUGcrY2dSR2dTKzZmQ2lt?=
 =?utf-8?B?aEtLbnc2dFR4M1JMYnZLby9SNzV4Qml0eEpocmhySWRtNTNKK20xQ2QxZW1S?=
 =?utf-8?B?cVhJRzFWTWViS2paaDNkZSthUnZ6ckFoUTc3TGUwcjNFZW02OTZvWUJrcGg3?=
 =?utf-8?B?LzluQlFQQXJ5SXB2akdqRnVoMkFCQ3VtYVZRcGQ5NjVzWkVrRHFiOEJCQ1lD?=
 =?utf-8?B?TE9kVFdpYzRwZVgvdFU2RVllM3hPcFpLU3V6OTFvNnoyeWo0ZE9nZldMT2tx?=
 =?utf-8?B?d3pkWW5Vd090d0NUd3Bid3VpVnNoRXprMkgweDU1VFk1am90SVdEWGNiUWVk?=
 =?utf-8?B?azJVOEw2QmxlaExDeHAvUjM2N2hVTGcyaWRwRjR0MXJYNmY0cm0zSjd3cE9o?=
 =?utf-8?B?WXpWZXNHZGNFSWV1a0lmSjd4aDB5RzFEZ0wyNkZNOTNJV1hpZ1B6dHhpZUV3?=
 =?utf-8?B?MFZRdTRLNXhLU2o3TzlGVlBSYVlWVjlCWittWjV3M1VEdDNLckMvRVozbHBt?=
 =?utf-8?B?ZG9LM1hPcENtN1hIc0ZhK21kUjZjZGdNaVg0bEx2NFhDRE9lWWpZa3NJUVV1?=
 =?utf-8?B?M2p5M2k2dTZFckYvOVR4bjN2QXdIa2hjUE9wZjhtL1oyS29EeHE3VFY2bnFl?=
 =?utf-8?B?UG1TRytaMUtoU0tQcUpvRnN4QnNLN3lEd3pEcDd1UmxGTC9BZy9mUDFhUUxD?=
 =?utf-8?B?VWFnWnZqTEZkeGU3aTh3OWdnd1kza0twY0Jidnp3SDRtcFpUazQxUmk5Q0FB?=
 =?utf-8?B?anFFclVoR3VjVlltY1Y1NEUxVDNlNTNVcngrM2xISC9uSEQ5dnorQTNwc1V2?=
 =?utf-8?B?dUh3cCs1MytDbHlLYXJ6MlNNRjArSEF5OGUwS3R0ckpRYzc1bWM4czJCaEtW?=
 =?utf-8?B?R1ZDcXdzVkUrSU85SlQvQVI4WlFQSmhXR2hEN09EUlJhblNsTVhVYi9CSkVx?=
 =?utf-8?B?ODNkZHJTZnp4NEJtaFVZOElScnNGN1A2V1ZjcTNlUnhCdkpYdytFZmkydlln?=
 =?utf-8?B?Kzk0YU16Q1AxUGN2WEpZRUhFQWF3Mnp6MFFVVFo1QWxJVFZQSGNFWmg1bTVt?=
 =?utf-8?B?QWhyVzJyVmJaaFk1Q080OXFBeXFXWDhPQnFySEZWdUp5TlVPN2tBNG9MTkRk?=
 =?utf-8?B?NDlMWTc2b0NRU0VvbUxFNis4VjNkRGtIaWlLa1V0RDBnWUZRQmc0UEc1U3BU?=
 =?utf-8?B?VFdWWXBmeExwREVPMExzL2lhUUFnTmhVUVRRRk5MRlVtSXNCUXpPbXNuWndP?=
 =?utf-8?B?SHk5aXJrTVd2alQ0MmQrUFNxVi85ZDd1bENjUHBYQStSZ1FjQ29sVG9DOVBu?=
 =?utf-8?B?U09wVis1WFU2NXZqbmlQakdPaFVhWCs2L0VNK2RZMmZGQlNZMHlSSWhZYUhU?=
 =?utf-8?B?OXZIK2VtY1A4OU52czY1U2o0RDZXN3cweGsrRFZxUUgxSTFFOG1vdFFUYUEr?=
 =?utf-8?Q?mMumwcWLua1EJ3sK2nyRKT5XPD8TriFZRz45pGrYlo3Y=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y09QczlidEkvRE14QjhZVUxHSCtyT1h4dFRtcTF5cWdwK3RsSGZ1aXJNUFJx?=
 =?utf-8?B?bHcwSFJqQ2dEUHFUL0h3MEZlaU5ubS9ZcHUreGhnTVhJZXhUcWx2SHQ1a1hH?=
 =?utf-8?B?NTRBZ0J1RndYQlgzQUx5NGo1NWQ0ZzFoTnRwNlNaUG9TYTV2bURsQmljWDJp?=
 =?utf-8?B?c1JCZHZnbTdWN2lZUk1vZGlXN2lpS0twck5ZNHpkNU5KMGNVNjJGZzBqc0lJ?=
 =?utf-8?B?RFJpWUtOaFJ6RkluenlQQk93S1k2ZVgxbDhkTkxWNy9vWjZubittcWtvQnZL?=
 =?utf-8?B?NTJ2bFMvM0dnUHdWaGtwTnY4Unp1YldVSjdPK0l3UkhaLzRDdlE4SURmVFdn?=
 =?utf-8?B?LzV5OFgrYmNFN21FTzBpVUhZQVYvTm9RbFdneDB0VjNXK0l3anhJTkMxMXh1?=
 =?utf-8?B?VnBydmFramVvbWhXR1laK1A5azNWSGV5SUlpNmJodlFMMWJON0JPS21sNU9E?=
 =?utf-8?B?ZFFuakFZOGZFOHVtM0xPSkx0anE2ZzZlOUsvSmV2WXJHOG90dXEzWlNSdHJG?=
 =?utf-8?B?MkJ6VTRHOHJpVC83WUVXeWxDelY0eGdZNU5tbk8vL2dBSWk1UnZVM0hOTDJI?=
 =?utf-8?B?bGJscFJOZU8xbXFPa2FwaGc4SE0raGpZekVKNUU5OWxVTk1mTDhIdW04N0Jk?=
 =?utf-8?B?ZXhDajJDVTlJMTd1b2FOZlZLNzhHMWpObDNIMFNaZXJtMTl0N2tDaTVpaEp1?=
 =?utf-8?B?bzNxVmsxd2doNTd6c0F5VDR3bWtnN3IwaXdBT1pWNzJxc1ZiNzhZOG96Yi8x?=
 =?utf-8?B?Z0xWMjJSR05OZTVIZ1RPQWU0dk9BNTFLSHdnUDE4WFliMmswRGlMSlhRSFFl?=
 =?utf-8?B?TlpwMjVvdys4YjVVMXo1WDQ4dHRwbkNwTDgzZkVZWnRzVjFxRDRWMTBTNUJD?=
 =?utf-8?B?bGcxOVI2SW1SRFZkaU5KYllNQUhvandTZDU5M1BBWWQ5Wk03dnR4Mk9QWXJx?=
 =?utf-8?B?NTkwMzlGOW9YdkdMdm1rQUJYaDBTMXo2bjlWNmI0VzZlbndYUzk3L3Y2ajhy?=
 =?utf-8?B?cjFpbVlVQy83T2JHeEViY3Y0TkpVUUN2NVZMMktROVRTckNWNzZkbDlseEEx?=
 =?utf-8?B?VmJJZHRqaEN6SVBlWmJGZEJUWHZ2N3VIdGgxVnlOYnVXSFA0YlVTNnoxTjZj?=
 =?utf-8?B?QkgydXhWVjNpbVpMdEVpTEEydnZPckJFUzdIK1VtVFdkdHVIMC8yMmJQS2E4?=
 =?utf-8?B?bHRocVRMUnNaQ0M3VUpuUlBMbldpaFJlWVVuQWlJMk90KzB5eHA0VVk1MFpK?=
 =?utf-8?B?MENaL3I3bjA0VUxUUUU4RUFHeStOZ1F4UTQ3ZXd1TEpBMUpCTkxzdXJXd2RQ?=
 =?utf-8?B?Y1NBLzdGa0hYMkNpajhFbWhxQXdRU2Q0SU5pb0k2cnczWkVOSTB0MnM4bnVi?=
 =?utf-8?B?Zm11cmtEWGdKWVFTSWZmZHRpa0I0LzRVWEJQSE5FcEVnZjhVZ1hneEM1cGlW?=
 =?utf-8?B?d1hndkZTbG4xT0hUbkRrRjhlTVN3c0oxWVJ6V05uLzJrTTBPaTVGZWFVd3Jx?=
 =?utf-8?B?VExZUkl5Vmtqa09qQ1hrVmphWUxiZnlnK2Z6aWl4Z1FKdytOcWw3Q0MybGtj?=
 =?utf-8?B?cVRCand4ZG9rTG9IaWpGTWhJUHVFY0NTOWtpWmtJY1VMc2owODhVcWRpOEla?=
 =?utf-8?B?WUgzdzJwQUZGd0ZPQjduejh2eUNkR3V5Q0g4MnZCcHRsWGFvSGg5bHlQdWdI?=
 =?utf-8?B?VXBJeWJEU1Q5OVJiR3ZHSWVNYm1maE1pSTBvVkluUnR4TUhxQXA1QzhoRS9D?=
 =?utf-8?B?Uk9ObUZnRXFYbzAzU2JqRUZnb1VweHVNdkNLVTMvRDBQT2FQVEFyKzBwNjBT?=
 =?utf-8?B?YURsbmlna3ZUazNLNFk4U1NKbVJXd011bkszR3VjNHVQVVFVcFRDLys1bmtx?=
 =?utf-8?B?bktBelpUa3lyaTM3VlNmUk9qNnQ1TWMrUk51d2VGQVNaejdGUzBRT0ZWRzFJ?=
 =?utf-8?B?VUE2SWtvNVJaejBVZDl5ZXkrZXNwcTFDRmlnVmF0Q0dKSFhFY1RJbjlFMmhE?=
 =?utf-8?B?SW5URGpEZjFhZjMweHNEVExleDhIdlpiQXhHM0ROU1FpR2RQL2hOZjJUNlYx?=
 =?utf-8?B?TjdoUG00QmFwbHlaYVI3R2RqQmFWVDJpYWRSdWVxQ2J0cE4raFdzYy9YTkE5?=
 =?utf-8?B?UHVWWHdmR1Q5MXdVQ1dQL0lJTnRpancyQ1E5SzlMSjNEVSt4SFhGMWVTVG5I?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	eg53pIPbjxR0BzPA1wi9w/Uq9wuiVLGGf6d56RZ6jcQZHkFKBJl3nZKWdEdYRrvYO6C4oMAXk6AEQ9vMmwUG18eLnULK1htS4A3FsmiwAjH8gPZuVT+PQIbr+jLDhE4+a3cZf8fmHQaz8j/1UY0bnMOYENhakK72RbgEs7mG42bCbCS8l8grCnNt1i5BMUmXmpV1ywS7dm/oJEJtRSRafGF5hBgaw1yPtnBU5rcBEEo1OECCcFvuaUvMZrGE7l9y0nWaJtyR/nOgrhhyDxdvYB8wUyyqkngNw7CV0463hAd1YY2//X1643LS108Lp2hpygfueLQQ7rfSf++xwiUiqRosREb+OunJXZEMOmo8QSohhA0cJDhlfWdNdqwD6XPx0UTDCmjG2uGeU/KCDSoUaX/xVlGa+r/sIyg3QtheAIvL3cIh0KloW97BrgoP23HE0sSM1+0SWfpntblH0DXtMspnYdjhYJmxzXQ10KakdviPNjC+cVG13BSwuDRvh5WDm4MQUfjyuBdOalZWUeruhx4Do0umxddCtuih7GSHLdQVU3mtNJAaQIp4iS3qSDDVK9VrPZtfd+KOzrQAcaWjLIdRtnFn1FqqRwzEGsfz7dM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6ace5da-5963-4e0a-6c47-08dc7b759a02
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 22:13:40.6075
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XxeAoZHrn8fY3TKFsM2vL5dRGxSZdtjXn43fcJzLaB48NoW8txaVY8HdF2OVz0niCxCf8YbMSxjGCgj2a+028/xFnCS/pGeIpDZsWiS9MvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7290
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-23_13,2024-05-23_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0
 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405230154
X-Proofpoint-GUID: 6W_AD8cVa4Xk8N1YnjJh_d0izWC7Q18I
X-Proofpoint-ORIG-GUID: 6W_AD8cVa4Xk8N1YnjJh_d0izWC7Q18I
Subject: [oss-security] Intel CPU Hardware Features and Behaviors Related to Speculative
 Execution

Intel has published a new summary of the various hardware features and
behaviors related to speculative execution in their processors, to reduce
the number of documents that OS makers and other software developers need
to read in order to make their software more secure when running on Intel CPUs.

You can find it at:
https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/technical-documentation/hardware-behavior-related-to-speculative-execution.html

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
